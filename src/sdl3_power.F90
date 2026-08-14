! Author:  Philipp Engel
! Licence: ISC
module sdl3_power
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    ! enum SDL_PowerState
    integer(c_int), parameter, public :: SDL_POWERSTATE_ERROR      = -1
    integer(c_int), parameter, public :: SDL_POWERSTATE_UNKNOWN    =  0
    integer(c_int), parameter, public :: SDL_POWERSTATE_ON_BATTERY =  1
    integer(c_int), parameter, public :: SDL_POWERSTATE_NO_BATTERY =  2
    integer(c_int), parameter, public :: SDL_POWERSTATE_CHARGING   =  3
    integer(c_int), parameter, public :: SDL_POWERSTATE_CHARGED    =  4

    public :: sdl_get_power_info

    interface
        ! SDL_PowerState SDL_GetPowerInfo(int *seconds, int *percent)
        function sdl_get_power_info(seconds, percent) bind(c, name='SDL_GetPowerInfo')
            import :: c_int
            implicit none
            integer(c_int), intent(out) :: seconds
            integer(c_int), intent(out) :: percent
            integer(c_int)              :: sdl_get_power_info
        end function sdl_get_power_info
    end interface
end module sdl3_power
