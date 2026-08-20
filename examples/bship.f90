! Author:  Philipp Engel
! Licence: ISC
program main
    !! Renders the burning ship fractal.
    use, intrinsic :: iso_fortran_env, only: real64
    use :: sdl3
    implicit none (type, external)

    integer, parameter :: WINDOW_WIDTH  = 1024
    integer, parameter :: WINDOW_HEIGHT = 768

    type(c_ptr) :: renderer
    type(c_ptr) :: texture
    type(c_ptr) :: window

    window   = c_null_ptr
    renderer = c_null_ptr
    texture  = c_null_ptr

    sdl_block: block
        logical         :: done, res
        real(real64)    :: mx, my, w
        type(sdl_event) :: event

        ! Initialise SDL.
        if (.not. sdl_init(SDL_INIT_VIDEO)) then
            print '("SDL_Init failed: ", a)', sdl_get_error()
            exit sdl_block
        end if

        ! Create SDL window and renderer.
        res = sdl_create_window_and_renderer(f_c_str('Fortran + SDL3'),   &
                                             WINDOW_WIDTH, WINDOW_HEIGHT, &
                                             0_sdl_window_flags,          &
                                             window, renderer)

        if (.not. res) then
            print '("SDL_CreateWindowAndRenderer failed: ", a)', sdl_get_error()
            exit sdl_block
        end if

        res = sdl_set_window_position(window, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED)

        ! Create SDL texture.
        texture = sdl_create_texture(renderer = renderer,                    &
                                     format   = SDL_PIXELFORMAT_RGBA8888,    &
                                     access   = SDL_TEXTUREACCESS_STREAMING, &
                                     w        = WINDOW_WIDTH,                &
                                     h        = WINDOW_HEIGHT)

        if (.not. c_associated(texture)) then
            print '("SDL_CreateTexture failed: ", a)', sdl_get_error()
            exit sdl_block
        end if

        ! Render fractal to texture.
        mx = -1.800_real64
        my = -0.075_real64
        w  =  0.040_real64

        call fractal(texture, WINDOW_WIDTH, WINDOW_HEIGHT, mx, my, w)

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
    subroutine fractal(texture, width, height, mx, my, w)
        integer, parameter :: NITER  = 255
        integer, parameter :: THRESH = 4

        type(c_ptr),  intent(in) :: texture
        integer,      intent(in) :: width
        integer,      intent(in) :: height
        real(real64), intent(in) :: mx
        real(real64), intent(in) :: my
        real(real64), intent(in) :: w

        integer      :: k, l, x, y
        integer      :: pitch
        real(real64) :: cx, cy, dz, px, py, zx, zy
        type(c_ptr)  :: ptr

        integer(uint32), pointer :: pixels(:)

        if (.not. c_associated(texture)) return

        if (sdl_lock_texture(texture, pixels=ptr, pitch=pitch)) then
            call c_f_pointer(ptr, pixels, shape=[ height * pitch ])

            do x = 0, width - 1
                do y = 0, height - 1
                    zx = 0.0_real64
                    zy = 0.0_real64
                    cx = mx + 2 * w * (x / (width  - 0.5))
                    cy = my + 2 * w * (y / (height - 0.5))

                    do k = 0, NITER
                        px = zx**2 - zy**2 + cx
                        py = 2 * abs(zx * zy) + cy
                        zx = px
                        zy = py
                        dz = zx**2 + zy**2
                        if (dz > THRESH) exit
                    end do

                    if (k < NITER) then
                        l = min(255, int(8 * abs(k + 1 - log(dz) / log(2.0))))
                        call set_pixel(pixels, width, height, x, y, 255, l, 0, 255)
                    end if
                end do
            end do

            pixels => null()
            call sdl_unlock_texture(texture)
        end if
    end subroutine fractal

    pure subroutine set_pixel(pixels, width, height, x, y, r, g, b, a)
        !! Sets RGBA colour of single pixel in texture.
        integer(uint32), intent(inout) :: pixels(0:)
        integer,         intent(in)    :: width, height
        integer,         intent(in)    :: x, y
        integer,         intent(in)    :: r, g, b, a

        integer(uint32) :: rgba

        if (x < 0 .or. x >= width .or. y < 0 .or. y >= height) return
        rgba = ior(ior(ior(shiftl(r, 24), shiftl(g, 16)), shiftl(b, 8)), a)
        pixels(y * width + x) = rgba
    end subroutine set_pixel
end program main
