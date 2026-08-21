! Author:  Philipp Engel
! Licence: ISC
program main
    !! Renders Empire State Building. Based on the FreeBASIC program posted on:
    !!
    !!     <https://rosettacode.org/wiki/Draw_the_Empire_State_Building>
    !!
    use :: sdl3, r4 => GLfloat, r8 => GLdouble
    implicit none (type, external)

    real(r8), parameter :: PI = acos(-1.0_r8)

    integer, parameter :: WINDOW_WIDTH  = 500
    integer, parameter :: WINDOW_HEIGHT = 900

    ! Rotation angles, in radians.
    real(r8) :: angle_x = 0.35_r8
    real(r8) :: angle_y = 0.60_r8
    real(r8) :: last    = 0.00_r8

    logical(c_bool) :: res
    type(c_ptr)     :: window
    type(c_ptr)     :: context

    window  = c_null_ptr
    context = c_null_ptr

    sdl_block: block
        integer         :: pixel_width, pixel_height
        logical         :: done
        real(r8)        :: dt, freq, now
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

        ! Set OpenGL context attributes.
        res = sdl_gl_set_attribute(SDL_GL_CONTEXT_PROFILE_MASK,  SDL_GL_CONTEXT_PROFILE_COMPATIBILITY)
        res = sdl_gl_set_attribute(SDL_GL_CONTEXT_MAJOR_VERSION, 2)
        res = sdl_gl_set_attribute(SDL_GL_CONTEXT_MINOR_VERSION, 1)
        res = sdl_gl_set_attribute(SDL_GL_MULTISAMPLEBUFFERS,    1)
        res = sdl_gl_set_attribute(SDL_GL_MULTISAMPLESAMPLES,    4)

        ! Create OpenGL context.
        context = sdl_gl_create_context(window)

        if (.not. c_associated(context)) then
            call output_error('SDL_GL_CreateContext failed')
            exit sdl_block
        end if

        ! Enable VSync.
        res = sdl_gl_set_swap_interval(1)

        ! Initialise viewport.
        if (.not. sdl_get_window_size_in_pixels(window, pixel_width, pixel_height)) then
            call output_error('SDL_GetWindowSizeInPixels failed')
            exit sdl_block
        end if

        call resize_viewport(pixel_width, pixel_height)

        ! Set OpenGL state.
        call glEnable(GL_DEPTH_TEST)
        call glEnable(GL_LINE_SMOOTH)
        call glHint(GL_LINE_SMOOTH_HINT, GL_NICEST)

        ! Initialise timer.
        freq = real(sdl_get_performance_frequency(), r8)
        last = real(sdl_get_performance_counter(), r8) / freq

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
            now  = real(sdl_get_performance_counter(), r8) / freq
            dt   = now - last
            last = now

            ! Avoid a huge rotation jump after a pause/debug break.
            if (dt > 0.25_r8) dt = 0.25_r8

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
        real(r8), intent(in) :: fov_y
        real(r8), intent(in) :: aspect
        real(r8), intent(in) :: z_near
        real(r8), intent(in) :: z_far

        real(r8) :: height
        real(r8) :: width

        height = tan(fov_y * PI / 360.0_r8) * z_near
        width  = height * aspect
        call glFrustum(-width, width, -height, height, z_near, z_far)
    end subroutine perspective

    subroutine draw_block(cx, cy, cz, width, height, depth, lod)
        !! Draws block in given level of detail.
        real(r4), parameter :: R_EDGE = 140.0_r4 / 255.0_r4
        real(r4), parameter :: G_EDGE = 145.0_r4 / 255.0_r4
        real(r4), parameter :: B_EDGE = 160.0_r4 / 255.0_r4

        real(r4), parameter :: R_WIN  = 255.0_r4 / 255.0_r4
        real(r4), parameter :: G_WIN  = 245.0_r4 / 255.0_r4
        real(r4), parameter :: B_WIN  = 180.0_r4 / 255.0_r4

        real(r4), parameter :: R_PIL  =  70.0_r4 / 255.0_r4
        real(r4), parameter :: G_PIL  =  75.0_r4 / 255.0_r4
        real(r4), parameter :: B_PIL  =  90.0_r4 / 255.0_r4

        real(r8), intent(in) :: cx, cy, cz
        real(r8), intent(in) :: width, height, depth
        integer,  intent(in) :: lod

        real(r8) :: dx, dy, dz
        real(r8) :: offset
        real(r8) :: y_step
        real(r8) :: x_step

        dx = width  / 2.0_r8
        dy = height / 2.0_r8
        dz = depth  / 2.0_r8

        select case (lod)
            ! Level of Detail 2
            case (2)
                call glColor3f(R_PIL, G_PIL, B_PIL)
                offset = -dx + 10.0_r8

                do while (offset <= dx - 10.0_r8)
                    call draw_line(cx + offset, cy - dy, cz - dz, cx + offset, cy + dy, cz - dz)
                    call draw_line(cx + offset, cy - dy, cz + dz, cx + offset, cy + dy, cz + dz)
                    offset = offset + 15.0_r8
                end do

                call glColor3f(R_WIN, G_WIN, B_WIN)
                y_step = -dy + 15.0_r8

                do while (y_step <= dy - 15.0_r8)
                    x_step = -dx + 12.0_r8

                    do while (x_step <= dx - 12.0_r8)
                        call draw_line(cx + x_step, cy + y_step, cz -     dz, cx + x_step, cy + y_step + 4.0_r8, cz -     dz)
                        call draw_line(cx + x_step, cy + y_step, cz +     dz, cx + x_step, cy + y_step + 4.0_r8, cz +     dz)
                        call draw_line(cx -     dx, cy + y_step, cz + x_step, cx -     dx, cy + y_step + 4.0_r8, cz + x_step)
                        call draw_line(cx +     dx, cy + y_step, cz + x_step, cx +     dx, cy + y_step + 4.0_r8, cz + x_step)
                        x_step = x_step + 15.0_r8
                    end do

                    y_step = y_step + 18.0_r8
                end do

            ! Level of Detail 3
            case (3)
                call glColor3f(R_PIL, G_PIL, B_PIL)
                offset = -dx + 6.0_r8

                do while (offset <= dx - 6.0_r8)
                    call draw_line(cx + offset, cy - dy, cz -     dz, cx + offset, cy + dy, cz -     dz)
                    call draw_line(cx + offset, cy - dy, cz +     dz, cx + offset, cy + dy, cz +     dz)
                    call draw_line(cx -     dx, cy - dy, cz + offset, cx -     dx, cy + dy, cz + offset)
                    call draw_line(cx +     dx, cy - dy, cz + offset, cx +     dx, cy + dy, cz + offset)
                    offset = offset + 8.0_r8
                end do

                call glColor3f(R_WIN, G_WIN, B_WIN)
                y_step = -dy + 10.0_r8

                do while (y_step <= dy - 10.0_r8)
                    x_step = -dx + 6.0_r8

                    do while (x_step <= dx - 6.0_r8)
                        call draw_line(cx + x_step, cy + y_step, cz -     dz, cx + x_step, cy + y_step + 3.0_r8, cz -     dz)
                        call draw_line(cx + x_step, cy + y_step, cz +     dz, cx + x_step, cy + y_step + 3.0_r8, cz +     dz)
                        call draw_line(cx -     dx, cy + y_step, cz + x_step, cx -     dx, cy + y_step + 3.0_r8, cz + x_step)
                        call draw_line(cx +     dx, cy + y_step, cz + x_step, cx +     dx, cy + y_step + 3.0_r8, cz + x_step)
                        x_step = x_step + 8.0_r8
                    end do

                    y_step = y_step + 12.0_r8
                end do

            ! Level of Detail 4
            case (4)
                call glColor3f(R_PIL, G_PIL, B_PIL)
                offset = -dx + 4.0_r8

                do while (offset <= dx - 4.0_r8)
                    call draw_line(cx + offset, cy - dy, cz -     dz, cx + offset, cy + dy, cz -     dz)
                    call draw_line(cx -     dx, cy - dy, cz + offset, cx -     dx, cy + dy, cz + offset)
                    offset = offset + 6.0_r8
                end do

                call glColor3f(R_WIN, G_WIN, B_WIN)
                call draw_line(cx - dx + 5.0_r8, cy, cz - dz + 5.0_r8, cx + dx - 5.0_r8, cy, cz - dz + 5.0_r8)
        end select

        ! Outer edges.
        call glColor3f(R_EDGE, G_EDGE, B_EDGE)
        call glLineWidth(2.0_r4)

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

        call glLineWidth(1.0_r4)
    end subroutine draw_block

    subroutine draw_line(x1, y1, z1, x2, y2, z2)
        !! Draws line.
        real(r8), intent(in) :: x1, y1, z1
        real(r8), intent(in) :: x2, y2, z2

        call glBegin(GL_LINES)
            call glVertex3d(x1, y1, z1)
            call glVertex3d(x2, y2, z2)
        call glEnd()
    end subroutine draw_line

    subroutine draw_spire(x1, y1, z1, x2, y2, z2)
        !! Draws antenna.
        real(r8), intent(in) :: x1, y1, z1
        real(r8), intent(in) :: x2, y2, z2

        call glColor3f(240.0_r4 / 255.0_r4, &
                       240.0_r4 / 255.0_r4, &
                       250.0_r4 / 255.0_r4)

        call glLineWidth(3.0_r4)
        call draw_line(x1, y1, z1, x2, y2, z2)
        call glLineWidth(1.0_r4)
    end subroutine draw_spire

    subroutine output_error(message)
        !! Outputs SDL error message.
        character(*), intent(in) :: message

        print '(a, ": ", a)', trim(message), sdl_get_error()
    end subroutine output_error

    subroutine render_scene(dt)
        !! Renders scene.
        real(r8), intent(in) :: dt

        call glClearColor( 8.0_r4 / 255.0_r4, &
                          12.0_r4 / 255.0_r4, &
                          22.0_r4 / 255.0_r4, &
                                      1.0_r4)

        call glClear(ior(GL_COLOR_BUFFER_BIT, GL_DEPTH_BUFFER_BIT))
        call glMatrixMode(GL_MODELVIEW)
        call glLoadIdentity()

        ! Translation.
        call glTranslated(0.0_r8, -50.0_r8, -750.0_r8)

        ! Time-based rotation: approximately 0.4 rad/s around y.
        angle_y = angle_y + 0.4_r8 * dt

        call glRotated(angle_x * 180.0_r8 / PI, 1.0_r8, 0.0_r8, 0.0_r8)
        call glRotated(angle_y * 180.0_r8 / PI, 0.0_r8, 1.0_r8, 0.0_r8)

        call draw_block(0.0_r8, -180.0_r8, 0.0_r8, 150.0_r8,  70.0_r8, 150.0_r8, 1)
        call draw_block(0.0_r8,  -90.0_r8, 0.0_r8, 110.0_r8, 110.0_r8, 110.0_r8, 2)
        call draw_block(0.0_r8,   80.0_r8, 0.0_r8,  66.0_r8, 230.0_r8,  66.0_r8, 3)
        call draw_block(0.0_r8,  210.0_r8, 0.0_r8,  42.0_r8,  30.0_r8,  42.0_r8, 4)
        call draw_block(0.0_r8,  235.0_r8, 0.0_r8,  20.0_r8,  20.0_r8,  20.0_r8, 5)
        call draw_spire(0.0_r8,  245.0_r8, 0.0_r8,   0.0_r8, 325.0_r8,   0.0_r8)
    end subroutine render_scene

    subroutine resize_viewport(width, height)
        !! Resizes viewport.
        integer, intent(in) :: width
        integer, intent(in) :: height

        integer  :: height_
        real(r8) :: aspect

        height_ = max(1, height)
        call glViewport(0, 0, width, height_)

        call glMatrixMode(GL_PROJECTION)
        call glLoadIdentity()

        aspect = real(width, r8) / real(height_, r8)
        call perspective(45.0_r8, aspect, 1.0_r8, 2000.0_r8)

        call glMatrixMode(GL_MODELVIEW)
        call glLoadIdentity()
    end subroutine resize_viewport
end program main
