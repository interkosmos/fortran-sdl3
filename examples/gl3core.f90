! Author:  Philipp Engel
! Licence: ISC
program main
    !! Example program that uses the OpenGL 3.3 core profile to render a
    !! triangle through vertex/fragment shader.
    !!
    !! Use the arrow keys to move the camera.
    use :: sdl3
    implicit none (type, external)

    integer, parameter :: WINDOW_WIDTH  = 800
    integer, parameter :: WINDOW_HEIGHT = 600

    ! Camera movement.
    real, parameter :: DX = 5.0
    real, parameter :: DY = 5.0

    ! Function pointers to OpenGL API.
    procedure(glAttachShader_interface),            bind(c), pointer :: glAttachShader
    procedure(glBindBuffer_interface),              bind(c), pointer :: glBindBuffer
    procedure(glBindVertexArray_interface),         bind(c), pointer :: glBindVertexArray
    procedure(glBufferData_interface),              bind(c), pointer :: glBufferData
    procedure(glCompileShader_interface),           bind(c), pointer :: glCompileShader
    procedure(glCreateProgram_interface),           bind(c), pointer :: glCreateProgram
    procedure(glCreateShader_interface),            bind(c), pointer :: glCreateShader
    procedure(glDeleteShader_interface),            bind(c), pointer :: glDeleteShader
    procedure(glEnableVertexAttribArray_interface), bind(c), pointer :: glEnableVertexAttribArray
    procedure(glGenBuffers_interface),              bind(c), pointer :: glGenBuffers
    procedure(glGenVertexArrays_interface),         bind(c), pointer :: glGenVertexArrays
    procedure(glGetUniformLocation_interface),      bind(c), pointer :: glGetUniformLocation
    procedure(glLinkProgram_interface),             bind(c), pointer :: glLinkProgram
    procedure(glShaderSource_interface),            bind(c), pointer :: glShaderSource
    procedure(glUniformMatrix4fv_interface),        bind(c), pointer :: glUniformMatrix4fv
    procedure(glUseProgram_interface),              bind(c), pointer :: glUseProgram
    procedure(glVertexAttribPointer_interface),     bind(c), pointer :: glVertexAttribPointer

    logical     :: res
    type(c_ptr) :: context
    type(c_ptr) :: window

    window  = c_null_ptr
    context = c_null_ptr

    sdl_block: block
        character(:), allocatable, target :: vertex_shader
        character(:), allocatable, target :: fragment_shader
        real                              :: camera_x, camera_y
        real,                      target :: projection(16), view(16)
        real,                      target :: vertices(15)

        integer(GLint)  :: width, height
        integer(GLuint) :: fs, vs
        integer(GLuint) :: prg, vao(1), vbo(1)
        logical         :: done
        real(GLdouble)  :: aspect
        type(sdl_event) :: event

        ! Initialise SDL.
        if (.not. sdl_init(SDL_INIT_VIDEO)) then
            call output_error('SDL_Init failed')
            exit sdl_block
        end if

        ! Create SDL window.
        window = sdl_create_window(f_c_str('Fortran + SDL 3.0'), WINDOW_WIDTH, WINDOW_HEIGHT, SDL_WINDOW_OPENGL)

        if (.not. c_associated(window)) then
            call output_error('SDL_CreateWindow failed')
            exit sdl_block
        end if

        res = sdl_set_window_position(window, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED)
        res = sdl_hide_cursor()

        ! Create OpenGL context.
        res = sdl_gl_set_attribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3)
        res = sdl_gl_set_attribute(SDL_GL_CONTEXT_MINOR_VERSION, 3)
        res = sdl_gl_set_attribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE)

        context = sdl_gl_create_context(window)

        if (.not. c_associated(context)) then
            call output_error('SDL_GL_CreateContext failed')
            exit sdl_block
        end if

        if (.not. sdl_gl_set_swap_interval(1)) then
            call output_error('SDL_GL_SetSwapInterval failed')
        end if

        ! Output OpenGL version and renderer.
        print '("OpenGL..: ", a)', glGetString(GL_VERSION)
        print '("Renderer: ", a)', glGetString(GL_RENDERER)

        ! Get function pointers to the OpenGL API.
        call c_f_procpointer(sdl_gl_get_proc_address(f_c_str('glAttachShader')),            glAttachShader)
        call c_f_procpointer(sdl_gl_get_proc_address(f_c_str('glBindBuffer')),              glBindBuffer)
        call c_f_procpointer(sdl_gl_get_proc_address(f_c_str('glBindVertexArray')),         glBindVertexArray)
        call c_f_procpointer(sdl_gl_get_proc_address(f_c_str('glBufferData')),              glBufferData)
        call c_f_procpointer(sdl_gl_get_proc_address(f_c_str('glCompileShader')),           glCompileShader)
        call c_f_procpointer(sdl_gl_get_proc_address(f_c_str('glCreateProgram')),           glCreateProgram)
        call c_f_procpointer(sdl_gl_get_proc_address(f_c_str('glCreateShader')),            glCreateShader)
        call c_f_procpointer(sdl_gl_get_proc_address(f_c_str('glDeleteShader')),            glDeleteShader)
        call c_f_procpointer(sdl_gl_get_proc_address(f_c_str('glEnableVertexAttribArray')), glEnableVertexAttribArray)
        call c_f_procpointer(sdl_gl_get_proc_address(f_c_str('glGenBuffers')),              glGenBuffers)
        call c_f_procpointer(sdl_gl_get_proc_address(f_c_str('glGenVertexArrays')),         glGenVertexArrays)
        call c_f_procpointer(sdl_gl_get_proc_address(f_c_str('glGetUniformLocation')),      glGetUniformLocation)
        call c_f_procpointer(sdl_gl_get_proc_address(f_c_str('glLinkProgram')),             glLinkProgram)
        call c_f_procpointer(sdl_gl_get_proc_address(f_c_str('glShaderSource')),            glShaderSource)
        call c_f_procpointer(sdl_gl_get_proc_address(f_c_str('glUniformMatrix4fv')),        glUniformMatrix4fv)
        call c_f_procpointer(sdl_gl_get_proc_address(f_c_str('glUseProgram')),              glUseProgram)
        call c_f_procpointer(sdl_gl_get_proc_address(f_c_str('glVertexAttribPointer')),     glVertexAttribPointer)

        ! Load vertex shader.
        vs = glCreateShader(GL_VERTEX_SHADER)

        vertex_shader = '#version 330 core'                                               // c_new_line // &
                                                                                             c_new_line // &
                        'layout(location = 0) in vec2 position;'                          // c_new_line // &
                        'layout(location = 1) in vec3 color;'                             // c_new_line // &
                                                                                             c_new_line // &
                        'uniform mat4 projection;'                                        // c_new_line // &
                        'uniform mat4 view;'                                              // c_new_line // &
                        'out     vec3 vertex_color;'                                      // c_new_line // &
                                                                                             c_new_line // &
                        'void main()'                                                     // c_new_line // &
                        '{'                                                               // c_new_line // &
                        '    gl_Position = projection * view * vec4(position, 0.0, 1.0);' // c_new_line // &
                        '    vertex_color = color;'                                       // c_new_line // &
                        '}'                                                               // c_new_line

        call glShaderSource(vs, 1, [ c_loc(vertex_shader) ], [ len(vertex_shader, GLint) ])
        call glCompileShader(vs)

        ! Load fragment shader.
        fs = glCreateShader(GL_FRAGMENT_SHADER)

        fragment_shader = '#version 330 core'                             // c_new_line // &
                                                                             c_new_line // &
                          'in  vec3 vertex_color;'                        // c_new_line // &
                          'out vec4 fragment_color;'                      // c_new_line // &
                                                                             c_new_line // &
                          'void main()'                                   // c_new_line // &
                          '{'                                             // c_new_line // &
                          '    fragment_color = vec4(vertex_color, 1.0);' // c_new_line // &
                          '}'                                             // c_new_line

        call glShaderSource(fs, 1, [ c_loc(fragment_shader) ], [ len(fragment_shader, GLint) ])
        call glCompileShader(fs)

        prg = glCreateProgram()
        call glAttachShader(prg, vs)
        call glAttachShader(prg, fs)
        call glLinkProgram(prg)
        call glDeleteShader(vs)
        call glDeleteShader(fs)

        ! Create VAO/VBO of the triangle.
        call glGenVertexArrays(1, vao)
        call glBindVertexArray(vao(1))

        call glGenBuffers(1, vbo)
        call glBindBuffer(GL_ARRAY_BUFFER, vbo(1))

        vertices = [ &
            100.0, 100.0, 1.0, 0.0, 0.0, & ! x, y, red
            300.0, 400.0, 0.0, 1.0, 0.0, & ! x, y, green
            500.0, 100.0, 0.0, 0.0, 1.0  & ! x, y, blue
        ] ! Position (x, y) and colour (r, g, b).

        call glBufferData(GL_ARRAY_BUFFER, c_sizeof(vertices), c_loc(vertices), GL_STATIC_DRAW)

        ! Set position (x, y).
        call glVertexAttribPointer(0,                                             & ! Attribute location.
                                   2,                                             & ! Number of components: x, y.
                                   GL_FLOAT,                                      & ! Type of each component.
                                   GL_FALSE,                                      & ! Do not normalise.
                                   5 * int(c_sizeof(0.0_GLfloat), GLsizei),       & ! Stride: 2 floats per vertex.
                                   c_null_ptr)                                      ! Offset of first x.
        call glEnableVertexAttribArray(0)

        ! Set colour (r, g, b).
        call glVertexAttribPointer(1,                                             & ! Attribute location.
                                   3,                                             & ! Number of components: r, g, b.
                                   GL_FLOAT,                                      & ! Type of each component.
                                   GL_FALSE,                                      & ! Do not normalise.
                                   5 * int(c_sizeof(0.0_GLfloat), GLsizei),       & ! Stride: 2 floats per vertex.
                                   transfer(2 * c_sizeof(0.0_GLfloat), c_null_ptr)) ! Offset of first x.
        call glEnableVertexAttribArray(1)

        call glBindVertexArray(0)

        ! Create 2D orthographic projection matrix.
        call projection_matrix(projection, 0, WINDOW_WIDTH, 0, WINDOW_HEIGHT, -1, 1)

        ! Main loop.
        done     = .false.
        camera_x = 0.0
        camera_y = 0.0

        do while (.not. done)
            ! Event loop.
            do while (sdl_poll_event(event))
                select case (event%type)
                    case (SDL_EVENT_QUIT)
                        done = .true.

                    case (SDL_EVENT_KEY_DOWN)
                        select case (event%key%key)
                            case (SDLK_ESCAPE); done     = .true.
                            case (SDLK_LEFT);   camera_x = camera_x + DX
                            case (SDLK_RIGHT);  camera_x = camera_x - DX
                            case (SDLK_UP);     camera_y = camera_y - DY
                            case (SDLK_DOWN);   camera_y = camera_y + DY
                        end select
                end select
            end do

            ! Update camera.
            call view_matrix(view, camera_x, camera_y)

            ! Set view port and clear buffer.
            res = sdl_get_window_size_in_pixels(window, width, height)
            call glViewport(0, 0, width, height)

            call glClearColor(0.0_GLclampf, 0.0_GLclampf, 0.0_GLclampf, 1.0_GLclampf)
            call glClear(GL_COLOR_BUFFER_BIT)

            ! Render the triangle.
            call glUseProgram(prg)
            call glUniformMatrix4fv(glGetUniformLocation(prg, 'projection' // c_null_char), 1, GL_FALSE, projection)
            call glUniformMatrix4fv(glGetUniformLocation(prg, 'view'       // c_null_char), 1, GL_FALSE, view)

            call glBindVertexArray(vao(1))
            call glDrawArrays(GL_TRIANGLES, 0, 3)

            ! Flush to screen.
            res = sdl_gl_swap_window(window)
        end do
    end block sdl_block

    res = sdl_show_cursor()

    if (c_associated(context)) res = sdl_gl_destroy_context(context)
    if (c_associated(window))  call sdl_destroy_window(window)

    call sdl_quit()
contains
    subroutine projection_matrix(matrix, left, right, bottom, top, near, far)
        !! Creates 2D orthographic projection matrix.
        real(c_float), intent(out) :: matrix(16)
        integer,       intent(in)  :: left
        integer,       intent(in)  :: right
        integer,       intent(in)  :: bottom
        integer,       intent(in)  :: top
        integer,       intent(in)  :: near
        integer,       intent(in)  :: far

        matrix( 1) =  2.0 / real(right - left)
        matrix( 2) =  0.0
        matrix( 3) =  0.0
        matrix( 4) =  0.0
        matrix( 5) =  0.0
        matrix( 6) =  2.0 / real(top - bottom)
        matrix( 7) =  0.0
        matrix( 8) =  0.0
        matrix( 9) =  0.0
        matrix(10) =  0.0
        matrix(11) = -2.0 / real(far - near)
        matrix(12) =  0.0
        matrix(13) = -real(right + left) / real(right - left)
        matrix(14) = -real(top + bottom) / real(top - bottom)
        matrix(15) = -real(far + near)   / real(far - near)
        matrix(16) =  1.0
    end subroutine projection_matrix

    subroutine view_matrix(matrix, x, y)
        !! Creates view matrix from camera position.
        real(c_float), intent(out) :: matrix(16)
        real(c_float), intent(in)  :: x
        real(c_float), intent(in)  :: y

        matrix( 1) = 1.0
        matrix( 2) = 0.0
        matrix( 3) = 0.0
        matrix( 4) = 0.0

        matrix( 5) = 0.0
        matrix( 6) = 1.0
        matrix( 7) = 0.0
        matrix( 8) = 0.0

        matrix( 9) = 0.0
        matrix(10) = 0.0
        matrix(11) = 1.0
        matrix(12) = 0.0

        matrix(13) = -x
        matrix(14) = -y
        matrix(15) =  0.0
        matrix(16) =  1.0
    end subroutine view_matrix

    subroutine output_error(message)
        !! Outputs SDL error message.
        character(*), intent(in) :: message

        print '(a, ": ", a)', trim(message), sdl_get_error()
    end subroutine output_error
end program main
