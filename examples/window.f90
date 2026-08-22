! Author:  Philipp Engel
! Licence: ISC
program main
    !! Creates an SDL window and prints log messages to standard output.
    use :: sdl3, to_uint8 => sint32_to_uint8
    implicit none (type, external)

    integer, parameter :: WINDOW_WIDTH  = 800
    integer, parameter :: WINDOW_HEIGHT = 600

    character(32)             :: version
    integer(sdl_window_flags) :: flags
    integer(uint8)            :: r, g, b, a
    logical                   :: done, res
    type(c_ptr)               :: renderer
    type(c_ptr)               :: window
    type(sdl_event)           :: event

    ! Set custom log procedure.
    call sdl_set_log_output_function(log_output, c_null_ptr)
    call sdl_set_log_priorities(SDL_LOG_PRIORITY_VERBOSE)

    ! Initialise SDL.
    if (.not. sdl_init(SDL_INIT_VIDEO)) then
        call sdl_log_error(0, 'SDL_Init failed: ' // sdl_get_error())
        call sdl_quit()
        stop
    end if

    call sdl_log_info(0, 'SDL initialized')
    call version_string(version)

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

    ! Font colour.
    r = to_uint8(0)
    g = to_uint8(255)
    b = to_uint8(0)
    a = to_uint8(SDL_ALPHA_OPAQUE)

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

        ! Update screen.
        res = sdl_set_render_draw_color(renderer, 0_uint8, 0_uint8, 0_uint8, a)
        res = sdl_render_clear(renderer)

        res = sdl_set_render_draw_color(renderer, r, g, b, a)
        res = sdl_render_debug_text(renderer, 10.0, 10.0, f_c_str(version))

        res = sdl_render_present(renderer)
        call sdl_delay(20)
    end do

    call sdl_destroy_renderer(renderer)
    call sdl_log_info(0, 'SDL renderer destroyed')

    call sdl_destroy_window(window)
    call sdl_log_info(0, 'SDL window destroyed')

    call sdl_log_verbose(0, 'Exiting ...')
    call sdl_quit()
contains
    subroutine log_output(user_data, category, priority, message) bind(c)
        !! Custom log procedure.
        type(c_ptr),    intent(in), value :: user_data
        integer(c_int), intent(in), value :: category
        integer(c_int), intent(in), value :: priority
        type(c_ptr),    intent(in), value :: message

        character(:), allocatable :: string
        integer                   :: dt(8)

        call c_f_str_ptr(message, string)
        call date_and_time(values=dt)

        write (*, '("[", i4.4, 2("-", i2.2), " ", 2(i2.2, ":"), i2.2, "]")', advance='no') dt(1:3), dt(5:7)

       select case (priority)
            case (SDL_LOG_PRIORITY_TRACE);    write (*, '(" [TRACE] ")',    advance='no')
            case (SDL_LOG_PRIORITY_VERBOSE);  write (*, '(" [VERBOSE] ")',  advance='no')
            case (SDL_LOG_PRIORITY_DEBUG);    write (*, '(" [DEBUG] ")',    advance='no')
            case (SDL_LOG_PRIORITY_INFO);     write (*, '(" [INFO] ")',     advance='no')
            case (SDL_LOG_PRIORITY_WARN);     write (*, '(" [WARN] ")',     advance='no')
            case (SDL_LOG_PRIORITY_ERROR);    write (*, '(" [ERROR] ")',    advance='no')
            case (SDL_LOG_PRIORITY_CRITICAL); write (*, '(" [CRITICAL] ")', advance='no')
        end select

        write (*, '(a)') string
    end subroutine log_output

    subroutine version_string(string)
        character(*), intent(inout) :: string

        integer :: major, minor, patch, version
        integer :: stat

        string = ' '

        version = sdl_get_version()
        major   = version / 1000000
        minor   = modulo(version / 1000, 1000)
        patch   = modulo(version, 1000)

        write (string, '("SDL ", 2(i0, "."), i0)', iostat=stat) major, minor, patch
    end subroutine version_string
end program main
