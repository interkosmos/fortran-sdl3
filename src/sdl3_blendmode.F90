! Author:  Philipp Engel
! Licence: ISC
module sdl3_blendmode
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    integer, parameter, public :: sdl_blend_mode = uint32 ! SDL_BlendMode
end module sdl3_blendmode
