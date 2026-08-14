! Author:  Philipp Engel
! Licence: ISC
module sdl3_pen
    use :: sdl3_mouse
    use :: sdl3_stdinc
    use :: sdl3_touch
    implicit none (type, external)
    private

    integer, parameter, public :: sdl_pen_id          = uint32 ! SDL_PenID
    integer, parameter, public :: sdl_pen_input_flags = uint32 ! SDL_PenInputFlags

    integer(c_int), parameter, public :: SDL_PEN_MOUSEID = sdl_mouse_id - 2
    integer(c_int), parameter, public :: SDL_PEN_TOUCHID = sdl_touch_id - 2

    integer(c_unsigned), parameter, public :: SDL_PEN_INPUT_DOWN         = shiftl(1_c_unsigned,  0)
    integer(c_unsigned), parameter, public :: SDL_PEN_INPUT_BUTTON_1     = shiftl(1_c_unsigned,  1)
    integer(c_unsigned), parameter, public :: SDL_PEN_INPUT_BUTTON_2     = shiftl(1_c_unsigned,  2)
    integer(c_unsigned), parameter, public :: SDL_PEN_INPUT_BUTTON_3     = shiftl(1_c_unsigned,  3)
    integer(c_unsigned), parameter, public :: SDL_PEN_INPUT_BUTTON_4     = shiftl(1_c_unsigned,  4)
    integer(c_unsigned), parameter, public :: SDL_PEN_INPUT_BUTTON_5     = shiftl(1_c_unsigned,  5)
    integer(c_unsigned), parameter, public :: SDL_PEN_INPUT_ERASER_TIP   = shiftl(1_c_unsigned, 30)
    integer(c_unsigned), parameter, public :: SDL_PEN_INPUT_IN_PROXIMITY = shiftl(1_c_unsigned, 31)

    ! enum SDL_PenAxis
    integer(c_int), parameter, public :: SDL_PEN_AXIS_PRESSURE            = 0
    integer(c_int), parameter, public :: SDL_PEN_AXIS_XTILT               = 1
    integer(c_int), parameter, public :: SDL_PEN_AXIS_YTILT               = 2
    integer(c_int), parameter, public :: SDL_PEN_AXIS_DISTANCE            = 3
    integer(c_int), parameter, public :: SDL_PEN_AXIS_ROTATION            = 4
    integer(c_int), parameter, public :: SDL_PEN_AXIS_SLIDER              = 5
    integer(c_int), parameter, public :: SDL_PEN_AXIS_TANGENTIAL_PRESSURE = 6
    integer(c_int), parameter, public :: SDL_PEN_AXIS_COUNT               = 7

    ! enum SDL_PenDeviceType
    integer(c_int), parameter, public :: SDL_PEN_DEVICE_TYPE_INVALID  = -1
    integer(c_int), parameter, public :: SDL_PEN_DEVICE_TYPE_UNKNOWN  =  0
    integer(c_int), parameter, public :: SDL_PEN_DEVICE_TYPE_DIRECT   =  1
    integer(c_int), parameter, public :: SDL_PEN_DEVICE_TYPE_INDIRECT =  2

    public :: sdl_get_pen_device_type

    interface
        ! SDL_PenDeviceType SDL_GetPenDeviceType(SDL_PenID instance_id)
        function sdl_get_pen_device_type(instance_id) bind(c, name='SDL_GetPenDeviceType')
            import :: c_int, sdl_pen_id
            implicit none
            integer(sdl_pen_id), intent(in), value :: instance_id
            integer(c_int)                         :: sdl_get_pen_device_type
        end function sdl_get_pen_device_type
    end interface
end module sdl3_pen
