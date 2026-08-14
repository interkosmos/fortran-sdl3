! Author:  Philipp Engel
! Licence: ISC
program main
    !! Creates an SDL 3.0 window.
    use :: sdl3
    implicit none (type, external)

    integer, parameter :: WINDOW_WIDTH  = 1200
    integer, parameter :: WINDOW_HEIGHT = 800

    type(c_ptr)               :: renderer
    type(c_ptr)               :: window
    type(sdl_event)           :: event
    logical                   :: done, res
    integer(sdl_window_flags) :: flags
    integer(uint8)            :: r, g, b, a

    ! Initialise SDL.
    if (.not. sdl_init(SDL_INIT_VIDEO)) then
        print '("SDL_Init failed: ", a)', sdl_get_error()
        stop
    end if

    ! Create SDL window.
    flags  = 0
    window = sdl_create_window(f_c_str('Fortran + SDL 3.0'), WINDOW_WIDTH, WINDOW_HEIGHT, flags)

    if (.not. c_associated(window)) then
        print '("SDL_CreateWindow failed: ", a)', sdl_get_error()
        call sdl_quit()
        stop
    end if

    res = sdl_set_window_position(window, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED)

    ! Create SDL renderer.
    renderer = sdl_create_renderer(window, c_null_char)

    if (.not. c_associated(renderer)) then
        print '("SDL_CreateRenderer failed: ", a)', sdl_get_error()
        call sdl_destroy_window(window)
        call sdl_quit()
        stop
    end if

    ! Background colour of the window.
    r = sint32_to_uint8(0)   ! red
    g = sint32_to_uint8(0)   ! green
    b = sint32_to_uint8(0)   ! blue
    a = sint32_to_uint8(255) ! alpha

    ! Main loop.
    done = .false.

    do while (.not. done)
        ! Event loop.
        do while (sdl_poll_event(event))
            if (event%type == SDL_EVENT_QUIT) then
                done = .true.
                exit
            end if
        end do

        ! Update screen.
        res = sdl_set_render_draw_color(renderer, r, g, b, a)
        res = sdl_render_clear(renderer)
        res = sdl_render_present(renderer)

        call sdl_delay(20)
    end do

    call sdl_destroy_renderer(renderer)
    call sdl_destroy_window(window)
    call sdl_quit()
end program main
