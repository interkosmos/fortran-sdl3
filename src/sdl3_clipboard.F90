! Author:  Philipp Engel
! Licence: ISC
module sdl3_clipboard
    !! Auto-generated Fortran 2023 interface bindings to `SDL3/SDL_clipboard.h`.
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    public :: sdl_clipboard_cleanup_callback
    public :: sdl_clipboard_data_callback

    abstract interface
        ! void SDL_ClipboardCleanupCallback(void *userdata)
        subroutine sdl_clipboard_cleanup_callback(user_data) bind(c)
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: user_data
        end subroutine sdl_clipboard_cleanup_callback

        ! const void *SDL_ClipboardDataCallback(void *userdata, const char *mime_type, size_t *size)
        function SDL_Clipboard_Data_Callback(user_data, mime_type, size) bind(c)
            import :: c_ptr, c_size_t
            implicit none
            type(c_ptr),       intent(in), value :: user_data
            type(c_ptr),       intent(in), value :: mime_type
            integer(c_size_t), intent(in), value :: size
            type(c_ptr)                          :: sdl_clipboard_data_callback
        end function sdl_clipboard_data_callback
    end interface

    public :: sdl_clear_clipboard_data
    public :: sdl_get_clipboard_data
    public :: sdl_get_clipboard_mime_types
    public :: sdl_get_clipboard_text
    public :: sdl_get_primary_selection_text
    public :: sdl_has_clipboard_data
    public :: sdl_has_clipboard_text
    public :: sdl_has_primary_selection_text
    public :: sdl_set_clipboard_data
    public :: sdl_set_clipboard_text
    public :: sdl_set_primary_selection_text

    interface
        ! bool SDL_ClearClipboardData(void)
        function sdl_clear_clipboard_data() bind(c, name='SDL_ClearClipboardData')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_clear_clipboard_data
        end function sdl_clear_clipboard_data

        ! void *SDL_GetClipboardData(const char *mime_type, size_t *size)
        function sdl_get_clipboard_data(mime_type, size) bind(c, name='SDL_GetClipboardData')
            import :: c_char, c_ptr, c_size_t
            implicit none
            character(c_char), intent(in)  :: mime_type
            integer(c_size_t), intent(out) :: size
            type(c_ptr)                    :: sdl_get_clipboard_data
        end function sdl_get_clipboard_data

        ! char **SDL_GetClipboardMimeTypes(size_t *num_mime_types)
        function sdl_get_clipboard_mime_types(num_mime_types) bind(c, name='SDL_GetClipboardMimeTypes')
            import :: c_ptr, c_size_t
            implicit none
            integer(c_size_t), intent(out) :: num_mime_types
            type(c_ptr)                    :: sdl_get_clipboard_mime_types
        end function sdl_get_clipboard_mime_types

        ! char *SDL_GetClipboardText(void)
        function sdl_get_clipboard_text() bind(c, name='SDL_GetClipboardText')
            import :: c_ptr
            implicit none
            type(c_ptr) :: sdl_get_clipboard_text
        end function sdl_get_clipboard_text

        ! char *SDL_GetPrimarySelectionText(void)
        function sdl_get_primary_selection_text() bind(c, name='SDL_GetPrimarySelectionText')
            import :: c_ptr
            implicit none
            type(c_ptr) :: sdl_get_primary_selection_text
        end function sdl_get_primary_selection_text

        ! bool SDL_HasClipboardData(const char *mime_type)
        function sdl_has_clipboard_data(mime_type) bind(c, name='SDL_HasClipboardData')
            import :: c_bool, c_char
            implicit none
            character(c_char), intent(in) :: mime_type
            logical(c_bool)               :: sdl_has_clipboard_data
        end function sdl_has_clipboard_data

        ! bool SDL_HasClipboardText(void)
        function sdl_has_clipboard_text() bind(c, name='SDL_HasClipboardText')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_has_clipboard_text
        end function sdl_has_clipboard_text

        ! bool SDL_HasPrimarySelectionText(void)
        function sdl_has_primary_selection_text() bind(c, name='SDL_HasPrimarySelectionText')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_has_primary_selection_text
        end function sdl_has_primary_selection_text

        ! bool SDL_SetClipboardData(SDL_ClipboardDataCallback callback, SDL_ClipboardCleanupCallback cleanup, void *userdata, const char *const *mime_types, size_t num_mime_types)
        function sdl_set_clipboard_data(callback, cleanup, user_data, num_mime_types) bind(c, name='SDL_SetClipboardData')
            import :: c_bool, c_ptr, c_size_t, sdl_clipboard_cleanup_callback, sdl_clipboard_data_callback
            implicit none
            procedure(sdl_clipboard_data_callback),    bind(c)           :: callback
            procedure(sdl_clipboard_cleanup_callback), bind(c)           :: cleanup
            type(c_ptr),                               intent(in), value :: user_data
            integer(c_size_t),                         intent(in), value :: num_mime_types
            logical(c_bool)                                              :: sdl_set_clipboard_data
        end function sdl_set_clipboard_data

        ! bool SDL_SetClipboardText(const char *text)
        function sdl_set_clipboard_text(text) bind(c, name='SDL_SetClipboardText')
            import :: c_bool, c_char
            implicit none
            character(c_char), intent(in) :: text
            logical(c_bool)               :: sdl_set_clipboard_text
        end function sdl_set_clipboard_text

        ! bool SDL_SetPrimarySelectionText(const char *text)
        function sdl_set_primary_selection_text(text) bind(c, name='SDL_SetPrimarySelectionText')
            import :: c_bool, c_char
            implicit none
            character(c_char), intent(in) :: text
            logical(c_bool)               :: sdl_set_primary_selection_text
        end function sdl_set_primary_selection_text
    end interface
end module sdl3_clipboard
