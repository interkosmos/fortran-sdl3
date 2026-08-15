! Author:  Philipp Engel
! Licence: ISC
module sdl3_version
    !! Auto-generated Fortran 2023 interface bindings to `SDL3/SDL_version.h`.
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    public :: sdl_get_revision_
    public :: sdl_get_version

    interface
        ! const char *SDL_GetRevision(void)
        function sdl_get_revision_() bind(c, name='SDL_GetRevision')
            import :: c_ptr
            implicit none
            type(c_ptr) :: sdl_get_revision_
        end function sdl_get_revision_

        ! int SDL_GetVersion(void)
        function sdl_get_version() bind(c, name='SDL_GetVersion')
            import :: c_int
            implicit none
            integer(c_int) :: sdl_get_version
        end function sdl_get_version
    end interface

    public :: sdl_get_revision
contains
    function sdl_get_revision() result(str)
        character(:), allocatable :: str

        type(c_ptr) :: ptr

        ptr = sdl_get_revision_()
        call c_f_str_ptr(ptr, str)
    end function sdl_get_revision
end module sdl3_version
