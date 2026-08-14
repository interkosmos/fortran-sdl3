! Author:  Philipp Engel
! Licence: ISC
module sdl3_endian
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    integer, parameter, public :: SDL_LIL_ENDIAN = 1234
    integer, parameter, public :: SDL_BIG_ENDIAN = 4321
    integer, parameter, public :: SDL_BYTEORDER  = merge(SDL_BIG_ENDIAN, SDL_LIL_ENDIAN, (iachar(transfer(1, mold='a')) == 0))
end module sdl3_endian
