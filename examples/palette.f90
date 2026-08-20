! Author:  Philipp Engel
! Licence: ISC
program main
    !! Create surface palette and updates random pixel colours.
    use :: sdl3, to_uint8 => sint32_to_uint8
    implicit none (type, external)

    integer, parameter :: SCALE_FACTOR  = 4
    integer, parameter :: BUFFER_WIDTH  = 320
    integer, parameter :: BUFFER_HEIGHT = 240
    integer, parameter :: WINDOW_WIDTH  = SCALE_FACTOR * BUFFER_WIDTH
    integer, parameter :: WINDOW_HEIGHT = SCALE_FACTOR * BUFFER_HEIGHT
    integer, parameter :: RANDOM_PIXELS = 1000
    integer, parameter :: NCOLORS       = 8

    type(c_ptr) :: buffer_surface, window_surface
    type(c_ptr) :: window

    call random_init(.false., .false.)

    window         = c_null_ptr
    buffer_surface = c_null_ptr
    window_surface = c_null_ptr

    sdl_block: block
        integer         :: c, i, x, y
        logical         :: done
        logical(c_bool) :: res
        type(c_ptr)     :: palette
        type(sdl_color) :: colors(NCOLORS)
        type(sdl_event) :: event

        integer(uint8),    pointer :: pixels(:)
        type(sdl_surface), pointer :: buffer

        ! Initialise SDL.
        if (.not. sdl_init(SDL_INIT_VIDEO)) then
            print '("SDL_Init failed: ", a)', sdl_get_error()
            exit sdl_block
        end if

        ! Create window.
        window = sdl_create_window(f_c_str('Fortran + SDL3'), WINDOW_WIDTH, WINDOW_HEIGHT, 0_sdl_window_flags)

        if (.not. c_associated(window)) then
            print '("SDL_CreateWindow failed: ", a)', sdl_get_error()
            exit sdl_block
        end if

        res = sdl_set_window_position(window, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED)

        ! Get window surface.
        window_surface = sdl_get_window_surface(window)

        if (.not. c_associated(window_surface)) then
            print '("SDL_GetWindowSurface failed: ", a)', sdl_get_error()
            exit sdl_block
        end if

        ! Create frame buffer surface.
        buffer_surface = sdl_create_surface(BUFFER_WIDTH, BUFFER_HEIGHT, SDL_PIXELFORMAT_INDEX8)

        if (.not. c_associated(buffer_surface)) then
            print '("SDL_CreateSurface failed: ", a)', sdl_get_error()
            exit sdl_block
        end if

        ! Create frame buffer palette.
        palette = sdl_create_surface_palette(buffer_surface)

        if (.not. c_associated(palette)) then
            print '("SDL_CreateSurfacePalette failed: ", a)', sdl_get_error()
            exit sdl_block
        end if

        colors = [ &
            sdl_color(to_uint8(  0), to_uint8(  0), to_uint8(  0), to_uint8(255)), &
            sdl_color(to_uint8(255), to_uint8(  0), to_uint8(  0), to_uint8(255)), &
            sdl_color(to_uint8(  0), to_uint8(255), to_uint8(  0), to_uint8(255)), &
            sdl_color(to_uint8(  0), to_uint8(  0), to_uint8(255), to_uint8(255)), &
            sdl_color(to_uint8(255), to_uint8(255), to_uint8(  0), to_uint8(255)), &
            sdl_color(to_uint8(255), to_uint8(  0), to_uint8(255), to_uint8(255)), &
            sdl_color(to_uint8(  0), to_uint8(255), to_uint8(255), to_uint8(255)), &
            sdl_color(to_uint8(255), to_uint8(255), to_uint8(255), to_uint8(255))  &
        ]

        if (.not. sdl_set_palette_colors(palette, colors, 0, NCOLORS)) then
            print '("SDL_SetPaletteColors failed: ", a)', sdl_get_error()
            exit sdl_block
        end if

        ! Get frame buffer pixels. Index of pixels pointer starts at 1. For performance reasons,
        ! surface locking is omitted.
        call c_f_pointer(buffer_surface, buffer)
        call c_f_pointer(buffer%pixels, pixels, shape=[ buffer%pitch * BUFFER_HEIGHT ])

        ! Fill buffer with first palette colour.
        pixels = to_uint8(0)

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

            ! Update pixels to random palette colour (from 1 to 7).
            do i = 1, RANDOM_PIXELS
                x = random_integer(BUFFER_WIDTH)
                y = random_integer(BUFFER_HEIGHT)
                c = random_integer(NCOLORS - 1)
                call set_pixel(pixels, buffer%pitch, x, y, c)
            end do

            ! Blit to window surface.
            res = sdl_blit_surface_scaled(src        = buffer_surface, &
                                          dst        = window_surface, &
                                          dst_rect   = sdl_rect(0, 0, WINDOW_WIDTH, WINDOW_HEIGHT), &
                                          scale_mode = SDL_SCALEMODE_NEAREST)

            if (.not. res) then
                print '("SDL_BlitSurfaceScaled failed: ", a)', sdl_get_error()
                exit sdl_block
            end if

            ! Flush to screen.
            res = sdl_update_window_surface(window)
            call sdl_delay(100)
        end do
    end block sdl_block

    if (c_associated(buffer_surface)) call sdl_destroy_surface(buffer_surface)
    if (c_associated(window_surface)) call sdl_destroy_surface(window_surface)
    if (c_associated(window))         call sdl_destroy_window(window)
    call sdl_quit()
contains
    pure subroutine set_pixel(pixels, pitch, x, y, color)
        integer(uint8), intent(inout) :: pixels(0:)
        integer,        intent(in)    :: pitch
        integer,        intent(in)    :: x, y
        integer,        intent(in)    :: color

        pixels((y - 1) * pitch + (x - 1)) = to_uint8(color)
    end subroutine set_pixel

    integer function random_integer(n) result(i)
        integer, intent(in) :: n

        real :: r

        call random_number(r)
        i = 1 + floor(r * n)
    end function random_integer
end program main
