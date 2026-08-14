! Author:  Philipp Engel
! Licence: ISC
module sdl3_timer
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    integer, parameter, public :: sdl_timer_id = uint32 ! SDL_TimerID

    public :: sdl_timer_callback
    public :: sdl_ns_timer_callback

    abstract interface
        ! Uint32 SDL_TimerCallback(void *userdata, SDL_TimerID timerID, Uint32 interval)
        function sdl_timer_callback(user_data, timer_id, interval) bind(c)
            import :: c_ptr, uint32, sdl_timer_id
            implicit none
            type(c_ptr),           intent(in), value :: user_data
            integer(sdl_timer_id), intent(in), value :: timer_id
            integer(uint32),       intent(in), value :: interval
            integer(uint32)                          :: sdl_timer_callback
        end function sdl_timer_callback

        ! Uint64 SDL_NSTimerCallback(void *userdata, SDL_TimerID timerID, Uint64 interval)
        function sdl_ns_timer_callback(user_data, timer_id, interval) bind(c)
            import :: c_ptr, uint64, sdl_timer_id
            implicit none
            type(c_ptr),           intent(in), value :: user_data
            integer(sdl_timer_id), intent(in), value :: timer_id
            integer(uint64),       intent(in), value :: interval
            integer(uint64)                          :: sdl_ns_timer_callback
        end function sdl_ns_timer_callback
    end interface

    public :: sdl_add_timer
    public :: sdl_add_timer_ns
    public :: sdl_delay
    public :: sdl_delay_ns
    public :: sdl_delay_precise
    public :: sdl_get_performance_counter
    public :: sdl_get_performance_frequency
    public :: sdl_get_ticks
    public :: sdl_get_ticks_ns
    public :: sdl_remove_timer

    interface
        ! SDL_TimerID SDL_AddTimer(Uint32 interval, SDL_TimerCallback callback, void *userdata)
        function sdl_add_timer(interval, callback, user_data) bind(c, name='SDL_AddTimer')
            import :: c_ptr, sdl_timer_callback, sdl_timer_id, uint32
            implicit none
            integer(uint32), intent(in), value     :: interval
            procedure(sdl_timer_callback), bind(c) :: callback
            type(c_ptr),     intent(in), value     :: user_data
            integer(sdl_timer_id)                  :: sdl_add_timer
        end function sdl_add_timer

        ! SDL_TimerID SDL_AddTimerNS(Uint64 interval, SDL_NSTimerCallback callback, void *userdata)
        function sdl_add_timer_ns(interval, callback, user_data) bind(c, name='SDL_AddTimerNS')
            import :: c_ptr, sdl_ns_timer_callback, sdl_timer_id, uint64
            implicit none
            integer(uint64), intent(in), value        :: interval
            procedure(sdl_ns_timer_callback), bind(c) :: callback
            type(c_ptr),     intent(in), value        :: user_data
            integer(sdl_timer_id)                     :: sdl_add_timer_ns
        end function sdl_add_timer_ns

        ! void SDL_Delay(Uint32 ms)
        subroutine sdl_delay(ms) bind(c, name='SDL_Delay')
            import :: uint32
            implicit none
            integer(uint32), intent(in), value :: ms
        end subroutine sdl_delay

        ! void SDL_DelayNS(Uint64 ns)
        subroutine sdl_delay_ns(ns) bind(c, name='SDL_DelayNS')
            import :: uint64
            implicit none
            integer(uint64), intent(in), value :: ns
        end subroutine sdl_delay_ns

        ! void SDL_DelayPrecise(Uint64 ns)
        subroutine sdl_delay_precise(ns) bind(c, name='SDL_DelayPrecise')
            import :: uint64
            implicit none
            integer(uint64), intent(in), value :: ns
        end subroutine sdl_delay_precise

        ! Uint64 SDL_GetPerformanceCounter(void)
        function sdl_get_performance_counter() bind(c, name='SDL_GetPerformanceCounter')
            import :: uint64
            implicit none
            integer(uint64) :: sdl_get_performance_counter
        end function sdl_get_performance_counter

        ! Uint64 SDL_GetPerformanceFrequency(void)
        function sdl_get_performance_frequency() bind(c, name='SDL_GetPerformanceFrequency')
            import :: uint64
            implicit none
            integer(uint64) :: sdl_get_performance_frequency
        end function sdl_get_performance_frequency

        ! Uint64 SDL_GetTicks(void)
        function sdl_get_ticks() bind(c, name='SDL_GetTicks')
            import :: uint64
            implicit none
            integer(uint64) :: sdl_get_ticks
        end function sdl_get_ticks

        ! Uint64 SDL_GetTicksNS(void)
        function sdl_get_ticks_ns() bind(c, name='SDL_GetTicksNS')
            import :: uint64
            implicit none
            integer(uint64) :: sdl_get_ticks_ns
        end function sdl_get_ticks_ns

        ! bool SDL_RemoveTimer(SDL_TimerID id)
        function sdl_remove_timer(id) bind(c, name='SDL_RemoveTimer')
            import :: c_bool, sdl_timer_id
            implicit none
            integer(sdl_timer_id), intent(in), value :: id
            logical(c_bool)                          :: sdl_remove_timer
        end function sdl_remove_timer
    end interface
end module sdl3_timer
