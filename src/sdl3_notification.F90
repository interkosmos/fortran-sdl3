! Author:  Philipp Engel
! Licence: ISC
module sdl3_notification
    !! Auto-generated Fortran 2023 interface bindings to `SDL3/SDL_notification.h`.
    use :: sdl3_properties
    use :: sdl3_properties
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    integer, parameter, public :: sdl_notification_id = uint32 !! SDL_NotificationID

    ! enum SDL_NotificationPriority
    integer(c_int), parameter, public :: SDL_NOTIFICATION_PRIORITY_LOW      = -1 !! Lowest priority.
    integer(c_int), parameter, public :: SDL_NOTIFICATION_PRIORITY_NORMAL   =  0 !! Normal/medium priority.
    integer(c_int), parameter, public :: SDL_NOTIFICATION_PRIORITY_HIGH     =  1 !! High/important priority.
    integer(c_int), parameter, public :: SDL_NOTIFICATION_PRIORITY_CRITICAL =  2 !! Highest/critical priority. Note that this may override any "Do Not Disturb" settings and wake the screen.

    ! enum SDL_NotificationActionType
    integer(c_int), parameter, public :: SDL_NOTIFICATION_ACTION_TYPE_BUTTON = 1 !! Adds a button to the notification that generates feedback when activated.

    type, bind(c), public :: sdl_notification_button_action
        integer(c_int) :: type         = 0          !! SDL_NOTIFICATION_ACTION_TYPE_BUTTON
        type(c_ptr)    :: action_id    = c_null_ptr !! The identifier string for the button. `default` is a reserved identifier and must not be used.
        type(c_ptr)    :: action_label = c_null_ptr !! The localized label for the button associated with the action, in UTF-8 encoding.
    end type sdl_notification_button_action

    ! union SDL_NotificationAction
    type, bind(c), public :: sdl_notification_action
        integer(c_int)                       :: type         = 0 !! `SDL_NotificationActionType`.
        type(sdl_notification_button_action) :: action       = sdl_notification_button_action()
        integer(uint8), private              :: padding(128) = 0
    end type sdl_notification_action

    character(*), parameter, public :: SDL_PROP_GLOBAL_NOTIFICATION_HEADER_ICON_STRING = 'SDL.notification.header_icon'

    character(*), parameter, public :: SDL_PROP_NOTIFICATION_ACTIONS_POINTER     = 'SDL.notification.actions'
    character(*), parameter, public :: SDL_PROP_NOTIFICATION_ACTION_COUNT_NUMBER = 'SDL.notification.action_count'
    character(*), parameter, public :: SDL_PROP_NOTIFICATION_IMAGE_POINTER       = 'SDL.notification.image'
    character(*), parameter, public :: SDL_PROP_NOTIFICATION_MESSAGE_STRING      = 'SDL.notification.message'
    character(*), parameter, public :: SDL_PROP_NOTIFICATION_PRIORITY_NUMBER     = 'SDL.notification.priority'
    character(*), parameter, public :: SDL_PROP_NOTIFICATION_REPLACES_NUMBER     = 'SDL.notification.replaces'
    character(*), parameter, public :: SDL_PROP_NOTIFICATION_SOUND_STRING        = 'SDL.notification.sound'
    character(*), parameter, public :: SDL_PROP_NOTIFICATION_TRANSIENT_BOOLEAN   = 'SDL.notification.transient'
    character(*), parameter, public :: SDL_PROP_NOTIFICATION_TITLE_STRING        = 'SDL.notification.title'

    public :: sdl_remove_notification
    public :: sdl_request_notification_permission
    public :: sdl_show_notification_
    public :: sdl_show_notification_with_properties

    interface
        ! bool SDL_RemoveNotification(SDL_NotificationID notification)
        function sdl_remove_notification(notification) bind(c, name='SDL_RemoveNotification')
            import :: c_bool, sdl_notification_id
            implicit none
            integer(sdl_notification_id), intent(in), value :: notification
            logical(c_bool) :: sdl_remove_notification
        end function sdl_remove_notification

        ! bool SDL_RequestNotificationPermission(void)
        function sdl_request_notification_permission() bind(c, name='SDL_RequestNotificationPermission')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_request_notification_permission
        end function sdl_request_notification_permission

        ! SDL_NotificationID SDL_ShowNotification(const char *title, const char *message, SDL_Surface *image, SDL_NotificationAction *actions, int num_actions)
        function sdl_show_notification_(title, message, image, actions, num_actions) bind(c, name='SDL_ShowNotification')
            import :: c_char, c_int, c_ptr, sdl_notification_action, sdl_notification_id
            implicit none
            character(c_char),             intent(in)           :: title
            character(c_char),             intent(in)           :: message
            type(c_ptr),                   intent(in), value    :: image
            type(sdl_notification_action), intent(in), optional :: actions(*)
            integer(c_int),                intent(in), value    :: num_actions
            integer(sdl_notification_id)                        :: sdl_show_notification_
        end function sdl_show_notification_

        ! SDL_NotificationID SDL_ShowNotificationWithProperties(SDL_PropertiesID props)
        function sdl_show_notification_with_properties(props) bind(c, name='SDL_ShowNotificationWithProperties')
            import :: sdl_notification_id, sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
            integer(sdl_notification_id)                  :: sdl_show_notification_with_properties
        end function sdl_show_notification_with_properties
    end interface

    public :: sdl_show_notification
contains
    function sdl_show_notification(title, message, image, actions, num_actions) result(id)
        character(*),                  intent(in)           :: title
        character(*),                  intent(in)           :: message
        type(c_ptr),                   intent(in), optional :: image
        type(sdl_notification_action), intent(in), optional :: actions(:)
        integer,                       intent(in), optional :: num_actions
        integer(sdl_notification_id)                        :: id

        integer :: n

        n = 0
        if (present(actions)) then
            if (present(num_actions)) then
                n = num_actions
            else
                n = size(actions)
            end if
        end if

        if (present(image)) then
            id = sdl_show_notification_(f_c_str(title), f_c_str(message), image=image, actions=actions, num_actions=n)
        else
            id = sdl_show_notification_(f_c_str(title), f_c_str(message), image=c_null_ptr, actions=actions, num_actions=n)
        end if
    end function sdl_show_notification
end module sdl3_notification
