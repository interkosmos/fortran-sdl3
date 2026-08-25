! Author:  Philipp Engel
! Licence: ISC
program main
    !! Basic cellular automaton, based on the forest-fire model. For more
    !! information, see:
    !!
    !!     <https://rosettacode.org/wiki/Forest_fire>
    !!
    use, intrinsic :: iso_fortran_env, only: real64
    use :: sdl3, to_uint8 => sint32_to_uint8
    implicit none (type, external)

    ! Window dimensions.
    integer, parameter :: WINDOW_WIDTH  = 1000
    integer, parameter :: WINDOW_HEIGHT = 1000

    ! Frame time at 30 FPS.
    real(real64), parameter :: FT = 1.0_real64 / 30

    ! Colour palette indices.
    integer(uint8), parameter :: TILE_NONE = 0_uint8
    integer(uint8), parameter :: TILE_TREE = 1_uint8
    integer(uint8), parameter :: TILE_FIRE = 2_uint8

    type :: screen_type
        !! Keep everything in one derived type for convenience.
        type(c_ptr)             :: window         = c_null_ptr
        type(c_ptr)             :: buffer_surface = c_null_ptr
        type(c_ptr)             :: window_surface = c_null_ptr
        type(c_ptr)             :: palette        = c_null_ptr
        integer(uint8), pointer :: pixels(:, :)   => null()
    end type screen_type

    type :: forest_type
        !! World state and pre-allocated buffers.
        integer                     :: width  = 0
        integer                     :: height = 0
        integer(uint8), allocatable :: world (:, :)
        integer(uint8), allocatable :: buffer(:, :)
        real,           allocatable :: random(:, :)
    end type forest_type

    integer(uint64)   :: t1, t2
    logical           :: done
    real(real64)      :: dt, freq
    type(sdl_event)   :: event
    type(screen_type) :: screen
    type(forest_type) :: forest

    ! Initialise forest.
    call random_init(.false., .false.)
    call forest_init(forest, WINDOW_WIDTH, WINDOW_HEIGHT, 0.05)

    ! Initialise SDL.
    if (.not. screen_init(screen, 'Fortran + SDL3', WINDOW_WIDTH, WINDOW_HEIGHT)) stop

    ! Main loop.
    freq = real(sdl_get_performance_frequency(), real64)
    done = .false.

    do while (.not. done)
        t1 = sdl_get_performance_counter()

        ! Event loop.
        do while (sdl_poll_event(event))
            select case (event%type)
                case (SDL_EVENT_QUIT)
                    done = .true.

                case (SDL_EVENT_KEY_DOWN)
                    if (event%key%key == SDLK_ESCAPE) done = .true.
            end select
        end do

        call forest_next(forest, 0.001, 0.00001)
        call screen_update(screen, forest)

        t2 = sdl_get_performance_counter()
        dt = (t2 - t1) / freq
        if (dt < FT) call sdl_delay(int((FT - dt) * 1000))
    end do

    ! Quit gracefully.
    call screen_destroy(screen)
contains
    subroutine forest_init(forest, width, height, p)
        !! Initialises world and buffer arrays.
        type(forest_type), intent(out) :: forest
        integer,           intent(in)  :: width
        integer,           intent(in)  :: height
        real,              intent(in)  :: p

        integer :: x, y

        forest%width  = width
        forest%height = height

        allocate (forest%world (width, height))
        allocate (forest%buffer(width, height))
        allocate (forest%random(width, height))

        forest%world  = TILE_NONE
        forest%buffer = TILE_NONE

        call random_number(forest%random)

        do concurrent (x = 1:width, y = 1:height)
            if (forest%random(x, y) < p) then
                forest%world(x, y) = TILE_TREE
            end if
        end do
    end subroutine forest_init

    subroutine forest_next(forest, p, f)
        !! Next iteration of the cellular automaton.
        type(forest_type), intent(inout) :: forest
        real,              intent(in)    :: p
        real,              intent(in)    :: f

        integer :: x, y

        call random_number(forest%random)

        do concurrent (x = 1:forest%width, y = 1:forest%height)
            block
                integer :: dx, dy, nx, ny
                logical :: has_fire

                has_fire = .false.

                forest%buffer(x, y) = forest%world(x, y)

                select case (forest%world(x, y))
                    case (TILE_NONE)
                        if (forest%random(x, y) < p) then
                            forest%buffer(x, y) = TILE_TREE
                        end if

                    case (TILE_TREE)
                        loop: &
                        do dy = -1, 1
                            do dx = -1, 1
                                if (dx == 0 .and. dy == 0) cycle

                                nx = 1 + modulo(x + dx - 1, forest%width)
                                ny = 1 + modulo(y + dy - 1, forest%height)

                                if (forest%world(nx, ny) == TILE_FIRE) then
                                    has_fire = .true.
                                    exit loop
                                end if
                            end do
                        end do loop

                        if (forest%random(x, y) < f .or. has_fire) then
                            forest%buffer(x, y) = TILE_FIRE
                        end if

                    case (TILE_FIRE)
                        forest%buffer(x, y) = TILE_NONE
                end select
            end block
        end do

        forest%world = forest%buffer
    end subroutine forest_next

    subroutine output_error(message)
        !! Outputs SDL error message.
        character(*), intent(in) :: message

        print '(a, ": ", a)', trim(message), sdl_get_error()
    end subroutine output_error

    subroutine screen_destroy(screen)
        type(screen_type), intent(inout) :: screen

        screen%pixels => null()

        if (c_associated(screen%buffer_surface)) call sdl_destroy_surface(screen%buffer_surface)
        if (c_associated(screen%window_surface)) call sdl_destroy_surface(screen%window_surface)
        if (c_associated(screen%window))         call sdl_destroy_window(screen%window)

        call sdl_quit()
    end subroutine screen_destroy

    logical function screen_init(screen, title, width, height) result(status)
        type(screen_type), intent(out) :: screen
        character(*),      intent(in)  :: title
        integer,           intent(in)  :: width
        integer,           intent(in)  :: height

        logical                    :: res
        type(sdl_color)            :: colors(3)
        type(sdl_surface), pointer :: buffer

        status = .false.

        ! Initialise SDL.
        if (.not. sdl_init(SDL_INIT_VIDEO)) then
            call output_error('SDL_Init failed')
            return
        end if

        ! Create window.
        screen%window = sdl_create_window(f_c_str(title), width, height, 0_sdl_window_flags)

        if (.not. c_associated(screen%window)) then
            call output_error('SDL_CreateWindow failed')
            return
        end if

        res = sdl_set_window_position(screen%window, SDL_WINDOWPOS_CENTERED, SDL_WINDOWPOS_CENTERED)

        ! Get window surface.
        screen%window_surface = sdl_get_window_surface(screen%window)

        if (.not. c_associated(screen%window_surface)) then
            call output_error('SDL_GetWindowSurface failed')
            return
        end if

        ! Create frame buffer surface.
        screen%buffer_surface = sdl_create_surface(width, height, SDL_PIXELFORMAT_INDEX8)

        if (.not. c_associated(screen%buffer_surface)) then
            call output_error('SDL_CreateSurface failed')
            return
        end if

        ! Create frame buffer palette.
        screen%palette = sdl_create_surface_palette(screen%buffer_surface)

        if (.not. c_associated(screen%palette)) then
            call output_error('SDL_CreateSurfacePalette failed')
            return
        end if

        ! Colours of TILE_NONE, TILE_TREE and TILE_FIRE.
        colors = [ &
            sdl_color(to_uint8(  0), to_uint8(  0), to_uint8(  0), to_uint8(SDL_ALPHA_OPAQUE)), &
            sdl_color(to_uint8( 46), to_uint8(139), to_uint8( 87), to_uint8(SDL_ALPHA_OPAQUE)), &
            sdl_color(to_uint8(255), to_uint8(  0), to_uint8(  0), to_uint8(SDL_ALPHA_OPAQUE))  &
        ]

        if (.not. sdl_set_palette_colors(screen%palette, colors, 0, size(colors))) then
            call output_error('SDL_SetPaletteColors failed')
            return
        end if

        ! Get frame buffer pixels.
        call c_f_pointer(screen%buffer_surface, buffer)
        call c_f_pointer(buffer%pixels, screen%pixels, shape=[ width, height ])

        screen%pixels = TILE_NONE

        status = .true.
    end function screen_init

    subroutine screen_update(screen, forest)
        type(screen_type), intent(in) :: screen
        type(forest_type), intent(in) :: forest

        logical :: res

        ! Copy forest to buffer surface pixels (transposed), then blit buffer surface to window.
        screen%pixels = forest%world

        res = sdl_blit_surface(src=screen%buffer_surface, dst=screen%window_surface)
        res = sdl_update_window_surface(screen%window)
    end subroutine screen_update
end program main
