! Author:  Philipp Engel
! Licence: ISC
program main
    !! Draws complex cube root fractal. Based on code posted on:
    !!
    !!      <https://groups.google.com/g/comp.lang.fortran/c/jznLxC-Gue0>
    !!
    use, intrinsic :: iso_fortran_env, only: real64
    use :: sdl3
    implicit none (type, external)

    integer, parameter :: WINDOW_WIDTH  = 1200
    integer, parameter :: WINDOW_HEIGHT = 800

    type(c_ptr) :: renderer
    type(c_ptr) :: texture
    type(c_ptr) :: window

    window   = c_null_ptr
    renderer = c_null_ptr
    texture  = c_null_ptr

    sdl_block: block
        logical                   :: done, res
        integer(sdl_window_flags) :: flags
        type(sdl_event)           :: event

        ! Initialise SDL.
        if (.not. sdl_init(SDL_INIT_VIDEO)) then
            print '("SDL_Init failed: ", a)', sdl_get_error()
            exit sdl_block
        end if

        ! Create SDL window.
        flags  = 0
        window = sdl_create_window(f_c_str('Fortran + SDL3'), WINDOW_WIDTH, WINDOW_HEIGHT, flags)

        if (.not. c_associated(window)) then
            print '("SDL_CreateWindow failed: ", a)', sdl_get_error()
            exit sdl_block
        end if

        res = sdl_set_window_position(window, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED)

        ! Create SDL renderer.
        renderer = sdl_create_renderer(window, c_null_char)

        if (.not. c_associated(renderer)) then
            print '("SDL_CreateRenderer failed: ", a)', sdl_get_error()
            exit sdl_block
        end if

        ! Create SDL texture.
        texture = sdl_create_texture(renderer, SDL_PIXELFORMAT_RGBA8888, SDL_TEXTUREACCESS_STREAMING, WINDOW_WIDTH, WINDOW_HEIGHT)

        if (.not. c_associated(texture)) then
            print '("SDL_CreateTexture failed: ", a)', sdl_get_error()
            exit sdl_block
        end if

        call root3(texture, WINDOW_WIDTH, WINDOW_HEIGHT)

        ! Main loop.
        done = .false.

        do while (.not. done)
            ! Event loop.
            do while (sdl_poll_event(event))
                select case (event%type)
                    case (SDL_EVENT_QUIT)
                        done = .true.
                    case (SDL_EVENT_KEY_DOWN)
                        if (event%key%key == SDLK_ESCAPE) done = .true.
                end select
            end do

            ! Paint to screen.
            res = sdl_render_texture(renderer, texture)
            res = sdl_render_present(renderer)

            call sdl_delay(100)
        end do
    end block sdl_block

    if (c_associated(texture))  call sdl_destroy_texture(texture)
    if (c_associated(renderer)) call sdl_destroy_renderer(renderer)
    if (c_associated(window))   call sdl_destroy_window(window)

    call sdl_quit()
contains
    subroutine root3(texture, width, height)
        real(real64), parameter :: C   = 1.905d-3
        real(real64), parameter :: R2R = 0.4d0

        type(c_ptr), intent(in) :: texture
        integer,     intent(in) :: width
        integer,     intent(in) :: height

        complex(real64) :: d, w, z
        integer         :: i, k
        integer         :: ix, iy, x, y
        integer         :: pitch
        real(real64)    :: angle
        type(c_ptr)     :: ptr

        integer(uint32), pointer :: pixels(:)

        if (.not. c_associated(texture)) return

        if (sdl_lock_texture(texture, pixels=ptr, pitch=pitch)) then
            call c_f_pointer(ptr, pixels, shape=[ height * pitch ])

            do iy = -height / 2, height - height / 2 - 1
                do ix = -width / 2, width - width / 2 - 1
                    angle = 0_real64

                    if (ix /= 0 .or. iy /= 0) then
                        z = cmplx(ix * C, iy * C, real64)

                        do i = 1, 224
                            w = z**2
                            z = z * w * 2 + 1
                            z = z / w / 3

                            d = z - 1
                            if (abs(d) < R2R) exit

                            d = z + cmplx(0.5_real64,  0.866_real64, real64)
                            if (abs(d) < R2R) exit

                            d = z + cmplx(0.5_real64, -0.866_real64, real64)
                            if (abs(d) < R2R) exit
                        end do

                        angle = atan2(aimag(d), dble(d))
                    end if

                    x = ix + (width  / 2) + 1
                    y = iy + (height / 2) + 1
                    k = int(abs(angle / 0.012272_real64))

                    call set_pixel(pixels, width, height, x, y, k, k, k, 255)
                end do
            end do

            pixels => null()
            call sdl_unlock_texture(texture)
        end if
    end subroutine root3

    pure subroutine set_pixel(pixels, width, height, x, y, r, g, b, a)
        !! Sets RGBA colour of single pixel in texture.
        integer(uint32), intent(inout) :: pixels(0:)
        integer,         intent(in)    :: width, height
        integer,         intent(in)    :: x, y
        integer,         intent(in)    :: r, g, b, a

        integer(uint32) :: rgba

        if (x < 1 .or. x > width .or. y < 1 .or. y > height) return
        rgba = ior(ior(ior(shiftl(r, 24), shiftl(g, 16)), shiftl(b, 8)), a)
        pixels((y - 1) * width + (x - 1)) = rgba
    end subroutine set_pixel
end program main
