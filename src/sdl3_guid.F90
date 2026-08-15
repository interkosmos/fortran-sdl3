! Author:  Philipp Engel
! Licence: ISC
module sdl3_guid
    !! Auto-generated Fortran 2023 interface bindings to `SDL3/SDL_guid.h`.
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    ! struct SDL_GUID
    type, bind(c), public :: sdl_guid
        integer(uint8) :: data(16) = 0
    end type sdl_guid

    public :: sdl_guid_to_string
    public :: sdl_string_to_guid

    interface
        ! void SDL_GUIDToString(SDL_GUID guid, char *pszGUID, int cbGUID)
        subroutine sdl_guid_to_string(guid, psz_guid, cb_guid) bind(c, name='SDL_GUIDToString')
            import :: c_char, c_int, sdl_guid
            implicit none
            type(sdl_guid),    intent(in), value :: guid
            character(c_char), intent(inout)     :: psz_guid
            integer(c_int),    intent(in), value :: cb_guid
        end subroutine sdl_guid_to_string

        ! SDL_GUID SDL_StringToGUID(const char *pchGUID)
        function sdl_string_to_guid(pch_guid) bind(c, name='SDL_StringToGUID')
            import :: c_char, sdl_guid
            implicit none
            character(c_char), intent(in) :: pch_guid
            type(sdl_guid)                :: sdl_string_to_guid
        end function sdl_string_to_guid
    end interface
end module sdl3_guid
