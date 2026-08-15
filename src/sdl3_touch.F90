! Author:  Philipp Engel
! Licence: ISC
module sdl3_touch
    !! Auto-generated Fortran 2023 interface bindings to `SDL3/SDL_touch.h`.
    use :: sdl3_mouse
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    integer, parameter, public :: sdl_touch_id  = uint64 !! SDL_TouchID
    integer, parameter, public :: sdl_finger_id = uint64 !! SDL_FingerID

    ! enum SDL_TouchDeviceType
    integer(c_int), parameter, public :: SDL_TOUCH_DEVICE_INVALID           = -1
    integer(c_int), parameter, public :: SDL_TOUCH_DEVICE_DIRECT            =  0
    integer(c_int), parameter, public :: SDL_TOUCH_DEVICE_INDIRECT_ABSOLUTE =  1
    integer(c_int), parameter, public :: SDL_TOUCH_DEVICE_INDIRECT_RELATIVE =  2

    ! struct SDL_Finger
    type, bind(c), public :: sdl_finger
        integer(sdl_finger_id) :: id       = 0
        real(c_float)          :: x        = 0.0
        real(c_float)          :: y        = 0.0
        real(c_float)          :: pressure = 0.0
    end type sdl_finger

    integer(c_int), parameter, public :: SDL_TOUCH_MOUSEID = sdl_mouse_id - 1
    integer(c_int), parameter, public :: SDL_MOUSE_TOUCHID = sdl_touch_id - 1

    public :: sdl_get_touch_device_name_
    public :: sdl_get_touch_device_type
    public :: sdl_get_touch_devices
    public :: sdl_get_touch_fingers

    interface
        ! const char *SDL_GetTouchDeviceName(SDL_TouchID touchID)
        function sdl_get_touch_device_name_(touch_id) bind(c, name='SDL_GetTouchDeviceName')
            import :: c_ptr, sdl_touch_id
            implicit none
            integer(sdl_touch_id), intent(in), value :: touch_id
            type(c_ptr)                              :: sdl_get_touch_device_name_
        end function sdl_get_touch_device_name_

        ! SDL_TouchDeviceType SDL_GetTouchDeviceType(SDL_TouchID touchID)
        function sdl_get_touch_device_type(touch_id) bind(c, name='SDL_GetTouchDeviceType')
            import :: c_int, sdl_touch_id
            implicit none
            integer(sdl_touch_id), intent(in), value :: touch_id
            integer(c_int)                           :: sdl_get_touch_device_type
        end function sdl_get_touch_device_type

        ! SDL_TouchID *SDL_GetTouchDevices(int *count)
        function sdl_get_touch_devices(count) bind(c, name='SDL_GetTouchDevices')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(out) :: count
            type(c_ptr)                 :: sdl_get_touch_devices
        end function sdl_get_touch_devices

        ! SDL_Finger **SDL_GetTouchFingers(SDL_TouchID touchID, int *count)
        function sdl_get_touch_fingers(touch_id, count) bind(c, name='SDL_GetTouchFingers')
            import :: c_int, c_ptr, sdl_touch_id
            implicit none
            integer(sdl_touch_id), intent(in), value :: touch_id
            integer(c_int),        intent(out)       :: count
            type(c_ptr)                              :: sdl_get_touch_fingers
        end function sdl_get_touch_fingers
    end interface

    public :: sdl_get_touch_device_name
contains
    function sdl_get_touch_device_name(touch_id) result(str)
        integer(sdl_touch_id), intent(in) :: touch_id
        character(:), allocatable         :: str

        type(c_ptr) :: ptr

        ptr = sdl_get_touch_device_name_(touch_id)
        call c_f_str_ptr(ptr, str)
    end function sdl_get_touch_device_name
end module sdl3_touch
