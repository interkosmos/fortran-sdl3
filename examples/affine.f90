! Author:  Philipp Engel
! Licence: ISC
program main
    !! Draws a cube using an affine-transformed texture. Based on the SDL
    !! example program `affine-textures.c`.
    use, intrinsic :: iso_fortran_env, only: real64
    use :: sdl3
    use :: sdl3_image
    implicit none (type, external)

    character(*), parameter :: IMAGE_PATH    = 'share/affine.png'
    integer,      parameter :: FPS           = 60
    integer,      parameter :: WINDOW_WIDTH  = 1024
    integer,      parameter :: WINDOW_HEIGHT = 768
    real(real64), parameter :: FT            = 1.0_real64 / FPS

    logical(c_bool) :: res
    type(c_ptr)     :: renderer
    type(c_ptr)     :: texture
    type(c_ptr)     :: window

    window   = c_null_ptr
    renderer = c_null_ptr
    texture  = c_null_ptr

    sdl_block: block
        integer(uint64) :: t1, t2
        logical         :: done
        real(real64)    :: dt, freq
        type(sdl_event) :: event

        ! Initialise SDL.
        if (.not. sdl_init(SDL_INIT_VIDEO)) then
            call output_error('SDL_Init failed')
            exit sdl_block
        end if

        ! Create window and renderer.
        res = sdl_create_window_and_renderer(f_c_str('Fortran + SDL3'),   &
                                             WINDOW_WIDTH, WINDOW_HEIGHT, &
                                             0_sdl_window_flags,          &
                                             window, renderer)

        if (.not. res) then
            call output_error('SDL_CreateWindowAndRenderer failed')
            exit sdl_block
        end if

        ! Center window and hide mouse cursor.
        res = sdl_set_window_position(window, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED)
        res = sdl_hide_cursor()

        ! Load PNG directly as a texture.
        texture = img_load_texture(renderer, f_c_str(IMAGE_PATH))

        if (.not. c_associated(texture)) then
            call output_error('IMG_LoadTexture failed')
            exit sdl_block
        end if

        ! Main loop.
        freq = real(sdl_get_performance_frequency(), real64)
        done = .false.

        do while (.not. done)
            t1 = sdl_get_performance_counter()

            ! Event loop.
            do while (sdl_poll_event(event))
                select case (event%type)
                    case (SDL_EVENT_QUIT)
                        done = .true.
                    case (SDL_EVENT_KEY_DOWN)
                        if (event%key%key == SDLK_ESCAPE) done = .true.
                end select
            end do

            call update(renderer, texture, 4000.0)

            ! Run at 60 Hz.
            t2 = sdl_get_performance_counter()
            dt = (t2 - t1) / freq
            if (dt < FT) call sdl_delay(int((FT - dt) * 1000))
        end do
    end block sdl_block

    res = sdl_show_cursor()

    if (c_associated(texture))  call sdl_destroy_texture(texture)
    if (c_associated(renderer)) call sdl_destroy_renderer(renderer)
    if (c_associated(window))   call sdl_destroy_window(window)

    call sdl_quit()
contains
    subroutine output_error(message)
        !! Outputs SDL error message.
        character(*), intent(in) :: message

        print '(a, ": ", a)', trim(message), sdl_get_error()
    end subroutine output_error

    subroutine update(renderer, texture, period)
        real, parameter :: PI = acos(-1.0)          !! Pi.
        real, parameter :: X0 = 0.5 * WINDOW_WIDTH  !! Center of the window.
        real, parameter :: Y0 = 0.5 * WINDOW_HEIGHT !! Center of the window.
        real, parameter :: PX = min(WINDOW_WIDTH, WINDOW_HEIGHT) / sqrt(3.0) !! Scale.

        real, parameter :: K(3) = [ &
            3.0 / sqrt(50.0), &
            4.0 / sqrt(50.0), &
            5.0 / sqrt(50.0)  &
        ] !! Rotation axis.

        type(c_ptr), intent(in) :: renderer
        type(c_ptr), intent(in) :: texture
        real,        intent(in) :: period

        integer         :: dir, i, odd
        integer         :: idx_d, idx_o, idx_r
        logical(c_bool) :: res

        real :: corners(2, 8)
        real :: mat(3, 3)
        real :: c, r, s, vc
        real :: x, y, z

        type(sdl_fpoint) :: down
        type(sdl_fpoint) :: origin
        type(sdl_fpoint) :: right

        ! Clear the renderer.
        res = sdl_set_render_draw_color(renderer, &
                                        r = sint32_to_uint8(int(z'42')), &
                                        g = sint32_to_uint8(int(z'87')), &
                                        b = sint32_to_uint8(int(z'F5')), &
                                        a = sint32_to_uint8(SDL_ALPHA_OPAQUE))
        res = sdl_render_clear(renderer)

        ! Rotation angle.
        r = real(modulo(sdl_get_ticks(), int(period, uint64))) / period * PI * 2
        c = cos(r)
        s = sin(r)

        ! Rotation matrix.
        mat(1, 1) =         c + (1.0 - c) * K(1) * K(1)
        mat(1, 2) = -s * K(3) + (1.0 - c) * K(1) * K(2)
        mat(1, 3) =  s * K(2) + (1.0 - c) * K(1) * K(3)

        mat(2, 1) =  s * K(3) + (1.0 - c) * K(1) * K(2)
        mat(2, 2) =         c + (1.0 - c) * K(2) * K(2)
        mat(2, 3) = -s * K(1) + (1.0 - c) * K(2) * K(3)

        mat(3, 1) = -s * K(2) + (1.0 - c) * K(1) * K(3)
        mat(3, 2) =  s * K(1) + (1.0 - c) * K(2) * K(3)
        mat(3, 3) =         c + (1.0 - c) * K(3) * K(3)

        ! Transform the eight cube corners.
        do i = 0, 7
            x = merge(-0.5, 0.5, btest(i, 0))
            y = merge(-0.5, 0.5, btest(i, 1))
            z = merge(-0.5, 0.5, btest(i, 2))

            corners(1, i + 1) = mat(1, 1) * x + mat(1, 2) * y + mat(1, 3) * z
            corners(2, i + 1) = mat(2, 1) * x + mat(2, 2) * y + mat(2, 3) * z
        end do

        ! Render the visible cube faces.
        do i = 1, 6
            dir = merge(iand(3, not(i)), iand(3, i), btest(i, 2))
            odd = ieor(ieor(iand(i, 1), shiftr(iand(i, 2), 1)), shiftr(iand(i, 4), 2))

            select case (dir)
                case (0); vc = mat(2, 3)
                case (1); vc = mat(3, 1)
                case (2); vc = mat(3, 2)
                case (3); vc = mat(3, 3)
            end select

            ! Back-face culling.
            if (0.0 < merge(-1.0, 1.0, odd == 0) * vc) cycle

            idx_o =     shiftl(1, modulo(dir - 1,            3))
            idx_r = ior(shiftl(1, modulo(dir + odd,          3)), idx_o)
            idx_d = ior(shiftl(1, modulo(dir + ieor(odd, 1), 3)), idx_o)

            if (odd == 0) then
                idx_o = ieor(idx_o, 7)
                idx_r = ieor(idx_r, 7)
                idx_d = ieor(idx_d, 7)
            end if

            ! Convert transformed corner coordinates to screen coordinates.
            origin%x = X0 + PX * corners(1, idx_o + 1)
            origin%y = Y0 + PX * corners(2, idx_o + 1)

            right%x  = X0 + PX * corners(1, idx_r + 1)
            right%y  = Y0 + PX * corners(2, idx_r + 1)

            down%x   = X0 + PX * corners(1, idx_d + 1)
            down%y   = Y0 + PX * corners(2, idx_d + 1)

            res = sdl_render_texture_affine(renderer, texture, origin=origin, right=right, down=down)
        end do

        ! Present the rendered frame.
        res = sdl_render_present(renderer)
    end subroutine update
end program main
