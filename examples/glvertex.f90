! Author:  Philipp Engel
! Licence: ISC
program main
    !! Renders a triangle with OpenGL immediate mode. This program may not work
    !! on macOS.
    use, intrinsic :: iso_fortran_env, only: real64
    use :: sdl3
    implicit none (type, external)

    integer, parameter :: WINDOW_WIDTH  = 1024
    integer, parameter :: WINDOW_HEIGHT = 768

    logical     :: res
    type(c_ptr) :: context
    type(c_ptr) :: window

    window  = c_null_ptr
    context = c_null_ptr

    sdl_block: block
        logical         :: done
        type(sdl_event) :: event

        ! Initialise SDL.
        if (.not. sdl_init(SDL_INIT_VIDEO)) then
            call output_error('SDL_Init failed')
            exit sdl_block
        end if

        ! Create window.
        window = sdl_create_window(f_c_str('Fortran + SDL 3.0'), WINDOW_WIDTH, WINDOW_HEIGHT, SDL_WINDOW_OPENGL)

        if (.not. c_associated(window)) then
            call output_error('SDL_CreateWindow failed')
            exit sdl_block
        end if

        res = sdl_set_window_position(window, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED)
        res = sdl_hide_cursor()

        ! Set OpenGL profile, create OpenGL context and enable VSync.
        res = sdl_gl_set_attribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_COMPATIBILITY)
        res = sdl_gl_set_attribute(SDL_GL_CONTEXT_MAJOR_VERSION, 2)
        res = sdl_gl_set_attribute(SDL_GL_CONTEXT_MINOR_VERSION, 1)

        context = sdl_gl_create_context(window)

        if (.not. c_associated(context)) then
            call output_error('SDL_GL_CreateContext failed')
            exit sdl_block
        end if

        if (.not. sdl_gl_set_swap_interval(1)) then
            call output_error('SDL_GL_SetSwapInterval failed')
        end if

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

            ! OpenGL rendering.
            call glClearColor(0.0, 0.0, 0.0, 1.0)
            call glClear(GL_COLOR_BUFFER_BIT)

            call glBegin(GL_TRIANGLES)
                call glColor3f ( 1.0,  0.0, 0.0)
                call glVertex3f(-0.5, -0.5, 0.0)

                call glColor3f ( 0.0,  1.0, 0.0)
                call glVertex3f( 0.5, -0.5, 0.0)

                call glColor3f ( 0.0,  0.0, 1.0)
                call glVertex3f( 0.0,  0.5, 0.0)
            call glEnd()

            res = sdl_gl_swap_window(window)
        end do
    end block sdl_block

    res = sdl_show_cursor()

    if (c_associated(context)) res = sdl_gl_destroy_context(context)
    if (c_associated(window))  call sdl_destroy_window(window)

    call sdl_quit()
contains
    subroutine output_error(message)
        !! Outputs SDL error message.
        character(*), intent(in) :: message

        print '(a, ": ", a)', trim(message), sdl_get_error()
    end subroutine output_error
end program main
