! Author:  Philipp Engel
! Licence: ISC
program main
    !! Creates an image of a 3-D chaotic attractor, from a paper by Clifford
    !! Pickover called "A Note On Rendering 3-D Strange Attractors" in
    !! Computers and Graphics vol. 12, no. 2. pp. 263-267, 1988.
    !!
    !! Based on the C version `smoke.c` by Paul Haeberli from 1990, published on
    !! the accompanying CD-ROM of the 1995 Japanese book "Indy! Super Power
    !! Guidebook" for SGI IRIX (originally from the SGI FTP server).
    use :: sdl3
    implicit none (type, external)

    integer, parameter :: WINDOW_SIZE = 1200

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
        window = sdl_create_window(f_c_str('Fortran + SDL 3.0'), WINDOW_SIZE, WINDOW_SIZE, flags)

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
        texture = sdl_create_texture(renderer, SDL_PIXELFORMAT_RGBA8888, SDL_TEXTUREACCESS_STREAMING, WINDOW_SIZE, WINDOW_SIZE)

        if (.not. c_associated(texture)) then
            print '("SDL_CreateTexture failed: ", a)', sdl_get_error()
            exit sdl_block
        end if

        call attractor(texture)

        ! Main loop.
        done = .false.

        do while (.not. done)
            ! Event loop.
            do while (sdl_poll_event(event))
                select case (event%type)
                    case (SDL_EVENT_QUIT)
                        ! Window has been closed.
                        done = .true.
                        exit
                    case (SDL_EVENT_KEY_DOWN)
                        ! Escape key pressed.
                        if (event%key%key == SDLK_ESCAPE) done = .true.
                        exit
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
    subroutine attractor(texture)
        !! Draws the attractor to texture.
        integer, parameter :: N     = WINDOW_SIZE * WINDOW_SIZE
        integer, parameter :: NITER = 20 * N

        real, parameter :: A =  2.24
        real, parameter :: B =  0.43
        real, parameter :: C = -0.65
        real, parameter :: D = -2.43
        real, parameter :: E =  1.00

        real, parameter :: XXMAX =  2.0
        real, parameter :: XXMIN = -2.0
        real, parameter :: YYMAX =  2.0
        real, parameter :: YYMIN = -2.0
        real, parameter :: XINC  = WINDOW_SIZE / (XXMAX - XXMIN)
        real, parameter :: YINC  = WINDOW_SIZE / (YYMAX - YYMIN)

        type(c_ptr), intent(in) :: texture

        integer, allocatable     :: buffer(:, :)
        integer(uint32), pointer :: pixels(:)

        integer     :: i, k
        integer     :: ix, iy
        integer     :: pitch
        real        :: x, y, z
        real        :: xx, yy, zz
        type(c_ptr) :: ptr

        if (.not. c_associated(texture)) return

        allocate (buffer(WINDOW_SIZE, WINDOW_SIZE), source=0)

        x = 0.0
        y = 0.0
        z = 0.0

        do i = 1, NITER
            xx = sin(A * y) - z * cos(B * x)
            yy = z * sin(C * x) - cos(D * y)
            zz = E * sin(x)

            x = xx
            y = yy
            z = zz

            ix = 1 + int((xx - XXMIN) * XINC)
            iy = 1 + int((yy - YYMIN) * YINC)

            if (ix > 0 .and. ix <= WINDOW_SIZE .and. iy > 0 .and. iy <= WINDOW_SIZE) then
                k = buffer(ix, iy)
                if (k < 255) buffer(ix, iy) = k + 1
            end if
        end do

        if (sdl_lock_texture(texture, pixels=ptr, pitch=pitch)) then
            call c_f_pointer(ptr, pixels, shape=[ WINDOW_SIZE * pitch ])

            do iy = 1, WINDOW_SIZE
                do ix = 1, WINDOW_SIZE
                    k = buffer(ix, iy)
                    call set_pixel(pixels, WINDOW_SIZE, ix, iy, k, k, k, 255)
                end do
            end do

            pixels => null()
            call sdl_unlock_texture(texture)
        end if
    end subroutine attractor

    pure subroutine set_pixel(pixels, size, x, y, r, g, b, a)
        !! Sets RGBA colour of single pixel in texture.
        integer(uint32), intent(inout) :: pixels(:)
        integer,         intent(in)    :: size
        integer,         intent(in)    :: x
        integer,         intent(in)    :: y
        integer,         intent(in)    :: r
        integer,         intent(in)    :: g
        integer,         intent(in)    :: b
        integer,         intent(in)    :: a

        integer(uint32) :: rgba

        rgba = ior(ior(ior(shiftl(r, 24), shiftl(g, 16)), shiftl(b, 8)), a)
        pixels((y - 1) * size + x) = rgba
    end subroutine set_pixel
end program main
