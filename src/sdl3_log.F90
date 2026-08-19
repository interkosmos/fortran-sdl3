! Author:  Philipp Engel
! Licence: ISC
module sdl3_log
    !! Auto-generated Fortran 2023 interface bindings to `SDL3/SDL_log.h`.
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    ! enum SDL_LogCategory
    integer(c_int), parameter, public :: SDL_LOG_CATEGORY_APPLICATION =  0
    integer(c_int), parameter, public :: SDL_LOG_CATEGORY_ERROR       =  1
    integer(c_int), parameter, public :: SDL_LOG_CATEGORY_ASSERT      =  2
    integer(c_int), parameter, public :: SDL_LOG_CATEGORY_SYSTEM      =  3
    integer(c_int), parameter, public :: SDL_LOG_CATEGORY_AUDIO       =  4
    integer(c_int), parameter, public :: SDL_LOG_CATEGORY_VIDEO       =  5
    integer(c_int), parameter, public :: SDL_LOG_CATEGORY_RENDER      =  6
    integer(c_int), parameter, public :: SDL_LOG_CATEGORY_INPUT       =  7
    integer(c_int), parameter, public :: SDL_LOG_CATEGORY_TEST        =  8
    integer(c_int), parameter, public :: SDL_LOG_CATEGORY_GPU         =  9
    integer(c_int), parameter, public :: SDL_LOG_CATEGORY_RESERVED2   = 10
    integer(c_int), parameter, public :: SDL_LOG_CATEGORY_RESERVED3   = 11
    integer(c_int), parameter, public :: SDL_LOG_CATEGORY_RESERVED4   = 12
    integer(c_int), parameter, public :: SDL_LOG_CATEGORY_RESERVED5   = 13
    integer(c_int), parameter, public :: SDL_LOG_CATEGORY_RESERVED6   = 14
    integer(c_int), parameter, public :: SDL_LOG_CATEGORY_RESERVED7   = 15
    integer(c_int), parameter, public :: SDL_LOG_CATEGORY_RESERVED8   = 16
    integer(c_int), parameter, public :: SDL_LOG_CATEGORY_RESERVED9   = 17
    integer(c_int), parameter, public :: SDL_LOG_CATEGORY_RESERVED10  = 18
    integer(c_int), parameter, public :: SDL_LOG_CATEGORY_CUSTOM      = 19

    ! enum SDL_LogPriority
    integer(c_int), parameter, public :: SDL_LOG_PRIORITY_INVALID  = 0
    integer(c_int), parameter, public :: SDL_LOG_PRIORITY_TRACE    = 1
    integer(c_int), parameter, public :: SDL_LOG_PRIORITY_VERBOSE  = 2
    integer(c_int), parameter, public :: SDL_LOG_PRIORITY_DEBUG    = 3
    integer(c_int), parameter, public :: SDL_LOG_PRIORITY_INFO     = 4
    integer(c_int), parameter, public :: SDL_LOG_PRIORITY_WARN     = 5
    integer(c_int), parameter, public :: SDL_LOG_PRIORITY_ERROR    = 6
    integer(c_int), parameter, public :: SDL_LOG_PRIORITY_CRITICAL = 7
    integer(c_int), parameter, public :: SDL_LOG_PRIORITY_COUNT    = 8

    public :: sdl_log_output_function

    abstract interface
        ! void SDL_LogOutputFunction(void *userdata, int category, SDL_LogPriority priority, const char *message)
        subroutine sdl_log_output_function(user_data, category, priority, message) bind(c)
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: user_data
            integer(c_int), intent(in), value :: category
            integer(c_int), intent(in), value :: priority
            type(c_ptr),    intent(in), value :: message
        end subroutine sdl_log_output_function
    end interface

    public :: sdl_get_default_log_output_function
    public :: sdl_get_log_output_function
    public :: sdl_get_log_priority
    public :: sdl_log_critical_
    public :: sdl_log_debug_
    public :: sdl_log_error_
    public :: sdl_log_info_
    public :: sdl_log_message_
    public :: sdl_log_trace_
    public :: sdl_log_verbose_
    public :: sdl_log_warn_
    public :: sdl_log_
    public :: sdl_reset_log_priorities
    public :: sdl_set_log_output_function
    public :: sdl_set_log_priorities
    public :: sdl_set_log_priority
    public :: sdl_set_log_priority_prefix

    interface
        ! SDL_LogOutputFunction SDL_GetDefaultLogOutputFunction(void)
        function sdl_get_default_log_output_function() bind(c, name='SDL_GetDefaultLogOutputFunction')
            import :: c_funptr
            implicit none
            type(c_funptr) :: sdl_get_default_log_output_function
        end function sdl_get_default_log_output_function

        ! void SDL_GetLogOutputFunction(SDL_LogOutputFunction *callback, void **userdata)
        subroutine sdl_get_log_output_function(callback, user_data) bind(c, name='SDL_GetLogOutputFunction')
            import :: c_funptr, c_ptr
            implicit none
            type(c_funptr), intent(out) :: callback
            type(c_ptr),    intent(out) :: user_data
        end subroutine sdl_get_log_output_function

        ! SDL_LogPriority SDL_GetLogPriority(int category)
        function sdl_get_log_priority(category) bind(c, name='SDL_GetLogPriority')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: category
            integer(c_int)                    :: sdl_get_log_priority
        end function sdl_get_log_priority

        ! void SDL_LogCritical_(int category, const char *message)
        subroutine sdl_log_critical_(category, message) bind(c, name='SDL_LogCritical_')
            import :: c_char, c_int
            implicit none
            integer(c_int),    intent(in), value :: category
            character(c_char), intent(in)        :: message
        end subroutine sdl_log_critical_

        ! void SDL_LogDebug_(int category, const char *message)
        subroutine sdl_log_debug_(category, message) bind(c, name='SDL_LogDebug_')
            import :: c_char, c_int
            implicit none
            integer(c_int),    intent(in), value :: category
            character(c_char), intent(in)        :: message
        end subroutine sdl_log_debug_

        ! void SDL_LogError_(int category, const char *message)
        subroutine sdl_log_error_(category, message) bind(c, name='SDL_LogError_')
            import :: c_char, c_int
            implicit none
            integer(c_int),    intent(in), value :: category
            character(c_char), intent(in)        :: message
        end subroutine sdl_log_error_

        ! void SDL_LogInfo_(int category, const char *message)
        subroutine sdl_log_info_(category, message) bind(c, name='SDL_LogInfo_')
            import :: c_char, c_int
            implicit none
            integer(c_int),    intent(in), value :: category
            character(c_char), intent(in)        :: message
        end subroutine sdl_log_info_

        ! void SDL_LogMessage_(int category, SDL_LogPriority priority, const char *message)
        subroutine sdl_log_message_(category, priority, message) bind(c, name='SDL_LogMessage_')
            import :: c_char, c_int
            implicit none
            integer(c_int),    intent(in), value :: category
            integer(c_int),    intent(in), value :: priority
            character(c_char), intent(in)        :: message
        end subroutine sdl_log_message_

        ! void SDL_LogTrace_(int category, const char *message)
        subroutine sdl_log_trace_(category, message) bind(c, name='SDL_LogTrace_')
            import :: c_char, c_int
            implicit none
            integer(c_int),    intent(in), value :: category
            character(c_char), intent(in)        :: message
        end subroutine sdl_log_trace_

        ! void SDL_LogVerbose_(int category, const char *message)
        subroutine sdl_log_verbose_(category, message) bind(c, name='SDL_LogVerbose_')
            import :: c_char, c_int
            implicit none
            integer(c_int),    intent(in), value :: category
            character(c_char), intent(in)        :: message
        end subroutine sdl_log_verbose_

        ! void SDL_LogWarn_(int category, const char *message)
        subroutine sdl_log_warn_(category, message) bind(c, name='SDL_LogWarn_')
            import :: c_char, c_int
            implicit none
            integer(c_int),    intent(in), value :: category
            character(c_char), intent(in)        :: message
        end subroutine sdl_log_warn_

        ! void SDL_Log_(const char *message)
        subroutine sdl_log_(message) bind(c, name='SDL_Log_')
            import :: c_char
            implicit none
            character(c_char), intent(in) :: message
        end subroutine sdl_log_

        ! void SDL_ResetLogPriorities(void)
        subroutine sdl_reset_log_priorities() bind(c, name='SDL_ResetLogPriorities')
        end subroutine sdl_reset_log_priorities

        ! void SDL_SetLogOutputFunction(SDL_LogOutputFunction callback, void *userdata)
        subroutine sdl_set_log_output_function(callback, user_data) bind(c, name='SDL_SetLogOutputFunction')
            import :: c_ptr, sdl_log_output_function
            implicit none
            procedure(sdl_log_output_function), bind(c)           :: callback
            type(c_ptr),                        intent(in), value :: user_data
        end subroutine sdl_set_log_output_function

        ! void SDL_SetLogPriorities(SDL_LogPriority priority)
        subroutine sdl_set_log_priorities(priority) bind(c, name='SDL_SetLogPriorities')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: priority
        end subroutine sdl_set_log_priorities

        ! void SDL_SetLogPriority(int category, SDL_LogPriority priority)
        subroutine sdl_set_log_priority(category, priority) bind(c, name='SDL_SetLogPriority')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: category
            integer(c_int), intent(in), value :: priority
        end subroutine sdl_set_log_priority

        ! bool SDL_SetLogPriorityPrefix(SDL_LogPriority priority, const char *prefix)
        function sdl_set_log_priority_prefix(priority, prefix) bind(c, name='SDL_SetLogPriorityPrefix')
            import :: c_bool, c_char, c_int
            implicit none
            integer(c_int),    intent(in), value :: priority
            character(c_char), intent(in)        :: prefix
            logical(c_bool)                      :: sdl_set_log_priority_prefix
        end function sdl_set_log_priority_prefix
    end interface

    public :: sdl_log_critical
    public :: sdl_log_debug
    public :: sdl_log_error
    public :: sdl_log_info
    public :: sdl_log_message
    public :: sdl_log_trace
    public :: sdl_log_verbose
    public :: sdl_log_warn
    public :: sdl_log
contains
    subroutine sdl_log_critical(category, message)
        integer,      intent(in) :: category
        character(*), intent(in) :: message

        call sdl_log_critical_(category, f_c_str(message))
    end subroutine sdl_log_critical

    subroutine sdl_log_debug(category, message)
        integer,      intent(in) :: category
        character(*), intent(in) :: message

        call sdl_log_debug_(category, f_c_str(message))
    end subroutine sdl_log_debug

    subroutine sdl_log_error(category, message)
        integer,      intent(in) :: category
        character(*), intent(in) :: message

        call sdl_log_error_(category, f_c_str(message))
    end subroutine sdl_log_error

    subroutine sdl_log_info(category, message)
        integer,      intent(in) :: category
        character(*), intent(in) :: message

        call sdl_log_info_(category, f_c_str(message))
    end subroutine sdl_log_info

    subroutine sdl_log_message(category, priority, message)
        integer,      intent(in) :: category
        integer,      intent(in) :: priority
        character(*), intent(in) :: message

        call sdl_log_message_(category, priority, f_c_str(message))
    end subroutine sdl_log_message

    subroutine sdl_log_trace(category, message)
        integer,      intent(in) :: category
        character(*), intent(in) :: message

        call sdl_log_trace_(category, f_c_str(message))
    end subroutine sdl_log_trace

    subroutine sdl_log_verbose(category, message)
        integer,      intent(in) :: category
        character(*), intent(in) :: message

        call sdl_log_verbose_(category, f_c_str(message))
    end subroutine sdl_log_verbose

    subroutine sdl_log_warn(category, message)
        integer,      intent(in) :: category
        character(*), intent(in) :: message

        call sdl_log_warn_(category, f_c_str(message))
    end subroutine sdl_log_warn

    subroutine sdl_log(message)
        character(*), intent(in) :: message

        call sdl_log_(f_c_str(message))
    end subroutine sdl_log
end module sdl3_log
