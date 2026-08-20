! Author:  Philipp Engel
! Licence: ISC
program main
    !! Renders Empire State Building. Based on the FreeBASIC program posted on:
    !!
    !!     <https://rosettacode.org/wiki/Draw_the_Empire_State_Building>
    !!
    use :: sdl3
    implicit none (type, external)

    real(GLdouble), parameter :: PI = acos(-1.0_GLdouble)

    integer, parameter :: WINDOW_WIDTH  = 500
    integer, parameter :: WINDOW_HEIGHT = 900

    ! Rotation angles, in radians.
    real(GLdouble) :: angle_x = 0.35_GLdouble
    real(GLdouble) :: angle_y = 0.60_GLdouble
    real(GLdouble) :: last    = 0.00_GLdouble

    logical(c_bool) :: res
    type(c_ptr)     :: window
    type(c_ptr)     :: context

    window  = c_null_ptr
    context = c_null_ptr

    sdl_block: block
        integer         :: pixel_width
        integer         :: pixel_height
        logical         :: done
        real(GLdouble)  :: now
        real(GLdouble)  :: dt
        type(sdl_event) :: event

        ! Initialise SDL.
        if (.not. sdl_init(SDL_INIT_VIDEO)) then
            call output_error('SDL_Init failed')
            exit sdl_block
        end if

        ! Create window.
        window = sdl_create_window(f_c_str('Fortran + SDL3'),   &
                                   WINDOW_WIDTH, WINDOW_HEIGHT, &
                                   ior(SDL_WINDOW_OPENGL, SDL_WINDOW_RESIZABLE))

        if (.not. c_associated(window)) then
            call output_error('SDL_CreateWindow failed')
            exit sdl_block
        end if

        res = sdl_set_window_position(window, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED)
        res = sdl_hide_cursor()

        ! OpenGL context configuration.
        res = sdl_gl_set_attribute(SDL_GL_CONTEXT_PROFILE_MASK,  SDL_GL_CONTEXT_PROFILE_COMPATIBILITY)
        res = sdl_gl_set_attribute(SDL_GL_CONTEXT_MAJOR_VERSION, 2)
        res = sdl_gl_set_attribute(SDL_GL_CONTEXT_MINOR_VERSION, 1)
        res = sdl_gl_set_attribute(SDL_GL_MULTISAMPLEBUFFERS,    1)
        res = sdl_gl_set_attribute(SDL_GL_MULTISAMPLESAMPLES,    4)
        res = sdl_gl_set_swap_interval(1)

        ! Create OpenGL context.
        context = sdl_gl_create_context(window)

        if (.not. c_associated(context)) then
            call output_error('SDL_GL_CreateContext failed')
            exit sdl_block
        end if

        ! Initial viewport.
        if (.not. sdl_get_window_size_in_pixels(window, pixel_width, pixel_height)) then
            call output_error('SDL_GetWindowSizeInPixels failed')
            exit sdl_block
        end if

        call resize_viewport(pixel_width, pixel_height)

        ! OpenGL state.
        call glEnable(GL_DEPTH_TEST)
        call glEnable(GL_LINE_SMOOTH)
        call glHint(GL_LINE_SMOOTH_HINT, GL_NICEST)

        ! Initialise timer.
        last = real(sdl_get_ticks_ns(), GLdouble) / 1000000000.0_GLdouble

        ! Main loop.
        done = .false.

        do while (.not. done)
            ! Event loop.
            do while (SDL_Poll_Event(event))
                select case (event%type)
                    case (SDL_EVENT_QUIT)
                        done = .true.

                    case (SDL_EVENT_KEY_DOWN)
                        if (event%key%key == SDLK_ESCAPE) done = .true.

                    case (SDL_EVENT_WINDOW_PIXEL_SIZE_CHANGED)
                        call resize_viewport(event%window%data1, event%window%data2)
                end select
            end do

            ! Render scene.
            now  = real(sdl_get_ticks_ns(), GLdouble) / 1000000000.0_GLdouble
            dt   = now - last
            last = now

            ! Avoid a huge rotation jump after a pause/debug break.
            if (dt > 0.25_GLdouble) dt = 0.25_GLdouble

            call render_scene(dt)
            res = sdl_gl_swap_window(window)
        end do
    end block sdl_block

    res = sdl_show_cursor()

    if (c_associated(context)) res = sdl_gl_destroy_context(context)
    if (c_associated(window))  call sdl_destroy_window(window)

    call sdl_quit()
contains
    subroutine perspective(fov_y, aspect, z_near, z_far)
        !! Sets perspective projection.
        !!
        !! Equivalent to `gluPerspective(fov_y, aspect, z_near, z_far)` but
        !! without GLU.
        real(GLdouble), intent(in) :: fov_y
        real(GLdouble), intent(in) :: aspect
        real(GLdouble), intent(in) :: z_near
        real(GLdouble), intent(in) :: z_far

        real(GLdouble) :: height
        real(GLdouble) :: width

        height = tan(fov_y * PI / 360.0_GLdouble) * z_near
        width  = height * aspect
        call glFrustum(-width, width, -height, height, z_near, z_far)
    end subroutine perspective

    subroutine draw_block(cx, cy, cz, width, height, depth, lod)
        real(GLdouble), intent(in) :: cx, cy, cz
        real(GLdouble), intent(in) :: width, height, depth
        integer,        intent(in) :: lod

        real(GLdouble) :: dx, dy, dz
        real(GLfloat)  :: r_edge, g_edge, b_edge
        real(GLfloat)  :: r_win, g_win, b_win
        real(GLfloat)  :: r_pil, g_pil, b_pil

        real(GLdouble) :: offset
        real(GLdouble) :: y_step
        real(GLdouble) :: x_step

        dx = width  / 2.0_GLdouble
        dy = height / 2.0_GLdouble
        dz = depth  / 2.0_GLdouble

        ! Colours.
        r_edge = 140.0_GLfloat / 255.0_GLfloat
        g_edge = 145.0_GLfloat / 255.0_GLfloat
        b_edge = 160.0_GLfloat / 255.0_GLfloat

        r_win = 255.0_GLfloat / 255.0_GLfloat
        g_win = 245.0_GLfloat / 255.0_GLfloat
        b_win = 180.0_GLfloat / 255.0_GLfloat

        r_pil = 70.0_GLfloat / 255.0_GLfloat
        g_pil = 75.0_GLfloat / 255.0_GLfloat
        b_pil = 90.0_GLfloat / 255.0_GLfloat

        select case (lod)
            ! Level of Detail 2
            case (2)
                call glColor3f(r_pil, g_pil, b_pil)
                offset = -dx + 10.0_GLdouble

                do while (offset <= dx - 10.0_GLdouble)
                    call draw_line(cx + offset, cy - dy, cz - dz, cx + offset, cy + dy, cz - dz)
                    call draw_line(cx + offset, cy - dy, cz + dz, cx + offset, cy + dy, cz + dz)
                    offset = offset + 15.0_GLdouble
                end do

                call glColor3f(r_win, g_win, b_win)
                y_step = -dy + 15.0_GLdouble

                do while (y_step <= dy - 15.0_GLdouble)
                    x_step = -dx + 12.0_GLdouble

                    do while (x_step <= dx - 12.0_GLdouble)
                        call draw_line(cx + x_step, cy + y_step, cz -     dz, cx + x_step, cy + y_step + 4.0_GLdouble, cz -     dz)
                        call draw_line(cx + x_step, cy + y_step, cz +     dz, cx + x_step, cy + y_step + 4.0_GLdouble, cz +     dz)
                        call draw_line(cx -     dx, cy + y_step, cz + x_step, cx -     dx, cy + y_step + 4.0_GLdouble, cz + x_step)
                        call draw_line(cx +     dx, cy + y_step, cz + x_step, cx +     dx, cy + y_step + 4.0_GLdouble, cz + x_step)
                        x_step = x_step + 15.0_GLdouble
                    end do

                    y_step = y_step + 18.0_GLdouble
                end do

            ! Level of Detail 3
            case (3)
                call glColor3f(r_pil, g_pil, b_pil)
                offset = -dx + 6.0_GLdouble

                do while (offset <= dx - 6.0_GLdouble)
                    call draw_line(cx + offset, cy - dy, cz -     dz, cx + offset, cy + dy, cz -     dz)
                    call draw_line(cx + offset, cy - dy, cz +     dz, cx + offset, cy + dy, cz +     dz)
                    call draw_line(cx -     dx, cy - dy, cz + offset, cx -     dx, cy + dy, cz + offset)
                    call draw_line(cx +     dx, cy - dy, cz + offset, cx +     dx, cy + dy, cz + offset)
                    offset = offset + 8.0_GLdouble
                end do

                call glColor3f(r_win, g_win, b_win)
                y_step = -dy + 10.0_GLdouble

                do while (y_step <= dy - 10.0_GLdouble)
                    x_step = -dx + 6.0_GLdouble

                    do while (x_step <= dx - 6.0_GLdouble)
                        call draw_line(cx + x_step, cy + y_step, cz -     dz, cx + x_step, cy + y_step + 3.0_GLdouble, cz -     dz)
                        call draw_line(cx + x_step, cy + y_step, cz +     dz, cx + x_step, cy + y_step + 3.0_GLdouble, cz +     dz)
                        call draw_line(cx -     dx, cy + y_step, cz + x_step, cx -     dx, cy + y_step + 3.0_GLdouble, cz + x_step)
                        call draw_line(cx +     dx, cy + y_step, cz + x_step, cx +     dx, cy + y_step + 3.0_GLdouble, cz + x_step)
                        x_step = x_step + 8.0_GLdouble
                    end do

                    y_step = y_step + 12.0_GLdouble
                end do

            ! Level of Detail 4
            case (4)
                call glColor3f(r_pil, g_pil, b_pil)
                offset = -dx + 4.0_GLdouble

                do while (offset <= dx - 4.0_GLdouble)
                    call draw_line(cx + offset, cy - dy, cz -     dz, cx + offset, cy + dy, cz -     dz)
                    call draw_line(cx -     dx, cy - dy, cz + offset, cx -     dx, cy + dy, cz + offset)
                    offset = offset + 6.0_GLdouble
                end do

                call glColor3f(r_win, g_win, b_win)
                call draw_line(cx - dx + 5.0_GLdouble, cy, cz - dz + 5.0_GLdouble, cx + dx - 5.0_GLdouble, cy, cz - dz + 5.0_GLdouble)
        end select

        ! Outer edges.
        call glColor3f(r_edge, g_edge, b_edge)
        call glLineWidth(2.0_GLfloat)

        ! Front face.
        call draw_line(cx - dx, cy - dy, cz - dz, cx + dx, cy - dy, cz - dz)
        call draw_line(cx + dx, cy - dy, cz - dz, cx + dx, cy + dy, cz - dz)
        call draw_line(cx + dx, cy + dy, cz - dz, cx - dx, cy + dy, cz - dz)
        call draw_line(cx - dx, cy + dy, cz - dz, cx - dx, cy - dy, cz - dz)

        ! Back face.
        call draw_line(cx - dx, cy - dy, cz + dz, cx + dx, cy - dy, cz + dz)
        call draw_line(cx + dx, cy - dy, cz + dz, cx + dx, cy + dy, cz + dz)
        call draw_line(cx + dx, cy + dy, cz + dz, cx - dx, cy + dy, cz + dz)
        call draw_line(cx - dx, cy + dy, cz + dz, cx - dx, cy - dy, cz + dz)

        ! Connecting edges.
        call draw_line(cx - dx, cy - dy, cz - dz, cx - dx, cy - dy, cz + dz)
        call draw_line(cx + dx, cy - dy, cz - dz, cx + dx, cy - dy, cz + dz)
        call draw_line(cx + dx, cy + dy, cz - dz, cx + dx, cy + dy, cz + dz)
        call draw_line(cx - dx, cy + dy, cz - dz, cx - dx, cy + dy, cz + dz)

        call glLineWidth(1.0_GLfloat)
    end subroutine draw_block

    subroutine draw_line(x1, y1, z1, x2, y2, z2)
        real(GLdouble), intent(in) :: x1, y1, z1
        real(GLdouble), intent(in) :: x2, y2, z2

        call glBegin(GL_LINES)
            call glVertex3d(x1, y1, z1)
            call glVertex3d(x2, y2, z2)
        call glEnd()
    end subroutine draw_line

    subroutine draw_spire(x1, y1, z1, x2, y2, z2)
        !! Draws antenna.
        real(GLdouble), intent(in) :: x1, y1, z1
        real(GLdouble), intent(in) :: x2, y2, z2

        call glColor3f(240.0_GLfloat / 255.0_GLfloat, &
                       240.0_GLfloat / 255.0_GLfloat, &
                       250.0_GLfloat / 255.0_GLfloat)

        call glLineWidth(3.0_GLfloat)
        call draw_line(x1, y1, z1, x2, y2, z2)
        call glLineWidth(1.0_GLfloat)
    end subroutine draw_spire

    subroutine output_error(message)
        !! Outputs SDL error message.
        character(*), intent(in) :: message

        print '(a, ": ", a)', trim(message), sdl_get_error()
    end subroutine output_error

    subroutine render_scene(dt)
        !! Renders scene.
        real(GLdouble), intent(in) :: dt

        call glClearColor( 8.0_GLfloat / 255.0_GLfloat, &
                          12.0_GLfloat / 255.0_GLfloat, &
                          22.0_GLfloat / 255.0_GLfloat, &
                                           1.0_GLfloat)

        call glClear(ior(GL_COLOR_BUFFER_BIT, GL_DEPTH_BUFFER_BIT))
        call glMatrixMode(GL_MODELVIEW)
        call glLoadIdentity()

        ! Translation.
        call glTranslated(0.0_GLdouble, -50.0_GLdouble, -750.0_GLdouble)

        ! Time-based rotation: approximately 0.4 rad/s around y.
        angle_y = angle_y + 0.4_GLdouble * dt

        call glRotated(angle_x * 180.0_GLdouble / PI, 1.0_GLdouble, 0.0_GLdouble, 0.0_GLdouble)
        call glRotated(angle_y * 180.0_GLdouble / PI, 0.0_GLdouble, 1.0_GLdouble, 0.0_GLdouble)

        call draw_block(0.0_GLdouble, -180.0_GLdouble, 0.0_GLdouble, 150.0_GLdouble,  70.0_GLdouble, 150.0_GLdouble, 1)
        call draw_block(0.0_GLdouble,  -90.0_GLdouble, 0.0_GLdouble, 110.0_GLdouble, 110.0_GLdouble, 110.0_GLdouble, 2)
        call draw_block(0.0_GLdouble,   80.0_GLdouble, 0.0_GLdouble,  66.0_GLdouble, 230.0_GLdouble,  66.0_GLdouble, 3)
        call draw_block(0.0_GLdouble,  210.0_GLdouble, 0.0_GLdouble,  42.0_GLdouble,  30.0_GLdouble,  42.0_GLdouble, 4)
        call draw_block(0.0_GLdouble,  235.0_GLdouble, 0.0_GLdouble,  20.0_GLdouble,  20.0_GLdouble,  20.0_GLdouble, 5)
        call draw_spire(0.0_GLdouble,  245.0_GLdouble, 0.0_GLdouble,   0.0_GLdouble, 325.0_GLdouble,   0.0_GLdouble)
    end subroutine render_scene

    subroutine resize_viewport(width, height)
        !! Resizes viewport.
        integer, intent(in) :: width
        integer, intent(in) :: height

        integer        :: height_
        real(GLdouble) :: aspect

        height_ = max(1, height)
        call glViewport(0, 0, width, height_)

        call glMatrixMode(GL_PROJECTION)
        call glLoadIdentity()

        aspect = real(width, GLdouble) / real(height_, GLdouble)
        call perspective(45.0_GLdouble, aspect, 1.0_GLdouble, 2000.0_GLdouble)

        call glMatrixMode(GL_MODELVIEW)
        call glLoadIdentity()
    end subroutine resize_viewport
end program main
