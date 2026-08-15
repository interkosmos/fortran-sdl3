! Author:  Philipp Engel
! Licence: ISC
module sdl3_init
    !! Auto-generated Fortran 2023 interface bindings to `SDL3/SDL_init.h`.
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    integer, parameter, public :: sdl_init_flags = uint32 !! SDL_InitFlags

    integer(sdl_init_flags), parameter, public :: SDL_INIT_AUDIO    = int(z'00000010')
    integer(sdl_init_flags), parameter, public :: SDL_INIT_VIDEO    = int(z'00000020')
    integer(sdl_init_flags), parameter, public :: SDL_INIT_JOYSTICK = int(z'00000200')
    integer(sdl_init_flags), parameter, public :: SDL_INIT_HAPTIC   = int(z'00001000')
    integer(sdl_init_flags), parameter, public :: SDL_INIT_GAMEPAD  = int(z'00002000')
    integer(sdl_init_flags), parameter, public :: SDL_INIT_EVENTS   = int(z'00004000')
    integer(sdl_init_flags), parameter, public :: SDL_INIT_SENSOR   = int(z'00008000')
    integer(sdl_init_flags), parameter, public :: SDL_INIT_CAMERA   = int(z'00010000')

    ! enum SDL_AppResult
    integer(c_int), parameter, public :: SDL_APP_CONTINUE = 0
    integer(c_int), parameter, public :: SDL_APP_SUCCESS  = 1
    integer(c_int), parameter, public :: SDL_APP_FAILURE  = 2

    character(*), parameter, public :: SDL_PROP_APP_METADATA_COPYRIGHT_STRING  = 'SDL.app.metadata.copyright'
    character(*), parameter, public :: SDL_PROP_APP_METADATA_CREATOR_STRING    = 'SDL.app.metadata.creator'
    character(*), parameter, public :: SDL_PROP_APP_METADATA_IDENTIFIER_STRING = 'SDL.app.metadata.identifier'
    character(*), parameter, public :: SDL_PROP_APP_METADATA_NAME_STRING       = 'SDL.app.metadata.name'
    character(*), parameter, public :: SDL_PROP_APP_METADATA_TYPE_STRING       = 'SDL.app.metadata.type'
    character(*), parameter, public :: SDL_PROP_APP_METADATA_URL_STRING        = 'SDL.app.metadata.url'
    character(*), parameter, public :: SDL_PROP_APP_METADATA_VERSION_STRING    = 'SDL.app.metadata.version'

    public :: sdl_main_thread_callback

    abstract interface
        ! void SDL_MainThreadCallback(void *userdata)
        subroutine sdl_main_thread_callback(user_data) bind(c)
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: user_data
        end subroutine sdl_main_thread_callback
    end interface

    public :: sdl_get_app_metadata_property_
    public :: sdl_init
    public :: sdl_init_sub_system
    public :: sdl_is_main_thread
    public :: sdl_quit
    public :: sdl_quit_sub_system
    public :: sdl_run_on_main_thread
    public :: sdl_set_app_metadata_
    public :: sdl_set_app_metadata_property_
    public :: sdl_was_init

    interface
        ! const char *SDL_GetAppMetadataProperty(const char *name)
        function sdl_get_app_metadata_property_(name) bind(c, name='SDL_GetAppMetadataProperty')
            import :: c_char, c_ptr
            implicit none
            character(c_char), intent(in) :: name
            type(c_ptr)                   :: sdl_get_app_metadata_property_
        end function sdl_get_app_metadata_property_

        ! bool SDL_Init(SDL_InitFlags flags)
        function sdl_init(flags) bind(c, name='SDL_Init')
            import :: c_bool, sdl_init_flags
            implicit none
            integer(sdl_init_flags), intent(in), value :: flags
            logical(c_bool)                            :: sdl_init
        end function sdl_init

        ! bool SDL_InitSubSystem(SDL_InitFlags flags)
        function sdl_init_sub_system(flags) bind(c, name='SDL_InitSubSystem')
            import :: c_bool, sdl_init_flags
            implicit none
            integer(sdl_init_flags), intent(in), value :: flags
            logical(c_bool)                            :: sdl_init_sub_system
        end function sdl_init_sub_system

        ! bool SDL_IsMainThread(void)
        function sdl_is_main_thread() bind(c, name='SDL_IsMainThread')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_is_main_thread
        end function sdl_is_main_thread

        ! void SDL_Quit(void)
        subroutine sdl_quit() bind(c, name='SDL_Quit')
        end subroutine sdl_quit

        ! void SDL_QuitSubSystem(SDL_InitFlags flags)
        subroutine sdl_quit_sub_system(flags) bind(c, name='SDL_QuitSubSystem')
            import :: sdl_init_flags
            implicit none
            integer(sdl_init_flags), intent(in), value :: flags
        end subroutine sdl_quit_sub_system

        ! bool SDL_RunOnMainThread(SDL_MainThreadCallback callback, void *userdata, bool wait_complete)
        function sdl_run_on_main_thread(callback, user_data, wait_complete) bind(c, name='SDL_RunOnMainThread')
            import :: c_bool, c_ptr, sdl_main_thread_callback
            implicit none
            procedure(sdl_main_thread_callback), bind(c) :: callback
            type(c_ptr),     intent(in), value           :: user_data
            logical(c_bool), intent(in), value           :: wait_complete
            logical(c_bool)                              :: sdl_run_on_main_thread
        end function sdl_run_on_main_thread

        ! bool SDL_SetAppMetadata(const char *appname, const char *appversion, const char *appidentifier)
        function sdl_set_app_metadata_(app_name, app_version, app_identifier) bind(c, name='SDL_SetAppMetadata')
            import :: c_bool, c_char
            implicit none
            character(c_char), intent(in) :: app_name
            character(c_char), intent(in) :: app_version
            character(c_char), intent(in) :: app_identifier
            logical(c_bool)               :: sdl_set_app_metadata_
        end function sdl_set_app_metadata_

        ! bool SDL_SetAppMetadataProperty(const char *name, const char *value)
        function sdl_set_app_metadata_property_(name, value) bind(c, name='SDL_SetAppMetadataProperty')
            import :: c_bool, c_char
            implicit none
            character(c_char), intent(in) :: name
            character(c_char), intent(in) :: value
            logical(c_bool)               :: sdl_set_app_metadata_property_
        end function sdl_set_app_metadata_property_

        ! SDL_InitFlags SDL_WasInit(SDL_InitFlags flags)
        function sdl_was_init(flags) bind(c, name='SDL_WasInit')
            import :: sdl_init_flags
            implicit none
            integer(sdl_init_flags), intent(in), value :: flags
            integer(sdl_init_flags)                    :: sdl_was_init
        end function sdl_was_init
    end interface

    public :: sdl_get_app_metadata_property
    public :: sdl_set_app_metadata
    public :: sdl_set_app_metadata_property
contains
    function sdl_get_app_metadata_property(name) result(str)
        character(*), intent(in)  :: name
        character(:), allocatable :: str

        type(c_ptr) :: ptr

        ptr = sdl_get_app_metadata_property_(f_c_str(name))
        call c_f_str_ptr(ptr, str)
    end function sdl_get_app_metadata_property

    function sdl_set_app_metadata(app_name, app_version, app_identifier) result(l)
        character(*), intent(in) :: app_name
        character(*), intent(in) :: app_version
        character(*), intent(in) :: app_identifier
        logical                  :: l

        l = sdl_set_app_metadata_(f_c_str(app_name), f_c_str(app_version), f_c_str(app_identifier))
    end function sdl_set_app_metadata

    function sdl_set_app_metadata_property(name, value) result(l)
        character(*), intent(in) :: name
        character(*), intent(in) :: value
        logical                  :: l

        l = sdl_set_app_metadata_property_(f_c_str(name), f_c_str(value))
    end function sdl_set_app_metadata_property
end module sdl3_init
