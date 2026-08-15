! Author:  Philipp Engel
! Licence: ISC
module sdl3_joystick
    !! Auto-generated Fortran 2023 interface bindings to `SDL3/SDL_joystick.h`.
    use :: sdl3_guid
    use :: sdl3_properties
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    integer, parameter, public :: sdl_joystick_id = uint32 !! SDL_JoystickID

    ! enum SDL_JoystickType
    integer(c_int), parameter, public :: SDL_JOYSTICK_TYPE_UNKNOWN      =  0
    integer(c_int), parameter, public :: SDL_JOYSTICK_TYPE_GAMEPAD      =  1
    integer(c_int), parameter, public :: SDL_JOYSTICK_TYPE_WHEEL        =  2
    integer(c_int), parameter, public :: SDL_JOYSTICK_TYPE_ARCADE_STICK =  3
    integer(c_int), parameter, public :: SDL_JOYSTICK_TYPE_FLIGHT_STICK =  4
    integer(c_int), parameter, public :: SDL_JOYSTICK_TYPE_DANCE_PAD    =  5
    integer(c_int), parameter, public :: SDL_JOYSTICK_TYPE_GUITAR       =  6
    integer(c_int), parameter, public :: SDL_JOYSTICK_TYPE_DRUM_KIT     =  7
    integer(c_int), parameter, public :: SDL_JOYSTICK_TYPE_ARCADE_PAD   =  8
    integer(c_int), parameter, public :: SDL_JOYSTICK_TYPE_THROTTLE     =  9
    integer(c_int), parameter, public :: SDL_JOYSTICK_TYPE_COUNT        = 10

    ! enum SDL_JoystickConnectionState
    integer(c_int), parameter, public :: SDL_JOYSTICK_CONNECTION_INVALID  = -1
    integer(c_int), parameter, public :: SDL_JOYSTICK_CONNECTION_UNKNOWN  =  0
    integer(c_int), parameter, public :: SDL_JOYSTICK_CONNECTION_WIRED    =  1
    integer(c_int), parameter, public :: SDL_JOYSTICK_CONNECTION_WIRELESS =  2

    integer(c_int), parameter, public :: SDL_JOYSTICK_AXIS_MAX =  32767
    integer(c_int), parameter, public :: SDL_JOYSTICK_AXIS_MIN = -32768

    ! struct SDL_VirtualJoystickTouchpadDesc
    type, bind(c), public :: sdl_virtual_joystick_touchpad_desc
        integer(uint16) :: nfingers   = 0
        integer(uint16) :: padding(3) = 0
    end type sdl_virtual_joystick_touchpad_desc

    ! struct SDL_VirtualJoystickSensorDesc
    type, bind(c), public :: sdl_virtual_joystick_sensor_desc
        integer(c_int) :: type = 0   !! `SDL_SensorType`.
        real(c_float)  :: rate = 0.0
    end type sdl_virtual_joystick_sensor_desc

    ! struct SDL_VirtualJoystickDesc
    type, bind(c), public :: sdl_virtual_joystick_desc
        integer(uint32)          :: version             = 0
        integer(uint16)          :: type                = 0
        integer(uint16), private :: padding             = 0
        integer(uint16)          :: vendor_id           = 0
        integer(uint16)          :: product_id          = 0
        integer(uint16)          :: naxes               = 0
        integer(uint16)          :: nbuttons            = 0
        integer(uint16)          :: nballs              = 0
        integer(uint16)          :: nhats               = 0
        integer(uint16)          :: ntouchpads          = 0
        integer(uint16)          :: nsensors            = 0
        integer(uint16), private :: padding2(2)         = 0
        integer(uint32)          :: button_mask         = 0
        integer(uint32)          :: axis_mask           = 0
        type(c_ptr)              :: name                = c_null_ptr    !! `const char *name`
        type(c_ptr)              :: touchpads           = c_null_ptr    !! `const SDL_VirtualJoystickTouchpadDesc *touchpads`
        type(c_ptr)              :: sensors             = c_null_ptr    !! `const SDL_VirtualJoystickSensorDesc *sensors`
        type(c_ptr)              :: user_data           = c_null_ptr    !! `void *userdata`
        type(c_funptr)           :: update              = c_null_funptr !! `void (*Update)(void *userdata)`
        type(c_funptr)           :: set_player_index    = c_null_funptr !! `void (*SetPlayerIndex)(void *userdata, int player_index)`
        type(c_funptr)           :: rumble              = c_null_funptr !! `bool (*Rumble)(void *userdata, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble)`
        type(c_funptr)           :: rumble_triggers     = c_null_funptr !! `bool (*RumbleTriggers)(void *userdata, Uint16 left_rumble, Uint16 right_rumble)`
        type(c_funptr)           :: set_led             = c_null_funptr !! `bool (*SetLED)(void *userdata, Uint8 red, Uint8 green, Uint8 blue)`
        type(c_funptr)           :: send_effect         = c_null_funptr !! `bool (*SendEffect)(void *userdata, const void *data, int size)`
        type(c_funptr)           :: set_sensors_enabled = c_null_funptr !! `bool (*SetSensorsEnabled)(void *userdata, bool enabled)`
        type(c_funptr)           :: cleanup             = c_null_funptr !! `void (*Cleanup)(void *userdata)`
    end type sdl_virtual_joystick_desc

    character(*), parameter, public :: SDL_PROP_JOYSTICK_CAP_MONO_LED_BOOLEAN       = 'SDL.joystick.cap.mono_led'
    character(*), parameter, public :: SDL_PROP_JOYSTICK_CAP_RGB_LED_BOOLEAN        = 'SDL.joystick.cap.rgb_led'
    character(*), parameter, public :: SDL_PROP_JOYSTICK_CAP_PLAYER_LED_BOOLEAN     = 'SDL.joystick.cap.player_led'
    character(*), parameter, public :: SDL_PROP_JOYSTICK_CAP_RUMBLE_BOOLEAN         = 'SDL.joystick.cap.rumble'
    character(*), parameter, public :: SDL_PROP_JOYSTICK_CAP_TRIGGER_RUMBLE_BOOLEAN = 'SDL.joystick.cap.trigger_rumble'

    integer(c_unsigned), parameter, public :: SDL_HAT_CENTERED  = int(z'00', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_HAT_UP        = int(z'01', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_HAT_RIGHT     = int(z'02', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_HAT_DOWN      = int(z'04', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_HAT_LEFT      = int(z'08', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_HAT_RIGHTUP   = ior(SDL_HAT_RIGHT, SDL_HAT_UP)
    integer(c_unsigned), parameter, public :: SDL_HAT_RIGHTDOWN = ior(SDL_HAT_RIGHT, SDL_HAT_DOWN)
    integer(c_unsigned), parameter, public :: SDL_HAT_LEFTUP    = ior(SDL_HAT_LEFT,  SDL_HAT_UP)
    integer(c_unsigned), parameter, public :: SDL_HAT_LEFTDOWN  = ior(SDL_HAT_LEFT,  SDL_HAT_DOWN)

    public :: sdl_attach_virtual_joystick
    public :: sdl_close_joystick
    public :: sdl_detach_virtual_joystick
    public :: sdl_get_joystick_axis
    public :: sdl_get_joystick_axis_initial_state
    public :: sdl_get_joystick_ball
    public :: sdl_get_joystick_button
    public :: sdl_get_joystick_connection_state
    public :: sdl_get_joystick_firmware_version
    public :: sdl_get_joystick_from_id
    public :: sdl_get_joystick_from_player_index
    public :: sdl_get_joystick_guid
    public :: sdl_get_joystick_guid_for_id
    public :: sdl_get_joystick_guid_info
    public :: sdl_get_joystick_hat
    public :: sdl_get_joystick_id
    public :: sdl_get_joystick_name_
    public :: sdl_get_joystick_name_for_id_
    public :: sdl_get_joystick_path_
    public :: sdl_get_joystick_path_for_id_
    public :: sdl_get_joystick_player_index
    public :: sdl_get_joystick_player_index_for_id
    public :: sdl_get_joystick_power_info
    public :: sdl_get_joystick_product
    public :: sdl_get_joystick_product_for_id
    public :: sdl_get_joystick_product_version
    public :: sdl_get_joystick_product_version_for_id
    public :: sdl_get_joystick_properties
    public :: sdl_get_joystick_serial_
    public :: sdl_get_joystick_type
    public :: sdl_get_joystick_type_for_id
    public :: sdl_get_joystick_vendor
    public :: sdl_get_joystick_vendor_for_id
    public :: sdl_get_joysticks
    public :: sdl_get_num_joystick_axes
    public :: sdl_get_num_joystick_balls
    public :: sdl_get_num_joystick_buttons
    public :: sdl_get_num_joystick_hats
    public :: sdl_has_joystick
    public :: sdl_is_joystick_virtual
    public :: sdl_joystick_connected
    public :: sdl_joystick_events_enabled
    public :: sdl_lock_joysticks
    public :: sdl_open_joystick
    public :: sdl_rumble_joystick
    public :: sdl_rumble_joystick_triggers
    public :: sdl_send_joystick_effect
    public :: sdl_send_joystick_virtual_sensor_data
    public :: sdl_set_joystick_events_enabled
    public :: sdl_set_joystick_led
    public :: sdl_set_joystick_player_index
    public :: sdl_set_joystick_virtual_axis
    public :: sdl_set_joystick_virtual_ball
    public :: sdl_set_joystick_virtual_button
    public :: sdl_set_joystick_virtual_hat
    public :: sdl_set_joystick_virtual_touchpad
    public :: sdl_try_lock_joysticks
    public :: sdl_unlock_joysticks
    public :: sdl_update_joysticks

    interface
        ! SDL_JoystickID SDL_AttachVirtualJoystick(const SDL_VirtualJoystickDesc *desc)
        function sdl_attach_virtual_joystick(desc) bind(c, name='SDL_AttachVirtualJoystick')
            import :: sdl_joystick_id, sdl_virtual_joystick_desc
            implicit none
            type(sdl_virtual_joystick_desc), intent(in) :: desc
            integer(sdl_joystick_id)                    :: sdl_attach_virtual_joystick
        end function sdl_attach_virtual_joystick

        ! void SDL_CloseJoystick(SDL_Joystick *joystick)
        subroutine sdl_close_joystick(joystick) bind(c, name='SDL_CloseJoystick')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: joystick
        end subroutine sdl_close_joystick

        ! bool SDL_DetachVirtualJoystick(SDL_JoystickID instance_id)
        function sdl_detach_virtual_joystick(instance_id) bind(c, name='SDL_DetachVirtualJoystick')
            import :: c_bool, sdl_joystick_id
            implicit none
            integer(sdl_joystick_id), intent(in), value :: instance_id
            logical(c_bool)                             :: sdl_detach_virtual_joystick
        end function sdl_detach_virtual_joystick

        ! Sint16 SDL_GetJoystickAxis(SDL_Joystick *joystick, int axis)
        function sdl_get_joystick_axis(joystick, axis) bind(c, name='SDL_GetJoystickAxis')
            import :: c_int, c_ptr, sint16
            implicit none
            type(c_ptr),    intent(in), value :: joystick
            integer(c_int), intent(in), value :: axis
            integer(sint16)                   :: sdl_get_joystick_axis
        end function sdl_get_joystick_axis

        ! bool SDL_GetJoystickAxisInitialState(SDL_Joystick *joystick, int axis, Sint16 *state)
        function sdl_get_joystick_axis_initial_state(joystick, axis, state) bind(c, name='SDL_GetJoystickAxisInitialState')
            import :: c_bool, c_int, c_ptr, sint16
            implicit none
            type(c_ptr),     intent(in), value :: joystick
            integer(c_int),  intent(in), value :: axis
            integer(sint16), intent(out)       :: state
            logical(c_bool)                    :: sdl_get_joystick_axis_initial_state
        end function sdl_get_joystick_axis_initial_state

        ! bool SDL_GetJoystickBall(SDL_Joystick *joystick, int ball, int *dx, int *dy)
        function sdl_get_joystick_ball(joystick, ball, dx, dy) bind(c, name='SDL_GetJoystickBall')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: joystick
            integer(c_int), intent(in), value :: ball
            integer(c_int), intent(out)       :: dx
            integer(c_int), intent(out)       :: dy
            logical(c_bool)                   :: sdl_get_joystick_ball
        end function sdl_get_joystick_ball

        ! bool SDL_GetJoystickButton(SDL_Joystick *joystick, int button)
        function sdl_get_joystick_button(joystick, button) bind(c, name='SDL_GetJoystickButton')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: joystick
            integer(c_int), intent(in), value :: button
            logical(c_bool)                   :: sdl_get_joystick_button
        end function sdl_get_joystick_button

        ! SDL_JoystickConnectionState SDL_GetJoystickConnectionState(SDL_Joystick *joystick)
        function sdl_get_joystick_connection_state(joystick) bind(c, name='SDL_GetJoystickConnectionState')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: joystick
            integer(c_int)                 :: sdl_get_joystick_connection_state
        end function sdl_get_joystick_connection_state

        ! Uint16 SDL_GetJoystickFirmwareVersion(SDL_Joystick *joystick)
        function sdl_get_joystick_firmware_version(joystick) bind(c, name='SDL_GetJoystickFirmwareVersion')
            import :: c_ptr, uint16
            implicit none
            type(c_ptr), intent(in), value :: joystick
            integer(uint16)                :: sdl_get_joystick_firmware_version
        end function sdl_get_joystick_firmware_version

        ! SDL_Joystick *SDL_GetJoystickFromID(SDL_JoystickID instance_id)
        function sdl_get_joystick_from_id(instance_id) bind(c, name='SDL_GetJoystickFromID')
            import :: c_ptr, sdl_joystick_id
            implicit none
            integer(sdl_joystick_id), intent(in), value :: instance_id
            type(c_ptr)                                 :: sdl_get_joystick_from_id
        end function sdl_get_joystick_from_id

        ! SDL_Joystick *SDL_GetJoystickFromPlayerIndex(int player_index)
        function sdl_get_joystick_from_player_index(player_index) bind(c, name='SDL_GetJoystickFromPlayerIndex')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(in), value :: player_index
            type(c_ptr)                       :: sdl_get_joystick_from_player_index
        end function sdl_get_joystick_from_player_index

        ! SDL_GUID SDL_GetJoystickGUID(SDL_Joystick *joystick)
        function sdl_get_joystick_guid(joystick) bind(c, name='SDL_GetJoystickGUID')
            import :: c_ptr, sdl_guid
            implicit none
            type(c_ptr), intent(in), value :: joystick
            type(sdl_guid)                 :: sdl_get_joystick_guid
        end function sdl_get_joystick_guid

        ! SDL_GUID SDL_GetJoystickGUIDForID(SDL_JoystickID instance_id)
        function sdl_get_joystick_guid_for_id(instance_id) bind(c, name='SDL_GetJoystickGUIDForID')
            import :: sdl_guid, sdl_joystick_id
            implicit none
            integer(sdl_joystick_id), intent(in), value :: instance_id
            type(sdl_guid)                              :: sdl_get_joystick_guid_for_id
        end function sdl_get_joystick_guid_for_id

        ! void SDL_GetJoystickGUIDInfo(SDL_GUID guid, Uint16 *vendor, Uint16 *product, Uint16 *version, Uint16 *crc16)
        subroutine sdl_get_joystick_guid_info(guid, vendor, product, version, crc16) bind(c, name='SDL_GetJoystickGUIDInfo')
            import :: sdl_guid, uint16
            implicit none
            type(sdl_guid),  intent(in), value :: guid
            integer(uint16), intent(out)       :: vendor
            integer(uint16), intent(out)       :: product
            integer(uint16), intent(out)       :: version
            integer(uint16), intent(out)       :: crc16
        end subroutine sdl_get_joystick_guid_info

        ! Uint8 SDL_GetJoystickHat(SDL_Joystick *joystick, int hat)
        function sdl_get_joystick_hat(joystick, hat) bind(c, name='SDL_GetJoystickHat')
            import :: c_int, c_ptr, uint8
            implicit none
            type(c_ptr),    intent(in), value :: joystick
            integer(c_int), intent(in), value :: hat
            integer(uint8)                    :: sdl_get_joystick_hat
        end function sdl_get_joystick_hat

        ! SDL_JoystickID SDL_GetJoystickID(SDL_Joystick *joystick)
        function sdl_get_joystick_id(joystick) bind(c, name='SDL_GetJoystickID')
            import :: c_ptr, sdl_joystick_id
            implicit none
            type(c_ptr), intent(in), value :: joystick
            integer(sdl_joystick_id)       :: sdl_get_joystick_id
        end function sdl_get_joystick_id

        ! const char *SDL_GetJoystickName(SDL_Joystick *joystick)
        function sdl_get_joystick_name_(joystick) bind(c, name='SDL_GetJoystickName')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: joystick
            type(c_ptr)                    :: sdl_get_joystick_name_
        end function sdl_get_joystick_name_

        ! const char *SDL_GetJoystickNameForID(SDL_JoystickID instance_id)
        function sdl_get_joystick_name_for_id_(instance_id) bind(c, name='SDL_GetJoystickNameForID')
            import :: c_ptr, sdl_joystick_id
            implicit none
            integer(sdl_joystick_id), intent(in), value :: instance_id
            type(c_ptr)                                 :: sdl_get_joystick_name_for_id_
        end function sdl_get_joystick_name_for_id_

        ! const char *SDL_GetJoystickPath(SDL_Joystick *joystick)
        function sdl_get_joystick_path_(joystick) bind(c, name='SDL_GetJoystickPath')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: joystick
            type(c_ptr)                    :: sdl_get_joystick_path_
        end function sdl_get_joystick_path_

        ! const char *SDL_GetJoystickPathForID(SDL_JoystickID instance_id)
        function sdl_get_joystick_path_for_id_(instance_id) bind(c, name='SDL_GetJoystickPathForID')
            import :: c_ptr, sdl_joystick_id
            implicit none
            integer(sdl_joystick_id), intent(in), value :: instance_id
            type(c_ptr)                                 :: sdl_get_joystick_path_for_id_
        end function sdl_get_joystick_path_for_id_

        ! int SDL_GetJoystickPlayerIndex(SDL_Joystick *joystick)
        function sdl_get_joystick_player_index(joystick) bind(c, name='SDL_GetJoystickPlayerIndex')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: joystick
            integer(c_int)                 :: sdl_get_joystick_player_index
        end function sdl_get_joystick_player_index

        ! int SDL_GetJoystickPlayerIndexForID(SDL_JoystickID instance_id)
        function sdl_get_joystick_player_index_for_id(instance_id) bind(c, name='SDL_GetJoystickPlayerIndexForID')
            import :: c_int, sdl_joystick_id
            implicit none
            integer(sdl_joystick_id), intent(in), value :: instance_id
            integer(c_int)                              :: sdl_get_joystick_player_index_for_id
        end function sdl_get_joystick_player_index_for_id

        ! SDL_PowerState SDL_GetJoystickPowerInfo(SDL_Joystick *joystick, int *percent)
        function sdl_get_joystick_power_info(joystick, percent) bind(c, name='SDL_GetJoystickPowerInfo')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: joystick
            integer(c_int), intent(out)       :: percent
            integer(c_int)                    :: sdl_get_joystick_power_info
        end function sdl_get_joystick_power_info

        ! Uint16 SDL_GetJoystickProduct(SDL_Joystick *joystick)
        function sdl_get_joystick_product(joystick) bind(c, name='SDL_GetJoystickProduct')
            import :: c_ptr, uint16
            implicit none
            type(c_ptr), intent(in), value :: joystick
            integer(uint16)                :: sdl_get_joystick_product
        end function sdl_get_joystick_product

        ! Uint16 SDL_GetJoystickProductForID(SDL_JoystickID instance_id)
        function sdl_get_joystick_product_for_id(instance_id) bind(c, name='SDL_GetJoystickProductForID')
            import :: sdl_joystick_id, uint16
            implicit none
            integer(sdl_joystick_id), intent(in), value :: instance_id
            integer(uint16)                             :: sdl_get_joystick_product_for_id
        end function sdl_get_joystick_product_for_id

        ! Uint16 SDL_GetJoystickProductVersion(SDL_Joystick *joystick)
        function sdl_get_joystick_product_version(joystick) bind(c, name='SDL_GetJoystickProductVersion')
            import :: c_ptr, uint16
            implicit none
            type(c_ptr), intent(in), value :: joystick
            integer(uint16)                :: sdl_get_joystick_product_version
        end function sdl_get_joystick_product_version

        ! Uint16 SDL_GetJoystickProductVersionForID(SDL_JoystickID instance_id)
        function sdl_get_joystick_product_version_for_id(instance_id) bind(c, name='SDL_GetJoystickProductVersionForID')
            import :: sdl_joystick_id, uint16
            implicit none
            integer(sdl_joystick_id), intent(in), value :: instance_id
            integer(uint16)                             :: sdl_get_joystick_product_version_for_id
        end function sdl_get_joystick_product_version_for_id

        ! SDL_PropertiesID SDL_GetJoystickProperties(SDL_Joystick *joystick)
        function sdl_get_joystick_properties(joystick) bind(c, name='SDL_GetJoystickProperties')
            import :: c_ptr, sdl_properties_id
            implicit none
            type(c_ptr), intent(in), value :: joystick
            integer(sdl_properties_id)     :: sdl_get_joystick_properties
        end function sdl_get_joystick_properties

        ! const char *SDL_GetJoystickSerial(SDL_Joystick *joystick)
        function sdl_get_joystick_serial_(joystick) bind(c, name='SDL_GetJoystickSerial')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: joystick
            type(c_ptr)                    :: sdl_get_joystick_serial_
        end function sdl_get_joystick_serial_

        ! SDL_JoystickType SDL_GetJoystickType(SDL_Joystick *joystick)
        function sdl_get_joystick_type(joystick) bind(c, name='SDL_GetJoystickType')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: joystick
            integer(c_int)                 :: sdl_get_joystick_type
        end function sdl_get_joystick_type

        ! SDL_JoystickType SDL_GetJoystickTypeForID(SDL_JoystickID instance_id)
        function sdl_get_joystick_type_for_id(instance_id) bind(c, name='SDL_GetJoystickTypeForID')
            import :: c_int, sdl_joystick_id
            implicit none
            integer(sdl_joystick_id), intent(in), value :: instance_id
            integer(c_int)                              :: sdl_get_joystick_type_for_id
        end function sdl_get_joystick_type_for_id

        ! Uint16 SDL_GetJoystickVendor(SDL_Joystick *joystick)
        function sdl_get_joystick_vendor(joystick) bind(c, name='SDL_GetJoystickVendor')
            import :: c_ptr, uint16
            implicit none
            type(c_ptr), intent(in), value :: joystick
            integer(uint16)                :: sdl_get_joystick_vendor
        end function sdl_get_joystick_vendor

        ! Uint16 SDL_GetJoystickVendorForID(SDL_JoystickID instance_id)
        function sdl_get_joystick_vendor_for_id(instance_id) bind(c, name='SDL_GetJoystickVendorForID')
            import :: sdl_joystick_id, uint16
            implicit none
            integer(sdl_joystick_id), intent(in), value :: instance_id
            integer(uint16)                             :: sdl_get_joystick_vendor_for_id
        end function sdl_get_joystick_vendor_for_id

        ! SDL_JoystickID *SDL_GetJoysticks(int *count)
        function sdl_get_joysticks(count) bind(c, name='SDL_GetJoysticks')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(out) :: count
            type(c_ptr)                 :: sdl_get_joysticks
        end function sdl_get_joysticks

        ! int SDL_GetNumJoystickAxes(SDL_Joystick *joystick)
        function sdl_get_num_joystick_axes(joystick) bind(c, name='SDL_GetNumJoystickAxes')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: joystick
            integer(c_int)                 :: sdl_get_num_joystick_axes
        end function sdl_get_num_joystick_axes

        ! int SDL_GetNumJoystickBalls(SDL_Joystick *joystick)
        function sdl_get_num_joystick_balls(joystick) bind(c, name='SDL_GetNumJoystickBalls')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: joystick
            integer(c_int)                 :: sdl_get_num_joystick_balls
        end function sdl_get_num_joystick_balls

        ! int SDL_GetNumJoystickButtons(SDL_Joystick *joystick)
        function sdl_get_num_joystick_buttons(joystick) bind(c, name='SDL_GetNumJoystickButtons')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: joystick
            integer(c_int)                 :: sdl_get_num_joystick_buttons
        end function sdl_get_num_joystick_buttons

        ! int SDL_GetNumJoystickHats(SDL_Joystick *joystick)
        function sdl_get_num_joystick_hats(joystick) bind(c, name='SDL_GetNumJoystickHats')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: joystick
            integer(c_int)                 :: sdl_get_num_joystick_hats
        end function sdl_get_num_joystick_hats

        ! bool SDL_HasJoystick(void)
        function sdl_has_joystick() bind(c, name='SDL_HasJoystick')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_has_joystick
        end function sdl_has_joystick

        ! bool SDL_IsJoystickVirtual(SDL_JoystickID instance_id)
        function sdl_is_joystick_virtual(instance_id) bind(c, name='SDL_IsJoystickVirtual')
            import :: c_bool, sdl_joystick_id
            implicit none
            integer(sdl_joystick_id), intent(in), value :: instance_id
            logical(c_bool)                             :: sdl_is_joystick_virtual
        end function sdl_is_joystick_virtual

        ! bool SDL_JoystickConnected(SDL_Joystick *joystick)
        function sdl_joystick_connected(joystick) bind(c, name='SDL_JoystickConnected')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: joystick
            logical(c_bool)                :: sdl_joystick_connected
        end function sdl_joystick_connected

        ! bool SDL_JoystickEventsEnabled(void)
        function sdl_joystick_events_enabled() bind(c, name='SDL_JoystickEventsEnabled')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_joystick_events_enabled
        end function sdl_joystick_events_enabled

        ! void SDL_LockJoysticks(void)
        subroutine sdl_lock_joysticks() bind(c, name='SDL_LockJoysticks')
        end subroutine sdl_lock_joysticks

        ! SDL_Joystick *SDL_OpenJoystick(SDL_JoystickID instance_id)
        function sdl_open_joystick(instance_id) bind(c, name='SDL_OpenJoystick')
            import :: c_ptr, sdl_joystick_id
            implicit none
            integer(sdl_joystick_id), intent(in), value :: instance_id
            type(c_ptr)                                 :: sdl_open_joystick
        end function sdl_open_joystick

        ! bool SDL_RumbleJoystick(SDL_Joystick *joystick, Uint16 low_frequency_rumble, Uint16 high_frequency_rumble, Uint32 duration_ms)
        function sdl_rumble_joystick(joystick, low_frequency_rumble, high_frequency_rumble, duration_ms) bind(c, name='SDL_RumbleJoystick')
            import :: c_bool, c_ptr, uint16, uint32
            implicit none
            type(c_ptr),     intent(in), value :: joystick
            integer(uint16), intent(in), value :: low_frequency_rumble
            integer(uint16), intent(in), value :: high_frequency_rumble
            integer(uint32), intent(in), value :: duration_ms
            logical(c_bool)                    :: sdl_rumble_joystick
        end function sdl_rumble_joystick

        ! bool SDL_RumbleJoystickTriggers(SDL_Joystick *joystick, Uint16 left_rumble, Uint16 right_rumble, Uint32 duration_ms)
        function sdl_rumble_joystick_triggers(joystick, left_rumble, right_rumble, duration_ms) bind(c, name='SDL_RumbleJoystickTriggers')
            import :: c_bool, c_ptr, uint16, uint32
            implicit none
            type(c_ptr),     intent(in), value :: joystick
            integer(uint16), intent(in), value :: left_rumble
            integer(uint16), intent(in), value :: right_rumble
            integer(uint32), intent(in), value :: duration_ms
            logical(c_bool)                    :: sdl_rumble_joystick_triggers
        end function sdl_rumble_joystick_triggers

        ! bool SDL_SendJoystickEffect(SDL_Joystick *joystick, const void *data, int size)
        function sdl_send_joystick_effect(joystick, data, size) bind(c, name='SDL_SendJoystickEffect')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: joystick
            type(c_ptr),    intent(in), value :: data
            integer(c_int), intent(in), value :: size
            logical(c_bool)                   :: sdl_send_joystick_effect
        end function sdl_send_joystick_effect

        ! bool SDL_SendJoystickVirtualSensorData(SDL_Joystick *joystick, SDL_SensorType type, Uint64 sensor_timestamp, const float *data, int num_values)
        function sdl_send_joystick_virtual_sensor_data(joystick, type, sensor_timestamp, data, num_values) bind(c, name='SDL_SendJoystickVirtualSensorData')
            import :: c_bool, c_float, c_int, c_ptr, uint64
            implicit none
            type(c_ptr),     intent(in), value :: joystick
            integer(c_int),  intent(in), value :: type
            integer(uint64), intent(in), value :: sensor_timestamp
            real(c_float),   intent(in)        :: data
            integer(c_int),  intent(in), value :: num_values
            logical(c_bool)                    :: sdl_send_joystick_virtual_sensor_data
        end function sdl_send_joystick_virtual_sensor_data

        ! void SDL_SetJoystickEventsEnabled(bool enabled)
        subroutine sdl_set_joystick_events_enabled(enabled) bind(c, name='SDL_SetJoystickEventsEnabled')
            import :: c_bool
            implicit none
            logical(c_bool), intent(in), value :: enabled
        end subroutine sdl_set_joystick_events_enabled

        ! bool SDL_SetJoystickLED(SDL_Joystick *joystick, Uint8 red, Uint8 green, Uint8 blue)
        function sdl_set_joystick_led(joystick, red, green, blue) bind(c, name='SDL_SetJoystickLED')
            import :: c_bool, c_ptr, uint8
            implicit none
            type(c_ptr),    intent(in), value :: joystick
            integer(uint8), intent(in), value :: red
            integer(uint8), intent(in), value :: green
            integer(uint8), intent(in), value :: blue
            logical(c_bool)                   :: sdl_set_joystick_led
        end function sdl_set_joystick_led

        ! bool SDL_SetJoystickPlayerIndex(SDL_Joystick *joystick, int player_index)
        function sdl_set_joystick_player_index(joystick, player_index) bind(c, name='SDL_SetJoystickPlayerIndex')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: joystick
            integer(c_int), intent(in), value :: player_index
            logical(c_bool)                   :: sdl_set_joystick_player_index
        end function sdl_set_joystick_player_index

        ! bool SDL_SetJoystickVirtualAxis(SDL_Joystick *joystick, int axis, Sint16 value)
        function sdl_set_joystick_virtual_axis(joystick, axis, value) bind(c, name='SDL_SetJoystickVirtualAxis')
            import :: c_bool, c_int, c_ptr, sint16
            implicit none
            type(c_ptr),     intent(in), value :: joystick
            integer(c_int),  intent(in), value :: axis
            integer(sint16), intent(in), value :: value
            logical(c_bool)                    :: sdl_set_joystick_virtual_axis
        end function sdl_set_joystick_virtual_axis

        ! bool SDL_SetJoystickVirtualBall(SDL_Joystick *joystick, int ball, Sint16 xrel, Sint16 yrel)
        function sdl_set_joystick_virtual_ball(joystick, ball, xrel, yrel) bind(c, name='SDL_SetJoystickVirtualBall')
            import :: c_bool, c_int, c_ptr, sint16
            implicit none
            type(c_ptr),     intent(in), value :: joystick
            integer(c_int),  intent(in), value :: ball
            integer(sint16), intent(in), value :: xrel
            integer(sint16), intent(in), value :: yrel
            logical(c_bool)                    :: sdl_set_joystick_virtual_ball
        end function sdl_set_joystick_virtual_ball

        ! bool SDL_SetJoystickVirtualButton(SDL_Joystick *joystick, int button, bool down)
        function sdl_set_joystick_virtual_button(joystick, button, down) bind(c, name='SDL_SetJoystickVirtualButton')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: joystick
            integer(c_int),  intent(in), value :: button
            logical(c_bool), intent(in), value :: down
            logical(c_bool)                    :: sdl_set_joystick_virtual_button
        end function sdl_set_joystick_virtual_button

        ! bool SDL_SetJoystickVirtualHat(SDL_Joystick *joystick, int hat, Uint8 value)
        function sdl_set_joystick_virtual_hat(joystick, hat, value) bind(c, name='SDL_SetJoystickVirtualHat')
            import :: c_bool, c_int, c_ptr, uint8
            implicit none
            type(c_ptr),    intent(in), value :: joystick
            integer(c_int), intent(in), value :: hat
            integer(uint8), intent(in), value :: value
            logical(c_bool)                   :: sdl_set_joystick_virtual_hat
        end function sdl_set_joystick_virtual_hat

        ! bool SDL_SetJoystickVirtualTouchpad(SDL_Joystick *joystick, int touchpad, int finger, bool down, float x, float y, float pressure)
        function sdl_set_joystick_virtual_touchpad(joystick, touchpad, finger, down, x, y, pressure) bind(c, name='SDL_SetJoystickVirtualTouchpad')
            import :: c_bool, c_float, c_int, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: joystick
            integer(c_int),  intent(in), value :: touchpad
            integer(c_int),  intent(in), value :: finger
            logical(c_bool), intent(in), value :: down
            real(c_float),   intent(in), value :: x
            real(c_float),   intent(in), value :: y
            real(c_float),   intent(in), value :: pressure
            logical(c_bool)                    :: sdl_set_joystick_virtual_touchpad
        end function sdl_set_joystick_virtual_touchpad

        ! bool SDL_TryLockJoysticks(void)
        function sdl_try_lock_joysticks() bind(c, name='SDL_TryLockJoysticks')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_try_lock_joysticks
        end function sdl_try_lock_joysticks

        ! void SDL_UnlockJoysticks(void)
        subroutine sdl_unlock_joysticks() bind(c, name='SDL_UnlockJoysticks')
        end subroutine sdl_unlock_joysticks

        ! void SDL_UpdateJoysticks(void)
        subroutine sdl_update_joysticks() bind(c, name='SDL_UpdateJoysticks')
        end subroutine sdl_update_joysticks
    end interface

    public :: sdl_get_joystick_name
    public :: sdl_get_joystick_name_for_id
    public :: sdl_get_joystick_path
    public :: sdl_get_joystick_path_for_id
    public :: sdl_get_joystick_serial
contains
    function sdl_get_joystick_name(joystick) result(str)
        type(c_ptr), intent(in)   :: joystick
        character(:), allocatable :: str

        type(c_ptr) :: ptr

        ptr = sdl_get_joystick_name_(joystick)
        call c_f_str_ptr(ptr, str)
    end function sdl_get_joystick_name

    function sdl_get_joystick_name_for_id(instance_id) result(str)
        integer(sdl_joystick_id), intent(in) :: instance_id
        character(:), allocatable            :: str

        type(c_ptr) :: ptr

        ptr = sdl_get_joystick_name_for_id_(instance_id)
        call c_f_str_ptr(ptr, str)
    end function sdl_get_joystick_name_for_id

    function sdl_get_joystick_path(joystick) result(str)
        type(c_ptr), intent(in)   :: joystick
        character(:), allocatable :: str

        type(c_ptr) :: ptr

        ptr = sdl_get_joystick_path_(joystick)
        call c_f_str_ptr(ptr, str)
    end function sdl_get_joystick_path

    function sdl_get_joystick_path_for_id(instance_id) result(str)
        integer(sdl_joystick_id), intent(in) :: instance_id
        character(:), allocatable            :: str

        type(c_ptr) :: ptr

        ptr = sdl_get_joystick_path_for_id_(instance_id)
        call c_f_str_ptr(ptr, str)
    end function sdl_get_joystick_path_for_id

    function sdl_get_joystick_serial(joystick) result(str)
        type(c_ptr), intent(in)   :: joystick
        character(:), allocatable :: str

        type(c_ptr) :: ptr

        ptr = sdl_get_joystick_serial_(joystick)
        call c_f_str_ptr(ptr, str)
    end function sdl_get_joystick_serial
end module sdl3_joystick
