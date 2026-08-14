! Author:  Philipp Engel
! Licence: ISC
module sdl3_mouse
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    integer, parameter, public :: sdl_mouse_id           = uint32 ! SDL_MouseID
    integer, parameter, public :: sdl_mouse_button_flags = uint32 ! SDL_MouseButtonFlags

    ! enum SDL_SystemCursor
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_DEFAULT       =  0
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_TEXT          =  1
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_WAIT          =  2
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_CROSSHAIR     =  3
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_PROGRESS      =  4
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_NWSE_RESIZE   =  5
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_NESW_RESIZE   =  6
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_EW_RESIZE     =  7
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_NS_RESIZE     =  8
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_MOVE          =  9
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_NOT_ALLOWED   = 10
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_POINTER       = 11
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_NW_RESIZE     = 12
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_N_RESIZE      = 13
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_NE_RESIZE     = 14
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_E_RESIZE      = 15
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_SE_RESIZE     = 16
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_S_RESIZE      = 17
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_SW_RESIZE     = 18
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_W_RESIZE      = 19
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_CONTEXT_MENU  = 20
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_HELP          = 21
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_CELL          = 22
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_VERTICAL_TEXT = 23
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_ALIAS         = 24
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_COPY          = 25
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_NO_DROP       = 26
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_GRAB          = 27
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_GRABBING      = 28
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_COL_RESIZE    = 29
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_ROW_RESIZE    = 30
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_ALL_SCROLL    = 31
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_ZOOM_IN       = 32
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_ZOOM_OUT      = 33
    integer(c_int), parameter, public :: SDL_SYSTEM_CURSOR_COUNT         = 34

    ! enum SDL_MouseWheelDirection
    integer(c_int), parameter, public :: SDL_MOUSEWHEEL_NORMAL  = 0
    integer(c_int), parameter, public :: SDL_MOUSEWHEEL_FLIPPED = 1

    ! struct SDL_CursorFrameInfo
    type, bind(c), public :: sdl_cursor_frame_info
        type(c_ptr)     :: surface  = c_null_ptr
        integer(uint32) :: duration = 0
    end type sdl_cursor_frame_info

    integer(sdl_mouse_button_flags), parameter, public :: SDL_BUTTON_LEFT   = 1
    integer(sdl_mouse_button_flags), parameter, public :: SDL_BUTTON_MIDDLE = 2
    integer(sdl_mouse_button_flags), parameter, public :: SDL_BUTTON_RIGHT  = 3
    integer(sdl_mouse_button_flags), parameter, public :: SDL_BUTTON_X1     = 4
    integer(sdl_mouse_button_flags), parameter, public :: SDL_BUTTON_X2     = 5

    ! SDL_BUTTON_MASK(X) (1u << ((X)-1))
    ! SDL_BUTTON_LMASK   SDL_BUTTON_MASK(SDL_BUTTON_LEFT)
    ! SDL_BUTTON_MMASK   SDL_BUTTON_MASK(SDL_BUTTON_MIDDLE)
    ! SDL_BUTTON_RMASK   SDL_BUTTON_MASK(SDL_BUTTON_RIGHT)
    ! SDL_BUTTON_X1MASK  SDL_BUTTON_MASK(SDL_BUTTON_X1)
    ! SDL_BUTTON_X2MASK  SDL_BUTTON_MASK(SDL_BUTTON_X2)

    public :: sdl_mouse_motion_transform_callback

    abstract interface
        ! void SDL_MouseMotionTransformCallback(void *userdata, Uint64 timestamp, SDL_Window *window, SDL_MouseID mouseID, float *x, float *y)
        subroutine sdl_mouse_motion_transform_callback(user_data, timestamp, window, mouse_id, x, y) bind(c)
            import :: c_float, c_ptr, sdl_mouse_id, uint64
            implicit none
            type(c_ptr),           intent(in), value :: user_data
            integer(uint64),       intent(in), value :: timestamp
            type(c_ptr),           intent(in), value :: window
            integer(sdl_mouse_id), intent(in), value :: mouse_id
            real(c_float),         intent(out)       :: x
            real(c_float),         intent(out)       :: y
        end subroutine sdl_mouse_motion_transform_callback
    end interface

    public :: sdl_capture_mouse
    public :: sdl_create_animated_cursor
    public :: sdl_create_color_cursor
    public :: sdl_create_cursor
    public :: sdl_create_system_cursor
    public :: sdl_cursor_visible
    public :: sdl_destroy_cursor
    public :: sdl_get_cursor
    public :: sdl_get_default_cursor
    public :: sdl_get_global_mouse_state
    public :: sdl_get_mice
    public :: sdl_get_mouse_focus
    public :: sdl_get_mouse_name_for_id
    public :: sdl_get_mouse_state
    public :: sdl_get_relative_mouse_state
    public :: sdl_get_window_relative_mouse_mode
    public :: sdl_has_mouse
    public :: sdl_hide_cursor
    public :: sdl_set_cursor
    public :: sdl_set_relative_mouse_transform
    public :: sdl_set_window_relative_mouse_mode
    public :: sdl_show_cursor
    public :: sdl_warp_mouse_global
    public :: sdl_warp_mouse_in_window

    interface
        ! bool SDL_CaptureMouse(bool enabled)
        function sdl_capture_mouse(enabled) bind(c, name='SDL_CaptureMouse')
            import :: c_bool
            implicit none
            logical(c_bool), intent(in), value :: enabled
            logical(c_bool)                    :: sdl_capture_mouse
        end function sdl_capture_mouse

        ! SDL_Cursor *SDL_CreateAnimatedCursor(SDL_CursorFrameInfo *frames, int frame_count, int hot_x, int hot_y)
        function sdl_create_animated_cursor(frames, frame_count, hot_x, hot_y) bind(c, name='SDL_CreateAnimatedCursor')
            import :: c_int, c_ptr, sdl_cursor_frame_info
            implicit none
            type(sdl_cursor_frame_info), intent(in)        :: frames(*)
            integer(c_int),              intent(in), value :: frame_count
            integer(c_int),              intent(in), value :: hot_x
            integer(c_int),              intent(in), value :: hot_y
            type(c_ptr)                                    :: sdl_create_animated_cursor
        end function sdl_create_animated_cursor

        ! SDL_Cursor *SDL_CreateColorCursor(SDL_Surface *surface, int hot_x, int hot_y)
        function sdl_create_color_cursor(surface, hot_x, hot_y) bind(c, name='SDL_CreateColorCursor')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: surface
            integer(c_int), intent(in), value :: hot_x
            integer(c_int), intent(in), value :: hot_y
            type(c_ptr)                       :: sdl_create_color_cursor
        end function sdl_create_color_cursor

        ! SDL_Cursor *SDL_CreateCursor(const Uint8 *data, const Uint8 *mask, int w, int h, int hot_x, int hot_y)
        function sdl_create_cursor(data, mask, w, h, hot_x, hot_y) bind(c, name='SDL_CreateCursor')
            import :: c_int, c_ptr, uint8
            implicit none
            integer(uint8), intent(in)        :: data(*)
            integer(uint8), intent(in)        :: mask(*)
            integer(c_int), intent(in), value :: w
            integer(c_int), intent(in), value :: h
            integer(c_int), intent(in), value :: hot_x
            integer(c_int), intent(in), value :: hot_y
            type(c_ptr) :: sdl_create_cursor
        end function sdl_create_cursor

        ! SDL_Cursor *SDL_CreateSystemCursor(SDL_SystemCursor id)
        function sdl_create_system_cursor(id) bind(c, name='SDL_CreateSystemCursor')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(in), value :: id
            type(c_ptr)                       :: sdl_create_system_cursor
        end function sdl_create_system_cursor

        ! bool SDL_CursorVisible(void)
        function sdl_cursor_visible() bind(c, name='SDL_CursorVisible')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_cursor_visible
        end function sdl_cursor_visible

        ! void SDL_DestroyCursor(SDL_Cursor *cursor)
        subroutine sdl_destroy_cursor(cursor) bind(c, name='SDL_DestroyCursor')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: cursor
        end subroutine sdl_destroy_cursor

        ! SDL_Cursor *SDL_GetCursor(void)
        function sdl_get_cursor() bind(c, name='SDL_GetCursor')
            import :: c_ptr
            implicit none
            type(c_ptr) :: sdl_get_cursor
        end function sdl_get_cursor

        ! SDL_Cursor *SDL_GetDefaultCursor(void)
        function sdl_get_default_cursor() bind(c, name='SDL_GetDefaultCursor')
            import :: c_ptr
            implicit none
            type(c_ptr) :: sdl_get_default_cursor
        end function sdl_get_default_cursor

        ! SDL_MouseButtonFlags SDL_GetGlobalMouseState(float *x, float *y)
        function sdl_get_global_mouse_state(x, y) bind(c, name='SDL_GetGlobalMouseState')
            import :: c_float, sdl_mouse_button_flags
            implicit none
            real(c_float), intent(out)      :: x
            real(c_float), intent(out)      :: y
            integer(sdl_mouse_button_flags) :: sdl_get_global_mouse_state
        end function sdl_get_global_mouse_state

        ! SDL_MouseID *SDL_GetMice(int *count)
        function sdl_get_mice(count) bind(c, name='SDL_GetMice')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(out) :: count
            type(c_ptr)                 :: sdl_get_mice
        end function sdl_get_mice

        ! SDL_Window *SDL_GetMouseFocus(void)
        function sdl_get_mouse_focus() bind(c, name='SDL_GetMouseFocus')
            import :: c_ptr
            implicit none
            type(c_ptr) :: sdl_get_mouse_focus
        end function sdl_get_mouse_focus

        ! const char *SDL_GetMouseNameForID(SDL_MouseID instance_id)
        function sdl_get_mouse_name_for_id(instance_id) bind(c, name='SDL_GetMouseNameForID')
            import :: c_ptr, sdl_mouse_id
            implicit none
            integer(sdl_mouse_id), intent(in), value :: instance_id
            type(c_ptr)                              :: sdl_get_mouse_name_for_id
        end function sdl_get_mouse_name_for_id

        ! SDL_MouseButtonFlags SDL_GetMouseState(float *x, float *y)
        function sdl_get_mouse_state(x, y) bind(c, name='SDL_GetMouseState')
            import :: c_float, sdl_mouse_button_flags
            implicit none
            real(c_float), intent(out)      :: x
            real(c_float), intent(out)      :: y
            integer(sdl_mouse_button_flags) :: sdl_get_mouse_state
        end function sdl_get_mouse_state

        ! SDL_MouseButtonFlags SDL_GetRelativeMouseState(float *x, float *y)
        function sdl_get_relative_mouse_state(x, y) bind(c, name='SDL_GetRelativeMouseState')
            import :: c_float, sdl_mouse_button_flags
            implicit none
            real(c_float), intent(out)      :: x
            real(c_float), intent(out)      :: y
            integer(sdl_mouse_button_flags) :: sdl_get_relative_mouse_state
        end function sdl_get_relative_mouse_state

        ! bool SDL_GetWindowRelativeMouseMode(SDL_Window *window)
        function sdl_get_window_relative_mouse_mode(window) bind(c, name='SDL_GetWindowRelativeMouseMode')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            logical(c_bool)                :: sdl_get_window_relative_mouse_mode
        end function sdl_get_window_relative_mouse_mode

        ! bool SDL_HasMouse(void)
        function sdl_has_mouse() bind(c, name='SDL_HasMouse')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_has_mouse
        end function sdl_has_mouse

        ! bool SDL_HideCursor(void)
        function sdl_hide_cursor() bind(c, name='SDL_HideCursor')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_hide_cursor
        end function sdl_hide_cursor

        ! bool SDL_SetCursor(SDL_Cursor *cursor)
        function sdl_set_cursor(cursor) bind(c, name='SDL_SetCursor')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: cursor
            logical(c_bool)                :: sdl_set_cursor
        end function sdl_set_cursor

        ! bool SDL_SetRelativeMouseTransform(SDL_MouseMotionTransformCallback callback, void *userdata)
        function sdl_set_relative_mouse_transform(callback, user_data) bind(c, name='SDL_SetRelativeMouseTransform')
            import :: c_bool, c_ptr, sdl_mouse_motion_transform_callback
            implicit none
            procedure(sdl_mouse_motion_transform_callback), bind(c) :: callback
            type(c_ptr), intent(in), value                          :: user_data
            logical(c_bool)                                         :: sdl_set_relative_mouse_transform
        end function sdl_set_relative_mouse_transform

        ! bool SDL_SetWindowRelativeMouseMode(SDL_Window *window, bool enabled)
        function sdl_set_window_relative_mouse_mode(window, enabled) bind(c, name='SDL_SetWindowRelativeMouseMode')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: window
            logical(c_bool), intent(in), value :: enabled
            logical(c_bool)                    :: sdl_set_window_relative_mouse_mode
        end function sdl_set_window_relative_mouse_mode

        ! bool SDL_ShowCursor(void)
        function sdl_show_cursor() bind(c, name='SDL_ShowCursor')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_show_cursor
        end function sdl_show_cursor

        ! bool SDL_WarpMouseGlobal(float x, float y)
        function sdl_warp_mouse_global(x, y) bind(c, name='SDL_WarpMouseGlobal')
            import :: c_bool, c_float
            implicit none
            real(c_float), intent(in), value :: x
            real(c_float), intent(in), value :: y
            logical(c_bool)                  :: sdl_warp_mouse_global
        end function sdl_warp_mouse_global

        ! void SDL_WarpMouseInWindow(SDL_Window *window, float x, float y)
        subroutine sdl_warp_mouse_in_window(window, x, y) bind(c, name='SDL_WarpMouseInWindow')
            import :: c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: window
            real(c_float), intent(in), value :: x
            real(c_float), intent(in), value :: y
        end subroutine sdl_warp_mouse_in_window
    end interface
end module sdl3_mouse
