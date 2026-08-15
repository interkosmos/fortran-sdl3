! Author:  Philipp Engel
! Licence: ISC
program main
    !! Loads a PNG file with SDL3_image and lets it bounce on the screen using
    !! the hardware renderer.
    use, intrinsic :: iso_fortran_env, only: real64
    use :: sdl3
    use :: sdl3_image
    implicit none (type, external)

    character(*), parameter :: IMAGE_PATH = 'share/dvd.png'
    integer,      parameter :: FPS        = 60
    integer,      parameter :: STEP_SIZE  = 2
    real(real64), parameter :: FT         = 1.0_real64 / FPS

    logical     :: res
    type(c_ptr) :: renderer
    type(c_ptr) :: texture
    type(c_ptr) :: window

    window   = c_null_ptr
    renderer = c_null_ptr
    texture  = c_null_ptr

    sdl_block: block
        integer         :: dx, dy, next
        integer         :: screen_width, screen_height
        integer(uint64) :: t1, t2
        logical         :: done
        real(real64)    :: dt, freq
        type(sdl_event) :: event
        type(sdl_frect) :: dst_rect, src_rect

        ! Initialise SDL.
        if (.not. sdl_init(SDL_INIT_VIDEO)) then
            call output_error('SDL_Init failed')
            exit sdl_block
        end if

        ! Create fullscreen window and renderer.
        call screen_dimensions(screen_width, screen_height)

        res = sdl_create_window_and_renderer( &
            title        = f_c_str('Fortran + SDL 3.0'), &
            width        = screen_width, &
            height       = screen_height, &
            window_flags = ior(SDL_WINDOW_FULLSCREEN, SDL_WINDOW_BORDERLESS), &
            window       = window, &
            renderer     = renderer &
        )

        if (.not. res) then
            call output_error('SDL_CreateWindowAndRenderer failed')
            exit sdl_block
        end if

        ! Hide mouse cursor.
        res = sdl_hide_cursor()

        ! Load PNG directly as a texture.
        texture = img_load_texture(renderer, f_c_str(IMAGE_PATH))

        if (.not. c_associated(texture)) then
            call output_error('IMG_LoadTexture failed')
            exit sdl_block
        end if

        ! Get the texture dimensions.
        res = sdl_get_texture_size(texture, src_rect%w, src_rect%h)

        dst_rect = sdl_frect( &
            x = (screen_width  - src_rect%w) / 2, &
            y = (screen_height - src_rect%h) / 2, &
            w = src_rect%w, &
            h = src_rect%h  &
        )

        ! Initialise the logo.
        dx   = 1
        dy   = 1
        next = 1

        call color_mod(texture, next)

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

            ! Bounce logo horizontally.
            if (dst_rect%x < 0) then
                dst_rect%x = 0
                dx = 1
                call color_mod(texture, next)
            else if (dst_rect%x + src_rect%w > screen_width) then
                dst_rect%x = screen_width - src_rect%w
                dx = -1
                call color_mod(texture, next)
            end if

            ! Bounce logo vertically.
            if (dst_rect%y < 0) then
                dst_rect%y = 0
                dy = 1
                call color_mod(texture, next)
            else if (dst_rect%y + src_rect%h > screen_height) then
                dst_rect%y = screen_height - src_rect%h
                dy = -1
                call color_mod(texture, next)
            end if

            ! Move logo.
            dst_rect%x = dst_rect%x + (dx * STEP_SIZE)
            dst_rect%y = dst_rect%y + (dy * STEP_SIZE)

            res = sdl_render_clear(renderer)
            res = sdl_render_texture(renderer, texture, src_rect, dst_rect)
            res = sdl_render_present(renderer)

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
    subroutine color_mod(texture, next)
        type(sdl_fcolor), parameter :: COLORS(5) = [ &
            sdl_fcolor(1.0, 0.0, 0.0), &
            sdl_fcolor(1.0, 0.0, 1.0), &
            sdl_fcolor(1.0, 1.0, 0.0), &
            sdl_fcolor(0.0, 0.0, 1.0), &
            sdl_fcolor(1.0, 1.0, 1.0)  &
        ]

        type(c_ptr), intent(in)    :: texture
        integer,     intent(inout) :: next

        logical :: res

        next = next + 1
        next = 1 + modulo(next - 1, size(COLORS))
        res  = sdl_set_texture_color_mod_float(texture, colors(next)%r, colors(next)%g, colors(next)%b)
    end subroutine color_mod

    subroutine output_error(message)
        !! Outputs SDL error message.
        character(*), intent(in) :: message

        print '(a, ": ", a)', trim(message), sdl_get_error()
    end subroutine output_error

    subroutine screen_dimensions(width, height)
        !! Gets width and height of primary display.
        integer, intent(out) :: width
        integer, intent(out) :: height

        type(sdl_display_mode), pointer :: mode

        call c_f_pointer(sdl_get_current_display_mode(sdl_get_primary_display()), mode)

        width  = mode%w
        height = mode%h
    end subroutine screen_dimensions
end program main
