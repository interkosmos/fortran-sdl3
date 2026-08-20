! Author:  Philipp Engel
! Licence: ISC
program main
    !! Creates an SDL window and prints log messages to standard output.
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

    ! Set custom log procedure.
    call sdl_set_log_output_function(log_output, c_null_ptr)

    ! Initialise SDL.
    if (.not. sdl_init(SDL_INIT_VIDEO)) then
        call sdl_log_error(0, 'SDL_Init failed: ' // sdl_get_error())
        call sdl_quit()
        stop
    end if

    call sdl_log_info(0, 'SDL initialized')

    ! Create SDL window.
    flags  = 0
    window = sdl_create_window(f_c_str('Fortran + SDL3'), WINDOW_WIDTH, WINDOW_HEIGHT, flags)

    if (.not. c_associated(window)) then
        call sdl_log_error(0, 'SDL_CreateWindow failed: ' // sdl_get_error())
        call sdl_quit()
        stop
    end if

    call sdl_log_info(0, 'SDL window created')

    res = sdl_set_window_position(window, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED)

    ! Create SDL renderer.
    renderer = sdl_create_renderer(window, c_null_char)

    if (.not. c_associated(renderer)) then
        call sdl_log_error(0, 'SDL_CreateRenderer failed: ' // sdl_get_error())
        call sdl_destroy_window(window)
        call sdl_quit()
        stop
    end if

    call sdl_log_info(0, 'SDL renderer created')

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
    call sdl_log_info(0, 'SDL renderer destroyed')

    call sdl_destroy_window(window)
    call sdl_log_info(0, 'SDL window destroyed')

    call sdl_quit()
contains
    subroutine log_output(user_data, category, priority, message) bind(c)
        !! Custom log procedure.
        type(c_ptr),    intent(in), value :: user_data
        integer(c_int), intent(in), value :: category
        integer(c_int), intent(in), value :: priority
        type(c_ptr),    intent(in), value :: message

        character(:), allocatable :: str
        integer                   :: dt(8)

        call c_f_str_ptr(message, str)
        call date_and_time(values=dt)

        write (*, '("[", i4, "-", i2.2, "-", i2.2, " ", 2(i2.2, ":"), i2.2, "]")', advance='no') dt(1:3), dt(5:7)

       select case (priority)
            case (SDL_LOG_PRIORITY_TRACE);    write (*, '(" [TRACE] ")',    advance='no')
            case (SDL_LOG_PRIORITY_VERBOSE);  write (*, '(" [VERBOSE] ")',  advance='no')
            case (SDL_LOG_PRIORITY_DEBUG);    write (*, '(" [DEBUG] ")',    advance='no')
            case (SDL_LOG_PRIORITY_INFO);     write (*, '(" [INFO] ")',     advance='no')
            case (SDL_LOG_PRIORITY_WARN);     write (*, '(" [WARN] ")',     advance='no')
            case (SDL_LOG_PRIORITY_ERROR);    write (*, '(" [ERROR] ")',    advance='no')
            case (SDL_LOG_PRIORITY_CRITICAL); write (*, '(" [CRITICAL] ")', advance='no')
        end select

        write (*, '(a)') str
    end subroutine log_output
end program main
