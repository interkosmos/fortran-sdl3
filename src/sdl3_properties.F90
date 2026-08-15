! Author:  Philipp Engel
! Licence: ISC
module sdl3_properties
    !! Auto-generated Fortran 2023 interface bindings to `SDL3/SDL_properties.h`.
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    integer, parameter, public :: sdl_properties_id = uint32

    ! enum SDL_PropertyType
    integer(c_int), parameter, public :: SDL_PROPERTY_TYPE_INVALID = 0
    integer(c_int), parameter, public :: SDL_PROPERTY_TYPE_POINTER = 1
    integer(c_int), parameter, public :: SDL_PROPERTY_TYPE_STRING  = 2
    integer(c_int), parameter, public :: SDL_PROPERTY_TYPE_NUMBER  = 3
    integer(c_int), parameter, public :: SDL_PROPERTY_TYPE_FLOAT   = 4
    integer(c_int), parameter, public :: SDL_PROPERTY_TYPE_BOOLEAN = 5

    character(*), parameter, public :: SDL_PROP_NAME_STRING = 'SDL.name'

    public :: sdl_cleanup_property_callback
    public :: sdl_enumerate_properties_callback

    abstract interface
        ! void SDL_CleanupPropertyCallback(void *userdata, void *value)
        subroutine sdl_cleanup_property_callback(user_data, value) bind(c)
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: user_data
            type(c_ptr), intent(in), value :: value
        end subroutine sdl_cleanup_property_callback

        ! void SDL_EnumeratePropertiesCallback(void *userdata, SDL_PropertiesID props, const char *name)
        subroutine sdl_enumerate_properties_callback(user_data, props, name) bind(c)
            import :: c_ptr, sdl_properties_id
            implicit none
            type(c_ptr),                intent(in), value :: user_data
            integer(sdl_properties_id), intent(in), value :: props
            type(c_ptr),                intent(in), value :: name
        end subroutine sdl_enumerate_properties_callback
    end interface

    public :: sdl_clear_property
    public :: sdl_copy_properties
    public :: sdl_create_properties
    public :: sdl_destroy_properties
    public :: sdl_enumerate_properties
    public :: sdl_get_boolean_property
    public :: sdl_get_float_property
    public :: sdl_get_global_properties
    public :: sdl_get_num_properties
    public :: sdl_get_number_property
    public :: sdl_get_pointer_property
    public :: sdl_get_property_type
    public :: sdl_get_string_property
    public :: sdl_has_property
    public :: sdl_lock_properties
    public :: sdl_set_boolean_property
    public :: sdl_set_float_property
    public :: sdl_set_number_property
    public :: sdl_set_pointer_property
    public :: sdl_set_pointer_property_with_cleanup
    public :: sdl_set_string_property
    public :: sdl_unlock_properties

    interface
        ! bool SDL_ClearProperty(SDL_PropertiesID props, const char *name)
        function sdl_clear_property(props, name) bind(c, name='SDL_ClearProperty')
            import :: c_bool, c_char, sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
            character(c_char),          intent(in)        :: name
            logical(c_bool)                               :: sdl_clear_property
        end function sdl_clear_property

        ! bool SDL_CopyProperties(SDL_PropertiesID src, SDL_PropertiesID dst)
        function sdl_copy_properties(src, dst) bind(c, name='SDL_CopyProperties')
            import :: c_bool, sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value :: src
            integer(sdl_properties_id), intent(in), value :: dst
            logical(c_bool)                               :: sdl_copy_properties
        end function sdl_copy_properties

        ! SDL_PropertiesID SDL_CreateProperties(void)
        function sdl_create_properties() bind(c, name='SDL_CreateProperties')
            import :: sdl_properties_id
            implicit none
            integer(sdl_properties_id) :: sdl_create_properties
        end function sdl_create_properties

        ! void SDL_DestroyProperties(SDL_PropertiesID props)
        subroutine sdl_destroy_properties(props) bind(c, name='SDL_DestroyProperties')
            import :: sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
        end subroutine sdl_destroy_properties

        ! bool SDL_EnumerateProperties(SDL_PropertiesID props, SDL_EnumeratePropertiesCallback callback, void *userdata)
        function sdl_enumerate_properties(props, callback, userdata) bind(c, name='SDL_EnumerateProperties')
            import :: c_bool, c_ptr, sdl_enumerate_properties_callback, sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value         :: props
            procedure(sdl_enumerate_properties_callback), bind(c) :: callback
            type(c_ptr),                intent(in), value         :: userdata
            logical(c_bool)                                       :: sdl_enumerate_properties
        end function sdl_enumerate_properties

        ! bool SDL_GetBooleanProperty(SDL_PropertiesID props, const char *name, bool default_value)
        function sdl_get_boolean_property(props, name, default_value) bind(c, name='SDL_GetBooleanProperty')
            import :: c_bool, c_char, sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
            character(c_char),          intent(in)        :: name
            logical(c_bool),            intent(in), value :: default_value
            logical(c_bool)                               :: sdl_get_boolean_property
        end function sdl_get_boolean_property

        ! float SDL_GetFloatProperty(SDL_PropertiesID props, const char *name, float default_value)
        function sdl_get_float_property(props, name, default_value) bind(c, name='SDL_GetFloatProperty')
            import :: c_char, c_float, sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
            character(c_char),          intent(in)        :: name
            real(c_float),              intent(in), value :: default_value
            real(c_float)                                 :: sdl_get_float_property
        end function sdl_get_float_property

        ! SDL_PropertiesID SDL_GetGlobalProperties(void)
        function sdl_get_global_properties() bind(c, name='SDL_GetGlobalProperties')
            import :: sdl_properties_id
            implicit none
            integer(sdl_properties_id) :: sdl_get_global_properties
        end function sdl_get_global_properties

        ! int SDL_GetNumProperties(SDL_PropertiesID props)
        function sdl_get_num_properties(props) bind(c, name='SDL_GetNumProperties')
            import :: c_int, sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
            integer(c_int)                                :: sdl_get_num_properties
        end function sdl_get_num_properties

        ! Sint64 SDL_GetNumberProperty(SDL_PropertiesID props, const char *name, Sint64 default_value)
        function sdl_get_number_property(props, name, default_value) bind(c, name='SDL_GetNumberProperty')
            import :: c_char, sdl_properties_id, sint64
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
            character(c_char),          intent(in)        :: name
            integer(sint64),            intent(in), value :: default_value
            integer(sint64)                               :: sdl_get_number_property
        end function sdl_get_number_property

        ! void *SDL_GetPointerProperty(SDL_PropertiesID props, const char *name, void *default_value)
        function sdl_get_pointer_property(props, name, default_value) bind(c, name='SDL_GetPointerProperty')
            import :: c_char, c_ptr, sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
            character(c_char),          intent(in)        :: name
            type(c_ptr),                intent(in), value :: default_value
            type(c_ptr)                                   :: sdl_get_pointer_property
        end function sdl_get_pointer_property

        ! SDL_PropertyType SDL_GetPropertyType(SDL_PropertiesID props, const char *name)
        function sdl_get_property_type(props, name) bind(c, name='SDL_GetPropertyType')
            import :: c_char, c_int, sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
            character(c_char),          intent(in)        :: name
            integer(c_int)                                :: sdl_get_property_type
        end function sdl_get_property_type

        ! const char *SDL_GetStringProperty(SDL_PropertiesID props, const char *name, const char *default_value)
        function sdl_get_string_property(props, name, default_value) bind(c, name='SDL_GetStringProperty')
            import :: c_char, c_ptr, sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
            character(c_char),          intent(in)        :: name
            character(c_char),          intent(in)        :: default_value
            type(c_ptr)                                   :: sdl_get_string_property
        end function sdl_get_string_property

        ! bool SDL_HasProperty(SDL_PropertiesID props, const char *name)
        function sdl_has_property(props, name) bind(c, name='SDL_HasProperty')
            import :: c_bool, c_char, sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
            character(c_char),          intent(in)        :: name
            logical(c_bool)                               :: sdl_has_property
        end function sdl_has_property

        ! bool SDL_LockProperties(SDL_PropertiesID props)
        function sdl_lock_properties(props) bind(c, name='SDL_LockProperties')
            import :: c_bool, sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
            logical(c_bool)                               :: sdl_lock_properties
        end function sdl_lock_properties

        ! bool SDL_SetBooleanProperty(SDL_PropertiesID props, const char *name, bool value)
        function sdl_set_boolean_property(props, name, value) bind(c, name='SDL_SetBooleanProperty')
            import :: c_bool, c_char, sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
            character(c_char),          intent(in)        :: name
            logical(c_bool),            intent(in), value :: value
            logical(c_bool)                               :: sdl_set_boolean_property
        end function sdl_set_boolean_property

        ! bool SDL_SetFloatProperty(SDL_PropertiesID props, const char *name, float value)
        function sdl_set_float_property(props, name, value) bind(c, name='SDL_SetFloatProperty')
            import :: c_bool, c_char, c_float, sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
            character(c_char),          intent(in)        :: name
            real(c_float),              intent(in), value :: value
            logical(c_bool)                               :: sdl_set_float_property
        end function sdl_set_float_property

        ! bool SDL_SetNumberProperty(SDL_PropertiesID props, const char *name, Sint64 value)
        function sdl_set_number_property(props, name, value) bind(c, name='SDL_SetNumberProperty')
            import :: c_bool, c_char, sdl_properties_id, sint64
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
            character(c_char),          intent(in)        :: name
            integer(sint64),            intent(in), value :: value
            logical(c_bool)                               :: sdl_set_number_property
        end function sdl_set_number_property

        ! bool SDL_SetPointerProperty(SDL_PropertiesID props, const char *name, void *value)
        function sdl_set_pointer_property(props, name, value) bind(c, name='SDL_SetPointerProperty')
            import :: c_bool, c_char, c_ptr, sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
            character(c_char),          intent(in)        :: name
            type(c_ptr),                intent(in), value :: value
            logical(c_bool)                               :: sdl_set_pointer_property
        end function sdl_set_pointer_property

        ! bool SDL_SetPointerPropertyWithCleanup(SDL_PropertiesID props, const char *name, void *value, SDL_CleanupPropertyCallback cleanup, void *userdata)
        function sdl_set_pointer_property_with_cleanup(props, name, value, cleanup, userdata) bind(c, name='SDL_SetPointerPropertyWithCleanup')
            import :: c_bool, c_char, c_ptr, sdl_cleanup_property_callback, sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value     :: props
            character(c_char),          intent(in)            :: name
            type(c_ptr),                intent(in), value     :: value
            procedure(sdl_cleanup_property_callback), bind(c) :: cleanup
            type(c_ptr),                intent(in), value     :: userdata
            logical(c_bool)                                   :: sdl_set_pointer_property_with_cleanup
        end function sdl_set_pointer_property_with_cleanup

        ! bool SDL_SetStringProperty(SDL_PropertiesID props, const char *name, const char *value)
        function sdl_set_string_property(props, name, value) bind(c, name='SDL_SetStringProperty')
            import :: c_bool, c_char, sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
            character(c_char),          intent(in)        :: name
            character(c_char),          intent(in)        :: value
            logical(c_bool)                               :: sdl_set_string_property
        end function sdl_set_string_property

        ! void SDL_UnlockProperties(SDL_PropertiesID props)
        subroutine sdl_unlock_properties(props) bind(c, name='SDL_UnlockProperties')
            import :: sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
        end subroutine sdl_unlock_properties
    end interface
end module sdl3_properties
