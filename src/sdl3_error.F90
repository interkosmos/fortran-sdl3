! Author:  Philipp Engel
! Licence: ISC
module sdl3_error
    !! Auto-generated Fortran 2023 interface bindings to `SDL3/SDL_error.h`.
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    public :: sdl_clear_error
    public :: sdl_get_error
    public :: sdl_get_error_
    public :: sdl_out_of_memory
    ! public :: sdl_set_error

    interface
        ! bool SDL_ClearError(void)
        function sdl_clear_error() bind(c, name='SDL_ClearError')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_clear_error
        end function sdl_clear_error

        ! const char *SDL_GetError(void)
        function sdl_get_error_() bind(c, name='SDL_GetError')
            import :: c_ptr
            implicit none
            type(c_ptr) :: sdl_get_error_
        end function sdl_get_error_

        ! bool SDL_OutOfMemory(void)
        function sdl_out_of_memory() bind(c, name='SDL_OutOfMemory')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_out_of_memory
        end function sdl_out_of_memory

        ! bool SDL_SetError(const char *fmt, ...)
    end interface
contains
    function sdl_get_error() result(str)
        character(:), allocatable :: str

        type(c_ptr) :: ptr

        ptr = sdl_get_error_()
        call c_f_str_ptr(ptr, str)
    end function sdl_get_error
end module sdl3_error
