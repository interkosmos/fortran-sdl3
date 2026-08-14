! Author:  Philipp Engel
! Licence: ISC
module sdl3_events
    use :: sdl3_audio
    use :: sdl3_camera
    use :: sdl3_joystick
    use :: sdl3_keyboard
    use :: sdl3_keycode
    use :: sdl3_mouse
    use :: sdl3_notification
    use :: sdl3_pen
    use :: sdl3_power
    use :: sdl3_sensor
    use :: sdl3_stdinc
    use :: sdl3_touch
    use :: sdl3_video
    implicit none (type, external)
    private

    integer, parameter, public :: sdl_event_type = c_int

    ! enum SDL_EventType
    integer(sdl_event_type), parameter, public :: SDL_EVENT_FIRST                         = 0            !! Unused (do not remove).
    ! Application events.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_QUIT                          = int(z'0100') !! User-requested quit.
    ! These application events have special meaning on iOS and Android.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_TERMINATING                   = int(z'0101') !! The application is being terminated by the OS. This event must be handled in a callback set with SDL_AddEventWatch().
    integer(sdl_event_type), parameter, public :: SDL_EVENT_LOW_MEMORY                    = int(z'0102') !! The application is low on memory free memory if possible. This event must be handled in a callback set with SDL_AddEventWatch().
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WILL_ENTER_BACKGROUND         = int(z'0103') !! The application is about to enter the background. This event must be handled in a callback set with SDL_AddEventWatch().
    integer(sdl_event_type), parameter, public :: SDL_EVENT_DID_ENTER_BACKGROUND          = int(z'0104') !! The application did enter the background and may not get CPU for some time. This event must be handled in a callback set with SDL_AddEventWatch().
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WILL_ENTER_FOREGROUND         = int(z'0105') !! The application is about to enter the foreground. This event must be handled in a callback set with SDL_AddEventWatch().
    integer(sdl_event_type), parameter, public :: SDL_EVENT_DID_ENTER_FOREGROUND          = int(z'0106') !! The application is now interactive. This event must be handled in a callback set with SDL_AddEventWatch().
    integer(sdl_event_type), parameter, public :: SDL_EVENT_LOCALE_CHANGED                = int(z'0107') !! The user's locale preferences have changed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_SYSTEM_THEME_CHANGED          = int(z'0108') !! The system theme changed.
    ! Display events.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_DISPLAY_ORIENTATION           = int(z'0151') !! Display orientation has changed to data1.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_DISPLAY_ADDED                 = int(z'0152') !! Display has been added to the system.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_DISPLAY_REMOVED               = int(z'0153') !! Display has been removed from the system.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_DISPLAY_MOVED                 = int(z'0154') !! Display has changed position.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_DISPLAY_DESKTOP_MODE_CHANGED  = int(z'0155') !! Display has changed desktop mode.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_DISPLAY_CURRENT_MODE_CHANGED  = int(z'0156') !! Display has changed current mode.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_DISPLAY_CONTENT_SCALE_CHANGED = int(z'0157') !! Display has changed content scale.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_DISPLAY_USABLE_BOUNDS_CHANGED = int(z'0158') !! Display has changed usable bounds.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_DISPLAY_FIRST                 = SDL_EVENT_DISPLAY_ORIENTATION
    integer(sdl_event_type), parameter, public :: SDL_EVENT_DISPLAY_LAST                  = SDL_EVENT_DISPLAY_USABLE_BOUNDS_CHANGED
    ! Window events.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_SHOWN                  = int(z'0202') !! Window has been shown.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_HIDDEN                 = int(z'0203') !! Window has been hidden.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_EXPOSED                = int(z'0204') !! Window has been exposed and should be redrawn and can be redrawn directly from event watchers for this event.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_MOVED                  = int(z'0205') !! Window has been moved to data1 data2.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_RESIZED                = int(z'0206') !! Window has been resized to data1xdata2.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_PIXEL_SIZE_CHANGED     = int(z'0207') !! The pixel size of the window has changed to data1xdata2.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_METAL_VIEW_RESIZED     = int(z'0208') !! The pixel size of a Metal view associated with the window has changed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_MINIMIZED              = int(z'0209') !! Window has been minimized.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_MAXIMIZED              = int(z'020A') !! Window has been maximized.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_RESTORED               = int(z'020B') !! Window has been restored to normal size and position.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_MOUSE_ENTER            = int(z'020C') !! Window has gained mouse focus.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_MOUSE_LEAVE            = int(z'020D') !! Window has lost mouse focus.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_FOCUS_GAINED           = int(z'020E') !! Window has gained keyboard focus.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_FOCUS_LOST             = int(z'020F') !! Window has lost keyboard focus.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_CLOSE_REQUESTED        = int(z'0210') !! The window manager requests that the window be closed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_HIT_TEST               = int(z'0211') !! Window had a hit test that wasn't SDL_HITTEST_NORMAL.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_ICCPROF_CHANGED        = int(z'0212') !! The window's ICC profile has changed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_DISPLAY_CHANGED        = int(z'0213') !! Window has been moved to display data1.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_DISPLAY_SCALE_CHANGED  = int(z'0214') !! Window display scale has been changed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_SAFE_AREA_CHANGED      = int(z'0215') !! The window safe area has been changed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_OCCLUDED               = int(z'0216') !! The window has been occluded.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_ENTER_FULLSCREEN       = int(z'0217') !! The window has entered fullscreen mode.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_LEAVE_FULLSCREEN       = int(z'0218') !! The window has left fullscreen mode.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_DESTROYED              = int(z'0219') !! The window with the associated ID is being or has been destroyed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_HDR_STATE_CHANGED      = int(z'021A') !! Window HDR properties have changed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_SETTINGS_CHANGED       = int(z'021B') !! Window settings have changed (on visionOS).
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_FIRST                  = SDL_EVENT_WINDOW_SHOWN
    integer(sdl_event_type), parameter, public :: SDL_EVENT_WINDOW_LAST                   = SDL_EVENT_WINDOW_SETTINGS_CHANGED
    ! Keyboard events.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_KEY_DOWN                      = int(z'0300') !! Key pressed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_KEY_UP                        = int(z'0301') !! Key released.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_TEXT_EDITING                  = int(z'0302') !! Keyboard text editing (composition).
    integer(sdl_event_type), parameter, public :: SDL_EVENT_TEXT_INPUT                    = int(z'0303') !! Keyboard text input.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_KEYMAP_CHANGED                = int(z'0304') !! Keymap changed due to a system event such as an input language or keyboard layout change.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_KEYBOARD_ADDED                = int(z'0305') !! A new keyboard has been inserted into the system.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_KEYBOARD_REMOVED              = int(z'0306') !! A keyboard has been removed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_TEXT_EDITING_CANDIDATES       = int(z'0307') !! Keyboard text editing candidates.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_SCREEN_KEYBOARD_SHOWN         = int(z'0308') !! The on-screen keyboard has been shown.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_SCREEN_KEYBOARD_HIDDEN        = int(z'0309') !! The on-screen keyboard has been hidden.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_KEYBOARD_FIRST                = SDL_EVENT_KEY_DOWN
    integer(sdl_event_type), parameter, public :: SDL_EVENT_KEYBOARD_LAST                 = SDL_EVENT_SCREEN_KEYBOARD_HIDDEN
    integer(sdl_event_type), parameter, public :: SDL_EVENT_MOUSE_MOTION                  = int(z'0400') !! Mouse moved.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_MOUSE_BUTTON_DOWN             = int(z'0401') !! Mouse button pressed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_MOUSE_BUTTON_UP               = int(z'0402') !! Mouse button released.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_MOUSE_WHEEL                   = int(z'0403') !! Mouse wheel motion.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_MOUSE_ADDED                   = int(z'0404') !! A new mouse has been inserted into the system.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_MOUSE_REMOVED                 = int(z'0405') !! A mouse has been removed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_MOUSE_FIRST                   = SDL_EVENT_MOUSE_MOTION
    integer(sdl_event_type), parameter, public :: SDL_EVENT_MOUSE_LAST                    = SDL_EVENT_MOUSE_REMOVED
    ! Joystick events.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_JOYSTICK_AXIS_MOTION          = int(z'0600') !! Joystick axis motion.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_JOYSTICK_BALL_MOTION          = int(z'0601') !! Joystick trackball motion.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_JOYSTICK_HAT_MOTION           = int(z'0602') !! Joystick hat position change.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_JOYSTICK_BUTTON_DOWN          = int(z'0603') !! Joystick button pressed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_JOYSTICK_BUTTON_UP            = int(z'0604') !! Joystick button released.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_JOYSTICK_ADDED                = int(z'0605') !! A new joystick has been inserted into the system.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_JOYSTICK_REMOVED              = int(z'0606') !! An opened joystick has been removed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_JOYSTICK_BATTERY_UPDATED      = int(z'0607') !! Joystick battery level change.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_JOYSTICK_UPDATE_COMPLETE      = int(z'0608') !! Joystick update is complete.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_JOYSTICK_FIRST                = SDL_EVENT_JOYSTICK_AXIS_MOTION
    integer(sdl_event_type), parameter, public :: SDL_EVENT_JOYSTICK_LAST                 = SDL_EVENT_JOYSTICK_UPDATE_COMPLETE
    ! Gamepad events.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_GAMEPAD_AXIS_MOTION           = int(z'0650') !! Gamepad axis motion.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_GAMEPAD_BUTTON_DOWN           = int(z'0651') !! Gamepad button pressed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_GAMEPAD_BUTTON_UP             = int(z'0652') !! Gamepad button released.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_GAMEPAD_ADDED                 = int(z'0653') !! A new gamepad has been inserted into the system.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_GAMEPAD_REMOVED               = int(z'0654') !! A gamepad has been removed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_GAMEPAD_REMAPPED              = int(z'0655') !! The gamepad mapping was updated.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_GAMEPAD_TOUCHPAD_DOWN         = int(z'0656') !! Gamepad touchpad was touched.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_GAMEPAD_TOUCHPAD_MOTION       = int(z'0657') !! Gamepad touchpad finger was moved.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_GAMEPAD_TOUCHPAD_UP           = int(z'0658') !! Gamepad touchpad finger was lifted.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_GAMEPAD_SENSOR_UPDATE         = int(z'0659') !! Gamepad sensor was updated.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_GAMEPAD_UPDATE_COMPLETE       = int(z'065A') !! Gamepad update is complete.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_GAMEPAD_STEAM_HANDLE_UPDATED  = int(z'065B') !! Gamepad Steam handle has changed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_GAMEPAD_CAPSENSE_TOUCH        = int(z'065C') !! Gamepad capsense was touched.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_GAMEPAD_CAPSENSE_RELEASE      = int(z'065D') !! Gamepad capsense was released.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_GAMEPAD_FIRST                 = SDL_EVENT_GAMEPAD_AXIS_MOTION
    integer(sdl_event_type), parameter, public :: SDL_EVENT_GAMEPAD_LAST                  = SDL_EVENT_GAMEPAD_CAPSENSE_RELEASE
    ! Touch events.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_FINGER_DOWN                   = int(z'0700')
    integer(sdl_event_type), parameter, public :: SDL_EVENT_FINGER_UP                     = int(z'0701')
    integer(sdl_event_type), parameter, public :: SDL_EVENT_FINGER_MOTION                 = int(z'0702')
    integer(sdl_event_type), parameter, public :: SDL_EVENT_FINGER_CANCELED               = int(z'0703')
    integer(sdl_event_type), parameter, public :: SDL_EVENT_FINGER_FIRST                  = SDL_EVENT_FINGER_DOWN
    integer(sdl_event_type), parameter, public :: SDL_EVENT_FINGER_LAST                   = SDL_EVENT_FINGER_CANCELED
    ! Pinch events.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_PINCH_BEGIN                   = int(z'0710') !! Pinch gesture started.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_PINCH_UPDATE                  = int(z'0711') !! Pinch gesture updated.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_PINCH_END                     = int(z'0712') !! Pinch gesture ended.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_PINCH_FIRST                   = SDL_EVENT_PINCH_BEGIN
    integer(sdl_event_type), parameter, public :: SDL_EVENT_PINCH_LAST                    = SDL_EVENT_PINCH_END
    ! Clipboard events.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_CLIPBOARD_UPDATE              = int(z'0900') !! The clipboard changed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_CLIPBOARD_FIRST               = SDL_EVENT_CLIPBOARD_UPDATE
    integer(sdl_event_type), parameter, public :: SDL_EVENT_CLIPBOARD_LAST                = SDL_EVENT_CLIPBOARD_UPDATE
    ! Drag and drop events.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_DROP_FILE                     = int(z'1000') !! The system requests a file open.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_DROP_TEXT                     = int(z'1001') !! text/plain drag-and-drop event.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_DROP_BEGIN                    = int(z'1002') !! A new set of drops is beginning (NULL filename).
    integer(sdl_event_type), parameter, public :: SDL_EVENT_DROP_COMPLETE                 = int(z'1003') !! Current set of drops is now complete (NULL filename).
    integer(sdl_event_type), parameter, public :: SDL_EVENT_DROP_POSITION                 = int(z'1004') !! Position while moving over the window.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_DROP_FIRST                    = SDL_EVENT_DROP_FILE
    integer(sdl_event_type), parameter, public :: SDL_EVENT_DROP_LAST                     = SDL_EVENT_DROP_POSITION
    ! Audio hotplug events.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_AUDIO_DEVICE_ADDED            = int(z'1100') !! A new audio device is available.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_AUDIO_DEVICE_REMOVED          = int(z'1101') !! An audio device has been removed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_AUDIO_DEVICE_FORMAT_CHANGED   = int(z'1102') !! An audio device's format has been changed by the system.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_AUDIO_DEVICE_FIRST            = SDL_EVENT_AUDIO_DEVICE_ADDED
    integer(sdl_event_type), parameter, public :: SDL_EVENT_AUDIO_DEVICE_LAST             = SDL_EVENT_AUDIO_DEVICE_FORMAT_CHANGED
    ! Sensor events.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_SENSOR_UPDATE                 = int(z'1200') !! A sensor was updated.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_SENSOR_FIRST                  = SDL_EVENT_SENSOR_UPDATE
    integer(sdl_event_type), parameter, public :: SDL_EVENT_SENSOR_LAST                   = SDL_EVENT_SENSOR_UPDATE
    ! Pressure-sensitive pen events.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_PEN_PROXIMITY_IN              = int(z'1300') !! Pressure-sensitive pen has become available.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_PEN_PROXIMITY_OUT             = int(z'1301') !! Pressure-sensitive pen has become unavailable.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_PEN_DOWN                      = int(z'1302') !! Pressure-sensitive pen touched drawing surface.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_PEN_UP                        = int(z'1303') !! Pressure-sensitive pen stopped touching drawing surface.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_PEN_BUTTON_DOWN               = int(z'1304') !! Pressure-sensitive pen button pressed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_PEN_BUTTON_UP                 = int(z'1305') !! Pressure-sensitive pen button released.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_PEN_MOTION                    = int(z'1306') !! Pressure-sensitive pen is moving on the tablet.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_PEN_AXIS                      = int(z'1307') !! Pressure-sensitive pen angle/pressure/etc changed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_PEN_FIRST                     = SDL_EVENT_PEN_PROXIMITY_IN
    integer(sdl_event_type), parameter, public :: SDL_EVENT_PEN_LAST                      = SDL_EVENT_PEN_AXIS
    ! Camera hotplug events.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_CAMERA_DEVICE_ADDED           = int(z'1400') !! A new camera device is available.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_CAMERA_DEVICE_REMOVED         = int(z'1401') !! A camera device has been removed.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_CAMERA_DEVICE_APPROVED        = int(z'1402') !! A camera device has been approved for use by the user.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_CAMERA_DEVICE_DENIED          = int(z'1403') !! A camera device has been denied for use by the user.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_CAMERA_DEVICE_FIRST           = SDL_EVENT_CAMERA_DEVICE_ADDED
    integer(sdl_event_type), parameter, public :: SDL_EVENT_CAMERA_DEVICE_LAST            = SDL_EVENT_CAMERA_DEVICE_DENIED
    ! Notification events.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_NOTIFICATION_ACTION_INVOKED   = int(z'1500') !! A user response to a system notification was received.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_NOTIFICATION_FIRST            = SDL_EVENT_NOTIFICATION_ACTION_INVOKED
    integer(sdl_event_type), parameter, public :: SDL_EVENT_NOTIFICATION_LAST             = SDL_EVENT_NOTIFICATION_ACTION_INVOKED
    ! Render events.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_RENDER_TARGETS_RESET          = int(z'2000') !! The render targets have been reset and their contents need to be updated.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_RENDER_DEVICE_RESET           = int(z'2001') !! The device has been reset and all textures need to be recreated.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_RENDER_DEVICE_LOST            = int(z'2002') !! The device has been lost and can't be recovered.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_RENDER_FIRST                  = SDL_EVENT_RENDER_TARGETS_RESET
    integer(sdl_event_type), parameter, public :: SDL_EVENT_RENDER_LAST                   = SDL_EVENT_RENDER_DEVICE_LOST
    ! Reserved events for private platforms.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_PRIVATE0                      = int(z'4000')
    integer(sdl_event_type), parameter, public :: SDL_EVENT_PRIVATE1                      = int(z'4001')
    integer(sdl_event_type), parameter, public :: SDL_EVENT_PRIVATE2                      = int(z'4002')
    integer(sdl_event_type), parameter, public :: SDL_EVENT_PRIVATE3                      = int(z'4003')
    ! Internal events.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_POLL_SENTINEL                 = int(z'7F00')     !! Signals the end of an event poll cycle.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_USER                          = int(z'8000')     !! Events SDL_EVENT_USER through SDL_EVENT_LAST are for your use and should be allocated with SDL_RegisterEvents().
    integer(sdl_event_type), parameter, public :: SDL_EVENT_LAST                          = int(z'FFFF')     !! This last event is only for bounding internal arrays.
    integer(sdl_event_type), parameter, public :: SDL_EVENT_ENUM_PADDING                  = int(z'7FFFFFFF') !! This just makes sure the enum is the size of Uint32.

    ! enum SDL_EventAction
    integer(c_int), parameter, public :: SDL_ADDEVENT  = 0 !! Add events to the back of the queue.
    integer(c_int), parameter, public :: SDL_PEEKEVENT = 1 !! Check but don't remove events from the queue front.
    integer(c_int), parameter, public :: SDL_GETEVENT  = 2 !! Retrieve/remove events from the front of the queue.

    ! struct SDL_CommonEvent
    type, bind(c), public :: sdl_common_event
        integer(uint32)          :: type      = 0 !! Event type, shared with all events, Uint32 to cover user events which are not in the SDL_EventType enumeration.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0 !! In nanoseconds, populated using `SDL_GetTicksNS()`.
    end type sdl_common_event

    ! struct SDL_DisplayEvent
    type, bind(c), public :: sdl_display_event
        integer(sdl_event_type)  :: type       = 0 !! SDL_EVENT_DISPLAY_*.
        integer(uint32), private :: reserved   = 0
        integer(uint64)          :: timestamp  = 0 !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_display_id)  :: display_id = 0 !! The associated display.
        integer(sint32)          :: data1      = 0 !! event dependent data.
        integer(sint32)          :: data2      = 0 !! event dependent data.
    end type sdl_display_event

    ! struct SDL_WindowEvent
    type, bind(c), public :: sdl_window_event
        integer(sdl_event_type)  :: type      = 0 !! SDL_EVENT_WINDOW_*.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0 !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_window_id)   :: window_id = 0 !! The associated window.
        integer(sint32)          :: data1     = 0 !! event dependent data.
        integer(sint32)          :: data2     = 0 !! event dependent data.
    end type sdl_window_event

    ! struct SDL_KeyboardDeviceEvent
    type, bind(c), public :: sdl_keyboard_device_event
        integer(sdl_event_type)  :: type      = 0 !! SDL_EVENT_KEYBOARD_ADDED or SDL_EVENT_KEYBOARD_REMOVED.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0 !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_keyboard_id) :: which     = 0 !! The keyboard instance id.
    end type sdl_keyboard_device_event

    ! struct SDL_KeyboardEvent
    type, bind(c), public :: sdl_keyboard_event
        integer(sdl_event_type)  :: type      = 0              !! SDL_EVENT_KEY_DOWN or SDL_EVENT_KEY_UP.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0              !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_window_id)   :: window_id = 0              !! The window with keyboard focus, if any.
        integer(sdl_keyboard_id) :: which     = 0              !! The keyboard instance id, or 0 if unknown or virtual.
        integer(c_int)           :: scancode  = 0              !! SDL physical key code.
        integer(sdl_keycode)     :: key       = 0              !! SDL virtual key code.
        integer(sdl_keymod)      :: mod       = 0              !! current key modifiers.
        integer(uint16)          :: raw       = 0              !! The platform dependent scancode for this event.
        logical(c_bool)          :: down      = .false._c_bool !! True if the key is pressed.
        logical(c_bool)          :: repeat    = .false._c_bool !! True if this is a key repeat.
    end type sdl_keyboard_event

    ! struct SDL_TextEditingEvent
    type, bind(c), public :: sdl_text_editing_event
        integer(sdl_event_type)  :: type      = 0          !! SDL_EVENT_TEXT_EDITING.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0          !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_window_id)   :: window_id = 0          !! The window with keyboard focus, if any.
        type(c_ptr)              :: text      = c_null_ptr !! The editing text.
        integer(sint32)          :: start     = 0          !! The start cursor of selected editing text, or -1 if not set.
        integer(sint32)          :: length    = 0          !! The length of selected editing text, or -1 if not set.
    end type sdl_text_editing_event

    ! struct SDL_TextEditingCandidatesEvent
    type, bind(c), public :: sdl_text_editing_candidates_event
        integer(sdl_event_type)  :: type               = 0              !! SDL_EVENT_TEXT_EDITING_CANDIDATES.
        integer(uint32), private :: reserved           = 0
        integer(uint64)          :: timestamp          = 0              !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_window_id)   :: window_id          = 0              !! The window with keyboard focus, if any.
        type(c_ptr)              :: candidates         = c_null_ptr     !! The list of candidates, or NULL if there are no candidates available.
        integer(sint32)          :: num_candidates     = 0              !! The number of strings in `candidates`.
        integer(sint32)          :: selected_candidate = 0              !! The index of the selected candidate, or -1 if no candidate is selected.
        logical(c_bool)          :: horizontal         = .false._c_bool !! True if the list is horizontal, false if it's vertical.
        integer(uint8),  private :: padding1           = 0
        integer(uint8),  private :: padding2           = 0
        integer(uint8),  private :: padding3           = 0
    end type sdl_text_editing_candidates_event

    ! struct SDL_TextInputEvent
    type, bind(c), public :: sdl_text_input_event
        integer(sdl_event_type)  :: type      = 0          !! SDL_EVENT_TEXT_INPUT.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0          !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_window_id)   :: window_id = 0          !! The window with keyboard focus, if any.
        type(c_ptr)              :: text      = c_null_ptr !! The input text, UTF-8 encoded.
    end type sdl_text_input_event

    ! struct SDL_MouseDeviceEvent
    type, bind(c), public :: sdl_mouse_device_event
        integer(sdl_event_type)  :: type      = 0 !! SDL_EVENT_MOUSE_ADDED or SDL_EVENT_MOUSE_REMOVED.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0 !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_mouse_id)    :: which     = 0 !! The mouse instance id.
    end type sdl_mouse_device_event

    ! struct SDL_MouseMotionEvent
    type, bind(c), public :: sdl_mouse_motion_event
        integer(sdl_event_type)  :: type      = 0   !! SDL_EVENT_MOUSE_MOTION.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0   !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_window_id)   :: window_id = 0   !! The window with mouse focus, if any.
        integer(sdl_mouse_id)    :: which     = 0   !! The mouse instance id in relative mode, SDL_TOUCH_MOUSEID for touch events, SDL_PEN_MOUSEID for pen events, or 0.
        integer(c_int)           :: state     = 0   !! The current button state.
        real(c_float)            :: x         = 0.0 !! X coordinate, relative to window.
        real(c_float)            :: y         = 0.0 !! Y coordinate, relative to window.
        real(c_float)            :: xrel      = 0.0 !! The relative motion in the X direction.
        real(c_float)            :: yrel      = 0.0 !! The relative motion in the Y direction.
    end type sdl_mouse_motion_event

    ! struct SDL_MouseButtonEvent
    type, bind(c), public :: sdl_mouse_button_event
        integer(sdl_event_type)  :: type      = 0              !! SDL_EVENT_MOUSE_BUTTON_DOWN or SDL_EVENT_MOUSE_BUTTON_UP.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0              !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_window_id)   :: window_id = 0              !! The window with mouse focus, if any.
        integer(sdl_mouse_id)    :: which     = 0              !! The mouse instance id in relative mode, SDL_TOUCH_MOUSEID for touch events, or 0.
        integer(uint8)           :: button    = 0              !! The mouse button index.
        logical(c_bool)          :: down      = .false._c_bool !! True if the button is pressed.
        integer(uint8)           :: clicks    = 0              !! 1 for single-click, 2 for double-click, etc.
        integer(uint8),  private :: padding   = 0
        real(c_float)            :: x         = 0.0            !! X coordinate, relative to window.
        real(c_float)            :: y         = 0.0            !! Y coordinate, relative to window.
    end type sdl_mouse_button_event

    ! struct SDL_MouseWheelEvent
    type, bind(c), public :: sdl_mouse_wheel_event
        integer(sdl_event_type)  :: type      = 0   !! SDL_EVENT_MOUSE_WHEEL.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0   !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_window_id)   :: window_id = 0   !! The window with mouse focus, if any.
        integer(sdl_mouse_id)    :: which     = 0   !! The mouse instance id in relative mode or 0.
        real(c_float)            :: x         = 0.0 !! The amount scrolled horizontally, positive to the right and negative to the left.
        real(c_float)            :: y         = 0.0 !! The amount scrolled vertically, positive away from the user and negative toward the user.
        integer(c_int)           :: direction = 0   !! Set to one of the SDL_MOUSEWHEEL_* defines. When FLIPPED the values in X and Y will be opposite. Multiply by -1 to change them back.
        real(c_float)            :: mouse_x   = 0.0 !! X coordinate, relative to window.
        real(c_float)            :: mouse_y   = 0.0 !! Y coordinate, relative to window.
        integer(sint32)          :: integer_x = 0   !! The amount scrolled horizontally, accumulated to whole scroll "ticks" (added in 3.2.12).
        integer(sint32)          :: integer_y = 0   !! The amount scrolled vertically, accumulated to whole scroll "ticks" (added in 3.2.12).
    end type sdl_mouse_wheel_event

    ! struct SDL_JoyAxisEvent
    type, bind(c), public :: sdl_joy_axis_event
        integer(sdl_event_type)  :: type      = 0 !! SDL_EVENT_JOYSTICK_AXIS_MOTION.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0 !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_joystick_id) :: which     = 0 !! The joystick instance id.
        integer(uint8)           :: axis      = 0 !! The joystick axis index.
        integer(uint8),  private :: padding1  = 0
        integer(uint8),  private :: padding2  = 0
        integer(uint8),  private :: padding3  = 0
        integer(sint16)          :: value     = 0 !! The axis value (range: -32768 to 32767).
        integer(uint16), private :: padding4  = 0
    end type sdl_joy_axis_event

    ! struct SDL_JoyBallEvent
    type, bind(c), public :: sdl_joy_ball_event
        integer(sdl_event_type)  :: type      = 0 !! SDL_EVENT_JOYSTICK_BALL_MOTION.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0 !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_joystick_id) :: which     = 0 !! The joystick instance id.
        integer(uint8)           :: ball      = 0 !! The joystick trackball index.
        integer(uint8),  private :: padding1  = 0
        integer(uint8),  private :: padding2  = 0
        integer(uint8),  private :: padding3  = 0
        integer(sint16)          :: xrel      = 0 !! The relative motion in the X direction.
        integer(sint16)          :: yrel      = 0 !! The relative motion in the Y direction.
    end type sdl_joy_ball_event

    ! struct SDL_JoyHatEvent
    type, bind(c), public :: sdl_joy_hat_event
        integer(sdl_event_type)  :: type      = 0 !! SDL_EVENT_JOYSTICK_HAT_MOTION.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0 !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_joystick_id) :: which     = 0 !! The joystick instance id.
        integer(uint8)           :: hat       = 0 !! The joystick hat index.
        integer(uint8)           :: value     = 0 !! The hat position value.
        integer(uint8),  private :: padding1  = 0
        integer(uint8),  private :: padding2  = 0
    end type sdl_joy_hat_event

    ! struct SDL_JoyButtonEvent
    type, bind(c), public :: sdl_joy_button_event
        integer(sdl_event_type)  :: type      = 0              !! SDL_EVENT_JOYSTICK_BUTTON_DOWN or SDL_EVENT_JOYSTICK_BUTTON_UP.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0              !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_joystick_id) :: which     = 0              !! The joystick instance id.
        integer(uint8)           :: button    = 0              !! The joystick button index.
        logical(c_bool)          :: down      = .false._c_bool !! True if the button is pressed.
        integer(uint8),  private :: padding1  = 0
        integer(uint8),  private :: padding2  = 0
    end type sdl_joy_button_event

    ! struct SDL_JoyDeviceEvent
    type, bind(c), public :: sdl_joy_device_event
        integer(sdl_event_type)  :: type      = 0 !! SDL_EVENT_JOYSTICK_ADDED or SDL_EVENT_JOYSTICK_REMOVED or SDL_EVENT_JOYSTICK_UPDATE_COMPLETE.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0 !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_joystick_id) :: which     = 0 !! The joystick instance id.
    end type sdl_joy_device_event

    ! struct SDL_JoyBatteryEvent
    type, bind(c), public :: sdl_joy_battery_event
        integer(sdl_event_type)  :: type      = 0 !! SDL_EVENT_JOYSTICK_BATTERY_UPDATED.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0 !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_joystick_id) :: which     = 0 !! The joystick instance id.
        integer(c_int)           :: state     = 0 !! The joystick battery state.
        integer(c_int)           :: percent   = 0 !! The joystick battery percent charge remaining.
    end type sdl_joy_battery_event

    ! struct SDL_GamepadAxisEvent
    type, bind(c), public :: sdl_gamepad_axis_event
        integer(sdl_event_type)  :: type      = 0 !! SDL_EVENT_GAMEPAD_AXIS_MOTION.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0 !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_joystick_id) :: which     = 0 !! The joystick instance id.
        integer(uint8)           :: axis      = 0 !! The gamepad axis (SDL_GamepadAxis).
        integer(uint8),  private :: padding1  = 0
        integer(uint8),  private :: padding2  = 0
        integer(uint8),  private :: padding3  = 0
        integer(sint16)          :: value     = 0 !! The axis value (range: -32768 to 32767).
        integer(uint16), private :: padding4  = 0
    end type sdl_gamepad_axis_event

    ! struct SDL_GamepadButtonEvent
    type, bind(c), public :: sdl_gamepad_button_event
        integer(sdl_event_type)  :: type      = 0              !! SDL_EVENT_GAMEPAD_BUTTON_DOWN or SDL_EVENT_GAMEPAD_BUTTON_UP.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0              !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_joystick_id) :: which     = 0              !! The joystick instance id.
        integer(uint8)           :: button    = 0              !! The gamepad button (SDL_GamepadButton).
        logical(c_bool)          :: down      = .false._c_bool !! True if the button is pressed.
        integer(uint8),  private :: padding1  = 0
        integer(uint8),  private :: padding2  = 0
    end type sdl_gamepad_button_event

    ! struct SDL_GamepadDeviceEvent
    type, bind(c), public :: sdl_gamepad_device_event
        integer(sdl_event_type)  :: type      = 0 !! SDL_EVENT_GAMEPAD_ADDED, SDL_EVENT_GAMEPAD_REMOVED, or SDL_EVENT_GAMEPAD_REMAPPED, SDL_EVENT_GAMEPAD_UPDATE_COMPLETE or SDL_EVENT_GAMEPAD_STEAM_HANDLE_UPDATED.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0 !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_joystick_id) :: which     = 0 !! The joystick instance id.
    end type sdl_gamepad_device_event

    ! struct SDL_GamepadTouchpadEvent
    type, bind(c), public :: sdl_gamepad_touchpad_event
        integer(sdl_event_type)  :: type      = 0   !! SDL_EVENT_GAMEPAD_TOUCHPAD_DOWN or SDL_EVENT_GAMEPAD_TOUCHPAD_MOTION or SDL_EVENT_GAMEPAD_TOUCHPAD_UP.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0   !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_joystick_id) :: which     = 0   !! The joystick instance id.
        integer(sint32)          :: touchpad  = 0   !! The index of the touchpad.
        integer(sint32)          :: finger    = 0   !! The index of the finger on the touchpad.
        real(c_float)            :: x         = 0.0 !! Normalized in the range 0..1 with 0 being on the left.
        real(c_float)            :: y         = 0.0 !! Normalized in the range 0..1 with 0 being at the top.
        real(c_float)            :: pressure  = 0.0 !! Normalized in the range 0..1.
    end type sdl_gamepad_touchpad_event

    ! struct SDL_GamepadSensorEvent
    type, bind(c), public :: sdl_gamepad_sensor_event
        integer(sdl_event_type)  :: type             = 0   !! SDL_EVENT_GAMEPAD_SENSOR_UPDATE.
        integer(uint32), private :: reserved         = 0
        integer(uint64)          :: timestamp        = 0   !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_joystick_id) :: which            = 0   !! The joystick instance id.
        integer(sint32)          :: sensor           = 0   !! The type of the sensor, one of the values of SDL_SensorType.
        real(c_float)            :: data(3)          = 0.0 !! Up to 3 values from the sensor, as defined in SDL_sensor.h.
        integer(uint64)          :: sensor_timestamp = 0   !! The timestamp of the sensor reading in nanoseconds, not necessarily synchronized with the system clock.
    end type sdl_gamepad_sensor_event

    ! struct SDL_GamepadCapSenseEvent
    type, bind(c), public :: sdl_gamepad_cap_sense_event
        integer(sdl_event_type)  :: type      = 0              !! SDL_EVENT_GAMEPAD_CAPSENSE_TOUCH or SDL_EVENT_GAMEPAD_CAPSENSE_RELEASE.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0              !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_joystick_id) :: which     = 0              !! The joystick instance id.
        integer(uint8)           :: capsense  = 0              !! The capsense type (SDL_GamepadCapSenseType).
        logical(c_bool)          :: down      = .false._c_bool !! True if the capsense is touched.
        integer(uint8),  private :: padding1  = 0
        integer(uint8),  private :: padding2  = 0
    end type sdl_gamepad_cap_sense_event

    ! struct SDL_AudioDeviceEvent
    type, bind(c), public :: sdl_audio_device_event
        integer(sdl_event_type)      :: type      = 0              !! SDL_EVENT_AUDIO_DEVICE_ADDED, or SDL_EVENT_AUDIO_DEVICE_REMOVED, or SDL_EVENT_AUDIO_DEVICE_FORMAT_CHANGED.
        integer(uint32), private     :: reserved  = 0
        integer(uint64)              :: timestamp = 0              !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_audio_device_id) :: which     = 0              !! SDL_AudioDeviceID for the device being added or removed or changing.
        logical(c_bool)              :: recording = .false._c_bool !! False if a playback device, true if a recording device.
        integer(uint8),  private     :: padding1  = 0
        integer(uint8),  private     :: padding2  = 0
        integer(uint8),  private     :: padding3  = 0
    end type sdl_audio_device_event

    ! struct SDL_CameraDeviceEvent
    type, bind(c), public :: sdl_camera_device_event
        integer(sdl_event_type)  :: type      = 0 !! SDL_EVENT_CAMERA_DEVICE_ADDED, SDL_EVENT_CAMERA_DEVICE_REMOVED, SDL_EVENT_CAMERA_DEVICE_APPROVED, SDL_EVENT_CAMERA_DEVICE_DENIED.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0 !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_camera_id)   :: which     = 0 !! SDL_CameraID for the device being added or removed or changing.
    end type sdl_camera_device_event

    ! struct SDL_NotificationEvent
    type, bind(c), public :: sdl_notification_event
        integer(sdl_event_type)      :: type      = 0          !! SDL_EVENT_NOTIFICATION_ACTION_INVOKED.
        integer(uint32), private     :: reserved  = 0
        integer(uint64)              :: timestamp = 0          !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_notification_id) :: which     = 0          !! The ID of the notification that generated this event.
        type(c_ptr)                  :: action_id = c_null_ptr !! The identifier string of the action invoked in the notification dialog.
    end type sdl_notification_event

    ! struct SDL_RenderEvent
    type, bind(c), public :: sdl_render_event
        integer(sdl_event_type)  :: type      = 0 !! SDL_EVENT_RENDER_TARGETS_RESET, SDL_EVENT_RENDER_DEVICE_RESET, SDL_EVENT_RENDER_DEVICE_LOST.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0 !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_window_id)   :: window_id = 0 !! The window containing the renderer in question.
    end type sdl_render_event

    ! struct SDL_TouchFingerEvent
    type, bind(c), public :: sdl_touch_finger_event
        integer(sdl_event_type)  :: type      = 0   !! SDL_EVENT_FINGER_DOWN, SDL_EVENT_FINGER_UP, SDL_EVENT_FINGER_MOTION, or SDL_EVENT_FINGER_CANCELED.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0   !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_touch_id)    :: touchID   = 0   !! The touch device id.
        integer(sdl_finger_id)   :: fingerID  = 0
        real(c_float)            :: x         = 0.0 !! Normalized in the range 0..1.
        real(c_float)            :: y         = 0.0 !! Normalized in the range 0..1.
        real(c_float)            :: dx        = 0.0 !! Normalized in the range -1..1.
        real(c_float)            :: dy        = 0.0 !! Normalized in the range -1..1.
        real(c_float)            :: pressure  = 0.0 !! Normalized in the range 0..1.
        integer(sdl_window_id)   :: window_id = 0   !! The window underneath the finger, if any.
    end type sdl_touch_finger_event

    ! struct SDL_PinchFingerEvent
    type, bind(c), public :: sdl_pinch_finger_event
        integer(sdl_event_type)  :: type      = 0   !! SDL_EVENT_PINCH_BEGIN or SDL_EVENT_PINCH_UPDATE or SDL_EVENT_PINCH_END.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0   !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        real(c_float)            :: scale     = 0.0 !! The scale change since the last SDL_EVENT_PINCH_UPDATE. Scale < 1 is "zoom out". Scale > 1 is "zoom in".
        integer(sdl_window_id)   :: window_id = 0   !! The window underneath the finger, if any.
        real(c_float)            :: span_x    = 0.0 !! On mobile devices for BEGIN and UPDATE events, the average X distance between each of the pointers forming the pinch in window coordinates.  Otherwise, -1.
        real(c_float)            :: span_y    = 0.0 !! On mobile devices for BEGIN and UPDATE events, the average Y distance between each of the pointers forming the pinch in window coordinates.  Otherwise, -1.
        real(c_float)            :: focus_x   = 0.0 !! On mobile devices for BEGIN and UPDATE events, the X coordinate of the current gesture's focal point in window coordinates.  Otherwise, -1.
        real(c_float)            :: focus_y   = 0.0 !! On mobile devices for BEGIN and UPDATE events, the Y coordinate of the current gesture's focal point in window coordinates.  Otherwise, -1.
    end type sdl_pinch_finger_event

    ! struct SDL_PenProximityEvent
    type, bind(c), public :: sdl_pen_proximity_event
        integer(sdl_event_type)  :: type      = 0 !! SDL_EVENT_PEN_PROXIMITY_IN or SDL_EVENT_PEN_PROXIMITY_OUT.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0 !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_window_id)   :: window_id = 0 !! The window with pen focus, if any.
        integer(sdl_pen_id)      :: which     = 0 !! The pen instance id.
    end type sdl_pen_proximity_event

    ! struct SDL_PenMotionEvent
    type, bind(c), public :: sdl_pen_motion_event
        integer(sdl_event_type)      :: type      = 0   !! SDL_EVENT_PEN_MOTION.
        integer(uint32), private     :: reserved  = 0
        integer(uint64)              :: timestamp = 0   !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_window_id)       :: window_id = 0   !! The window with pen focus, if any.
        integer(sdl_pen_id)          :: which     = 0   !! The pen instance id.
        integer(sdl_pen_input_flags) :: pen_state = 0   !! Complete pen input state at time of event.
        real(c_float)                :: x         = 0.0 !! X coordinate, relative to window.
        real(c_float)                :: y         = 0.0 !! Y coordinate, relative to window.
    end type sdl_pen_motion_event

    ! struct SDL_PenTouchEvent
    type, bind(c), public :: sdl_pen_touch_event
        integer(sdl_event_type)      :: type      = 0              !! SDL_EVENT_PEN_DOWN or SDL_EVENT_PEN_UP.
        integer(uint32), private     :: reserved  = 0
        integer(uint64)              :: timestamp = 0              !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_window_id)       :: window_id = 0              !! The window with pen focus, if any.
        integer(sdl_pen_id)          :: which     = 0              !! The pen instance id.
        integer(sdl_pen_input_flags) :: pen_state = 0              !! Complete pen input state at time of event.
        real(c_float)                :: x         = 0.0            !! X coordinate, relative to window.
        real(c_float)                :: y         = 0.0            !! Y coordinate, relative to window.
        logical(c_bool)              :: eraser    = .false._c_bool !! True if eraser end is used (not all pens support this).
        logical(c_bool)              :: down      = .false._c_bool !! True if the pen is touching or false if the pen is lifted off.
    end type sdl_pen_touch_event

    ! struct SDL_PenButtonEvent
    type, bind(c), public :: sdl_pen_button_event
        integer(sdl_event_type)      :: type      = 0              !! SDL_EVENT_PEN_BUTTON_DOWN or SDL_EVENT_PEN_BUTTON_UP.
        integer(uint32), private     :: reserved  = 0
        integer(uint64)              :: timestamp = 0              !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_window_id)       :: window_id = 0              !! The window with mouse focus, if any.
        integer(sdl_pen_id)          :: which     = 0              !! The pen instance id.
        integer(sdl_pen_input_flags) :: pen_state = 0              !! Complete pen input state at time of event.
        real(c_float)                :: x         = 0.0            !! X coordinate, relative to window.
        real(c_float)                :: y         = 0.0            !! Y coordinate, relative to window.
        integer(uint8)               :: button    = 0              !! The pen button index (first button is 1).
        logical(c_bool)              :: down      = .false._c_bool !! True if the button is pressed.
    end type sdl_pen_button_event

    ! struct SDL_PenAxisEvent
    type, bind(c), public :: sdl_pen_axis_event
        integer(sdl_event_type)      :: type      = 0   !! SDL_EVENT_PEN_AXIS.
        integer(uint32), private     :: reserved  = 0
        integer(uint64)              :: timestamp = 0   !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_window_id)       :: window_id = 0   !! The window with pen focus, if any.
        integer(sdl_pen_id)          :: which     = 0   !! The pen instance id.
        integer(sdl_pen_input_flags) :: pen_state = 0   !! Complete pen input state at time of event.
        real(c_float)                :: x         = 0.0 !! X coordinate, relative to window.
        real(c_float)                :: y         = 0.0 !! Y coordinate, relative to window.
        integer(c_int)               :: axis      = 0   !! Axis that has changed.
        real(c_float)                :: value     = 0.0 !! New value of axis.
    end type sdl_pen_axis_event

    ! struct SDL_DropEvent
    type, bind(c), public :: sdl_drop_event
        integer(sdl_event_type)  :: type      = 0          !! SDL_EVENT_DROP_BEGIN or SDL_EVENT_DROP_FILE or SDL_EVENT_DROP_TEXT or SDL_EVENT_DROP_COMPLETE or SDL_EVENT_DROP_POSITION.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0          !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_window_id)   :: window_id = 0          !! The window that was dropped on, if any.
        real(c_float)            :: x         = 0.0        !! X coordinate, relative to window (not on begin).
        real(c_float)            :: y         = 0.0        !! Y coordinate, relative to window (not on begin).
        type(c_ptr)              :: source    = c_null_ptr !! The source app that sent this drop event, or NULL if that isn't available.
        type(c_ptr)              :: data      = c_null_ptr !! The text for SDL_EVENT_DROP_TEXT and the file name for SDL_EVENT_DROP_FILE, NULL for other events.
    end type sdl_drop_event

    ! struct SDL_ClipboardEvent
    type, bind(c), public :: sdl_clipboard_event
        integer(sdl_event_type)  :: type           = 0              !! SDL_EVENT_CLIPBOARD_UPDATE.
        integer(uint32), private :: reserved       = 0
        integer(uint64)          :: timestamp      = 0              !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        logical(c_bool)          :: owner          = .false._c_bool !! are we owning the clipboard (internal update).
        integer(sint32)          :: num_mime_types = 0              !! number of mime types.
        type(c_ptr)              :: mime_types     = c_null_ptr     !! current mime types.
    end type sdl_clipboard_event

    ! struct SDL_SensorEvent
    type, bind(c), public :: sdl_sensor_event
        integer(sdl_event_type)  :: type             = 0   !! SDL_EVENT_SENSOR_UPDATE.
        integer(uint32), private :: reserved         = 0
        integer(uint64)          :: timestamp        = 0   !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_sensor_id)   :: which            = 0   !! The instance ID of the sensor.
        real(c_float)            :: data(6)          = 0.0 !! Up to 6 values from the sensor – additional values can be queried using SDL_GetSensorData().
        integer(uint64)          :: sensor_timestamp = 0   !! The timestamp of the sensor reading in nanoseconds, not necessarily synchronized with the system clock.
    end type sdl_sensor_event

    ! struct SDL_QuitEvent
    type, bind(c), public :: sdl_quit_event
        integer(sdl_event_type)  :: type      = 0 !! SDL_EVENT_QUIT.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0 !! In nanoseconds, populated using `SDL_GetTicksNS()`.
    end type sdl_quit_event

    ! struct SDL_UserEvent
    type, bind(c), public :: sdl_user_event
        integer(uint32)          :: type      = 0          !! SDL_EVENT_USER through SDL_EVENT_LAST, Uint32 because these are not in the SDL_EventType enumeration.
        integer(uint32), private :: reserved  = 0
        integer(uint64)          :: timestamp = 0          !! In nanoseconds, populated using `SDL_GetTicksNS()`.
        integer(sdl_window_id)   :: window_id = 0          !! The associated window if any.
        integer(sint32)          :: code      = 0          !! User defined event code.
        type(c_ptr)              :: data1     = c_null_ptr !! User defined data pointer.
        type(c_ptr)              :: data2     = c_null_ptr !! User defined data pointer.
    end type sdl_user_event

    ! struct SDL_Event
    type, bind(c), public :: sdl_event
        integer(uint32)                          :: type            !! Event type, shared with all events, Uint32 to cover user events which are not in the SDL_EventType enumeration.
        type(sdl_common_event)                   :: common          !! Common event data.
        type(sdl_display_event)                  :: display         !! Display event data.
        type(sdl_window_event)                   :: window          !! Window event data.
        type(sdl_keyboard_device_event)          :: kdevice         !! Keyboard device change event data.
        type(sdl_keyboard_event)                 :: key             !! Keyboard event data.
        type(sdl_text_editing_event)             :: edit            !! Text editing event data.
        type(sdl_text_editing_candidates_event)  :: edit_candidates !! Text editing candidates event data.
        type(sdl_text_input_event)               :: text            !! Text input event data.
        type(sdl_mouse_device_event)             :: mdevice         !! Mouse device change event data.
        type(sdl_mouse_motion_event)             :: motion          !! Mouse motion event data.
        type(sdl_mouse_button_event)             :: button          !! Mouse button event data.
        type(sdl_mouse_wheel_event)              :: wheel           !! Mouse wheel event data.
        type(sdl_joy_device_event)               :: jdevice         !! Joystick device change event data.
        type(sdl_joy_axis_event)                 :: jaxis           !! Joystick axis event data.
        type(sdl_joy_ball_event)                 :: jball           !! Joystick ball event data.
        type(sdl_joy_hat_event)                  :: jhat            !! Joystick hat event data.
        type(sdl_joy_button_event)               :: jbutton         !! Joystick button event data.
        type(sdl_joy_battery_event)              :: jbattery        !! Joystick battery event data.
        type(sdl_gamepad_device_event)           :: gdevice         !! Gamepad device event data.
        type(sdl_gamepad_axis_event)             :: gaxis           !! Gamepad axis event data.
        type(sdl_gamepad_button_event)           :: gbutton         !! Gamepad button event data.
        type(sdl_gamepad_touchpad_event)         :: gtouchpad       !! Gamepad touchpad event data.
        type(sdl_gamepad_sensor_event)           :: gsensor         !! Gamepad sensor event data.
        type(sdl_gamepad_cap_sense_event)        :: gcapsense       !! Gamepad capsense event data.
        type(sdl_audio_device_event)             :: adevice         !! Audio device event data.
        type(sdl_camera_device_event)            :: cdevice         !! Camera device event data.
        type(sdl_sensor_event)                   :: sensor          !! Sensor event data.
        type(sdl_quit_event)                     :: quit            !! Quit request event data.
        type(sdl_user_event)                     :: user            !! Custom event data.
        type(sdl_touch_finger_event)             :: tfinger         !! Touch finger event data.
        type(sdl_pinch_finger_event)             :: pinch           !! Pinch event data.
        type(sdl_pen_proximity_event)            :: pproximity      !! Pen proximity event data.
        type(sdl_pen_touch_event)                :: ptouch          !! Pen tip touching event data.
        type(sdl_pen_motion_event)               :: pmotion         !! Pen motion event data.
        type(sdl_pen_button_event)               :: pbutton         !! Pen button event data.
        type(sdl_pen_axis_event)                 :: paxis           !! Pen axis event data.
        type(sdl_render_event)                   :: render          !! Render event data.
        type(sdl_drop_event)                     :: drop            !! Drag and drop event data.
        type(sdl_clipboard_event)                :: clipboard       !! Clipboard event data.
        type(sdl_notification_event)             :: notification    !! Notification event data.
        integer(uint8)                           :: padding(128)
    end type sdl_event

    public :: sdl_event_filter

    abstract interface
        ! bool *SDL_EventFilter(void *userdata, SDL_Event *event)
        function sdl_event_filter(user_data, event) bind(c)
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: user_data
            type(c_ptr), intent(in), value :: event
            logical(c_bool)                :: sdl_event_filter
        end function sdl_event_filter
    end interface

    public :: sdl_add_event_watch
    public :: sdl_event_enabled
    public :: sdl_filter_events
    public :: sdl_flush_event
    public :: sdl_flush_events
    public :: sdl_get_event_description
    public :: sdl_get_event_filter
    public :: sdl_get_window_from_event
    public :: sdl_has_event
    public :: sdl_has_events
    public :: sdl_peep_events
    public :: sdl_poll_event_
    public :: sdl_pump_events
    public :: sdl_push_event
    public :: sdl_register_events
    public :: sdl_remove_event_watch
    public :: sdl_set_event_enabled
    public :: sdl_set_event_filter
    public :: sdl_wait_event
    public :: sdl_wait_event_timeout

    interface
        ! bool SDL_AddEventWatch(SDL_EventFilter filter, void *userdata)
        function sdl_add_event_watch(filter, user_data) bind(c, name='SDL_AddEventWatch')
            import :: c_bool, c_ptr, sdl_event_filter
            implicit none
            procedure(sdl_event_filter), bind(c) :: filter
            type(c_ptr), intent(in), value       :: user_data
            logical(c_bool)                      :: sdl_add_event_watch
        end function sdl_add_event_watch

        ! bool SDL_EventEnabled(Uint32 type)
        function sdl_event_enabled(type) bind(c, name='SDL_EventEnabled')
            import :: c_bool, uint32
            implicit none
            integer(uint32), intent(in), value :: type
            logical(c_bool)                    :: sdl_event_enabled
        end function sdl_event_enabled

        ! void SDL_FilterEvents(SDL_EventFilter filter, void *userdata)
        subroutine sdl_filter_events(filter, user_data) bind(c, name='SDL_FilterEvents')
            import :: c_ptr, sdl_event_filter
            implicit none
            procedure(sdl_event_filter), bind(c) :: filter
            type(c_ptr), intent(in), value       :: user_data
        end subroutine sdl_filter_events

        ! void SDL_FlushEvent(Uint32 type)
        subroutine sdl_flush_event(type) bind(c, name='SDL_FlushEvent')
            import :: uint32
            implicit none
            integer(uint32), intent(in), value :: type
        end subroutine sdl_flush_event

        ! void SDL_FlushEvents(Uint32 minType, Uint32 maxType)
        subroutine sdl_flush_events(min_type, max_type) bind(c, name='SDL_FlushEvents')
            import :: uint32
            implicit none
            integer(uint32), intent(in), value :: min_type
            integer(uint32), intent(in), value :: max_type
        end subroutine sdl_flush_events

        ! int SDL_GetEventDescription(const SDL_Event *event, char *buf, int buflen)
        function sdl_get_event_description(event, buf, buf_len) bind(c, name='SDL_GetEventDescription')
            import :: c_char, c_int, sdl_event
            implicit none
            type(sdl_event),   intent(in)        :: event
            character(c_char), intent(inout)     :: buf
            integer(c_int),    intent(in), value :: buf_len
            integer(c_int)                       :: sdl_get_event_description
        end function sdl_get_event_description

        ! bool SDL_GetEventFilter(SDL_EventFilter *filter, void **userdata)
        function sdl_get_event_filter(filter, user_data) bind(c, name='SDL_GetEventFilter')
            import :: c_bool, c_funptr, c_ptr
            implicit none
            type(c_funptr), intent(out) :: filter
            type(c_ptr),    intent(out) :: user_data
            logical(c_bool)             :: sdl_get_event_filter
        end function sdl_get_event_filter

        ! SDL_Window *SDL_GetWindowFromEvent(const SDL_Event *event)
        function sdl_get_window_from_event(event) bind(c, name='SDL_GetWindowFromEvent')
            import :: c_ptr, sdl_event
            implicit none
            type(sdl_event), intent(in) :: event
            type(c_ptr)                 :: sdl_get_window_from_event
        end function sdl_get_window_from_event

        ! bool SDL_HasEvent(Uint32 type)
        function sdl_has_event(type) bind(c, name='SDL_HasEvent')
            import :: c_bool, uint32
            implicit none
            integer(uint32), intent(in), value :: type
            logical(c_bool)                    :: sdl_has_event
        end function sdl_has_event

        ! bool SDL_HasEvents(Uint32 minType, Uint32 maxType)
        function sdl_has_events(min_type, max_type) bind(c, name='SDL_HasEvents')
            import :: c_bool, uint32
            implicit none
            integer(uint32), intent(in), value :: min_type
            integer(uint32), intent(in), value :: max_type
            logical(c_bool)                    :: sdl_has_events
        end function sdl_has_events

        ! int SDL_PeepEvents(SDL_Event *events, int numevents, SDL_EventAction action, Uint32 minType, Uint32 maxType)
        function sdl_peep_events(events, num_events, action, min_type, max_type) bind(c, name='SDL_PeepEvents')
            import :: c_int, sdl_event, uint32
            implicit none
            type(sdl_event), intent(in)        :: events
            integer(c_int),  intent(in), value :: num_events
            integer(c_int),  intent(in), value :: action
            integer(uint32), intent(in), value :: min_type
            integer(uint32), intent(in), value :: max_type
            integer(c_int)                     :: sdl_peep_events
        end function sdl_peep_events

        ! bool SDL_PollEvent(SDL_Event *event)
        function sdl_poll_event_(event) bind(c, name='SDL_PollEvent')
            import :: c_bool, sdl_event
            implicit none
            type(sdl_event), intent(out) :: event
            logical(c_bool)              :: sdl_poll_event_
        end function sdl_poll_event_

        ! void SDL_PumpEvents(void)
        subroutine sdl_pump_events() bind(c, name='SDL_PumpEvents')
        end subroutine sdl_pump_events

        ! bool SDL_PushEvent(SDL_Event *event)
        function sdl_push_event(event) bind(c, name='SDL_PushEvent')
            import :: c_bool, sdl_event
            implicit none
            type(sdl_event), intent(in) :: event
            logical(c_bool)             :: sdl_push_event
        end function sdl_push_event

        ! Uint32 SDL_RegisterEvents(int numevents)
        function sdl_register_events(num_events) bind(c, name='SDL_RegisterEvents')
            import :: c_int, uint32
            implicit none
            integer(c_int), intent(in), value :: num_events
            integer(uint32)                   :: sdl_register_events
        end function sdl_register_events

        ! void SDL_RemoveEventWatch(SDL_EventFilter filter, void *userdata)
        subroutine sdl_remove_event_watch(filter, user_data) bind(c, name='SDL_RemoveEventWatch')
            import :: c_ptr, sdl_event_filter
            implicit none
            procedure(sdl_event_filter), bind(c) :: filter
            type(c_ptr), intent(in), value       :: user_data
        end subroutine sdl_remove_event_watch

        ! void SDL_SetEventEnabled(Uint32 type, bool enabled)
        subroutine sdl_set_event_enabled(type, enabled) bind(c, name='SDL_SetEventEnabled')
            import :: c_bool, uint32
            implicit none
            integer(uint32), intent(in), value :: type
            logical(c_bool), intent(in), value :: enabled
        end subroutine sdl_set_event_enabled

        ! void SDL_SetEventFilter(SDL_EventFilter filter, void *userdata)
        subroutine sdl_set_event_filter(filter, user_data) bind(c, name='SDL_SetEventFilter')
            import :: c_ptr, sdl_event_filter
            implicit none
            procedure(sdl_event_filter), bind(c) :: filter
            type(c_ptr), intent(in), value       :: user_data
        end subroutine sdl_set_event_filter

        ! bool SDL_WaitEvent(SDL_Event *event)
        function sdl_wait_event(event) bind(c, name='SDL_WaitEvent')
            import :: c_bool, sdl_event
            implicit none
            type(sdl_event), intent(in) :: event
            logical(c_bool)             :: sdl_wait_event
        end function sdl_wait_event

        ! bool SDL_WaitEventTimeout(SDL_Event *event, Sint32 timeoutMS)
        function sdl_wait_event_timeout(event, timeout_ms) bind(c, name='SDL_WaitEventTimeout')
            import :: c_bool, sdl_event, sint32
            implicit none
            type(sdl_event), intent(in)        :: event
            integer(sint32), intent(in), value :: timeout_ms
            logical(c_bool)                    :: sdl_wait_event_timeout
        end function sdl_wait_event_timeout
    end interface

    public :: sdl_poll_event
contains
    function sdl_poll_event(event) result(l)
        type(sdl_event), intent(out) :: event
        logical                      :: l

        l = sdl_poll_event_(event)

        select case (event%type)
            case (SDL_EVENT_DISPLAY_FIRST:SDL_EVENT_DISPLAY_LAST);                         event%display         = transfer(event, sdl_display_event())
            case (SDL_EVENT_WINDOW_FIRST:SDL_EVENT_WINDOW_LAST);                           event%window          = transfer(event, sdl_window_event())
            case (SDL_EVENT_KEYMAP_CHANGED:SDL_EVENT_KEYBOARD_REMOVED, &
                  SDL_EVENT_SCREEN_KEYBOARD_SHOWN:SDL_EVENT_SCREEN_KEYBOARD_HIDDEN);       event%kdevice         = transfer(event, sdl_keyboard_device_event())
            case (SDL_EVENT_KEY_DOWN:SDL_EVENT_KEY_UP);                                    event%key             = transfer(event, sdl_keyboard_event())
            case (SDL_EVENT_TEXT_EDITING);                                                 event%edit            = transfer(event, sdl_text_editing_event())
            case (SDL_EVENT_TEXT_EDITING_CANDIDATES);                                      event%edit_candidates = transfer(event, sdl_text_editing_candidates_event())
            case (SDL_EVENT_TEXT_INPUT);                                                   event%text            = transfer(event, sdl_text_input_event())
            case (SDL_EVENT_MOUSE_ADDED:SDL_EVENT_MOUSE_REMOVED);                          event%mdevice         = transfer(event, sdl_mouse_device_event())
            case (SDL_EVENT_MOUSE_MOTION);                                                 event%motion          = transfer(event, sdl_mouse_motion_event())
            case (SDL_EVENT_MOUSE_BUTTON_DOWN:SDL_EVENT_MOUSE_BUTTON_UP);                  event%button          = transfer(event, sdl_mouse_button_event())
            case (SDL_EVENT_MOUSE_WHEEL);                                                  event%wheel           = transfer(event, sdl_mouse_wheel_event())
            case (SDL_EVENT_JOYSTICK_AXIS_MOTION);                                         event%jaxis           = transfer(event, sdl_joy_axis_event())
            case (SDL_EVENT_JOYSTICK_BALL_MOTION);                                         event%jball           = transfer(event, sdl_joy_ball_event())
            case (SDL_EVENT_JOYSTICK_HAT_MOTION);                                          event%jhat            = transfer(event, sdl_joy_hat_event())
            case (SDL_EVENT_JOYSTICK_BUTTON_DOWN:SDL_EVENT_JOYSTICK_BUTTON_UP);            event%jbutton         = transfer(event, sdl_joy_button_event())
            case (SDL_EVENT_JOYSTICK_ADDED:SDL_EVENT_JOYSTICK_REMOVED);                    event%jdevice         = transfer(event, sdl_joy_device_event())
            case (SDL_EVENT_JOYSTICK_BATTERY_UPDATED:SDL_EVENT_JOYSTICK_UPDATE_COMPLETE);  event%jbattery        = transfer(event, sdl_joy_battery_event())
            case (SDL_EVENT_GAMEPAD_ADDED:SDL_EVENT_GAMEPAD_REMAPPED);                     event%gdevice         = transfer(event, sdl_gamepad_device_event())
            case (SDL_EVENT_GAMEPAD_AXIS_MOTION);                                          event%gaxis           = transfer(event, sdl_gamepad_axis_event())
            case (SDL_EVENT_GAMEPAD_BUTTON_DOWN:SDL_EVENT_GAMEPAD_BUTTON_UP);              event%gbutton         = transfer(event, sdl_gamepad_button_event())
            case (SDL_EVENT_GAMEPAD_TOUCHPAD_DOWN:SDL_EVENT_GAMEPAD_TOUCHPAD_UP);          event%gtouchpad       = transfer(event, sdl_gamepad_touchpad_event())
            case (SDL_EVENT_GAMEPAD_SENSOR_UPDATE:SDL_EVENT_GAMEPAD_STEAM_HANDLE_UPDATED); event%gsensor         = transfer(event, sdl_gamepad_sensor_event())
            case (SDL_EVENT_GAMEPAD_CAPSENSE_TOUCH:SDL_EVENT_GAMEPAD_CAPSENSE_RELEASE);    event%gcapsense       = transfer(event, sdl_gamepad_cap_sense_event())
            case (SDL_EVENT_AUDIO_DEVICE_FIRST:SDL_EVENT_AUDIO_DEVICE_LAST);               event%adevice         = transfer(event, sdl_audio_device_event())
            case (SDL_EVENT_CAMERA_DEVICE_FIRST:SDL_EVENT_CAMERA_DEVICE_LAST);             event%cdevice         = transfer(event, sdl_camera_device_event())
            case (SDL_EVENT_SENSOR_FIRST:SDL_EVENT_SENSOR_LAST);                           event%sensor          = transfer(event, sdl_sensor_event())
            case (SDL_EVENT_QUIT);                                                         event%quit            = transfer(event, sdl_quit_event())
            case (SDL_EVENT_USER:SDL_EVENT_LAST);                                          event%user            = transfer(event, sdl_user_event())
            case (SDL_EVENT_FINGER_FIRST:SDL_EVENT_FINGER_LAST);                           event%tfinger         = transfer(event, sdl_touch_finger_event())
            case (SDL_EVENT_PINCH_FIRST:SDL_EVENT_PINCH_LAST);                             event%pinch           = transfer(event, sdl_pinch_finger_event())
            case (SDL_EVENT_PEN_PROXIMITY_IN:SDL_EVENT_PEN_PROXIMITY_OUT);                 event%pproximity      = transfer(event, sdl_pen_proximity_event())
            case (SDL_EVENT_PEN_DOWN:SDL_EVENT_PEN_UP);                                    event%ptouch          = transfer(event, sdl_pen_touch_event())
            case (SDL_EVENT_PEN_MOTION);                                                   event%pmotion         = transfer(event, sdl_pen_motion_event())
            case (SDL_EVENT_PEN_BUTTON_DOWN:SDL_EVENT_PEN_BUTTON_UP);                      event%pbutton         = transfer(event, sdl_pen_button_event())
            case (SDL_EVENT_PEN_AXIS);                                                     event%paxis           = transfer(event, sdl_pen_axis_event())
            case (SDL_EVENT_RENDER_FIRST:SDL_EVENT_RENDER_LAST);                           event%render          = transfer(event, sdl_render_event())
            case (SDL_EVENT_DROP_FIRST:SDL_EVENT_DROP_LAST);                               event%drop            = transfer(event, sdl_drop_event())
            case (SDL_EVENT_CLIPBOARD_FIRST:SDL_EVENT_CLIPBOARD_LAST);                     event%clipboard       = transfer(event, sdl_clipboard_event())
            case (SDL_EVENT_NOTIFICATION_FIRST:SDL_EVENT_NOTIFICATION_LAST);               event%notification    = transfer(event, sdl_notification_event())
        end select
    end function sdl_poll_event
end module sdl3_events
