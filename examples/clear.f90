! Author:  Philipp Engel
! Licence: ISC
program main
    !! Program that demonstrates colour fading. Based on the SDL example `clear.c`.
    use, intrinsic :: iso_fortran_env, only: real64
    use :: sdl3
    implicit none (type, external)

    integer, parameter :: WINDOW_WIDTH  = 800
    integer, parameter :: WINDOW_HEIGHT = 600

    integer,      parameter :: FPS = 60                ! Target frames per second.
    real(real64), parameter :: FT  = 1.0_real64 / FPS  ! Target frame time.
    real(real64), parameter :: PI  = acos(-1.0_real64) ! Pi.

    type(c_ptr) :: renderer
    type(c_ptr) :: window

    window   = c_null_ptr
    renderer = c_null_ptr

    sdl_block: block
        integer(uint64) :: t1, t2
        logical         :: done, res
        real(real64)    :: dt, freq, now
        real            :: r, g, b
        type(sdl_event) :: event

        ! Initialise SDL.
        if (.not. sdl_init(SDL_INIT_VIDEO)) then
            print '("SDL_Init failed: ", a)', sdl_get_error()
            exit sdl_block
        end if

        ! Create SDL window and renderer.
        res = sdl_create_window_and_renderer(f_c_str('Fortran + SDL 3.0'), &
                                             WINDOW_WIDTH, WINDOW_HEIGHT,  &
                                             SDL_WINDOW_RESIZABLE,         &
                                             window, renderer)

        if (.not. res) then
            print '("SDL_CreateWindowAndRenderer failed: ", a)', sdl_get_error()
            exit sdl_block
        end if

        res = sdl_set_window_position(window, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED)
        res = sdl_set_render_logical_presentation(renderer, WINDOW_WIDTH, WINDOW_HEIGHT, SDL_LOGICAL_PRESENTATION_LETTERBOX)

        ! Timer frequency.
        freq = real(sdl_get_performance_frequency(), real64)

        ! Main loop.
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

            ! Convert from milliseconds to seconds.
            now = sdl_get_ticks() / 1000.0_real64

            ! Choose the colour for the frame we will draw. The sine wave trick
            ! makes it fade between colours smoothly.
            r = real(0.5 + 0.5 * sin(now))
            g = real(0.5 + 0.5 * sin(now + PI * 2 / 3))
            b = real(0.5 + 0.5 * sin(now + PI * 4 / 3))

            res = sdl_set_render_draw_color_float(renderer, r, g, b, SDL_ALPHA_OPAQUE_FLOAT)
            res = sdl_render_clear(renderer)
            res = sdl_render_present(renderer)

            ! Run at 60 Hz.
            t2 = sdl_get_performance_counter()
            dt = (t2 - t1) / freq
            if (dt < FT) call sdl_delay(int((FT - dt) * 1000))
        end do
    end block sdl_block

    if (c_associated(renderer)) call sdl_destroy_renderer(renderer)
    if (c_associated(window))   call sdl_destroy_window(window)

    call sdl_quit()
end program main
