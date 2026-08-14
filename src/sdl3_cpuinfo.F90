! Author:  Philipp Engel
! Licence: ISC
module sdl3_cpuinfo
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    public :: sdl_get_cpu_cache_line_size
    public :: sdl_get_num_logical_cpu_cores
    public :: sdl_get_simd_alignment
    public :: sdl_get_system_page_size
    public :: sdl_get_system_ram
    public :: sdl_has_alti_vec
    public :: sdl_has_arm_simd
    public :: sdl_has_avx
    public :: sdl_has_avx2
    public :: sdl_has_avx512f
    public :: sdl_has_lasx
    public :: sdl_has_lsx
    public :: sdl_has_mmx
    public :: sdl_has_neon
    public :: sdl_has_sse
    public :: sdl_has_sse2
    public :: sdl_has_sse3
    public :: sdl_has_sse41
    public :: sdl_has_sse42
    public :: sdl_has_sve2

    interface
        ! int SDL_GetCPUCacheLineSize(void)
        function sdl_get_cpu_cache_line_size() bind(c, name='SDL_GetCPUCacheLineSize')
            import :: c_int
            implicit none
            integer(c_int) :: sdl_get_cpu_cache_line_size
        end function sdl_get_cpu_cache_line_size

        ! int SDL_GetNumLogicalCPUCores(void)
        function sdl_get_num_logical_cpu_cores() bind(c, name='SDL_GetNumLogicalCPUCores')
            import :: c_int
            implicit none
            integer(c_int) :: sdl_get_num_logical_cpu_cores
        end function sdl_get_num_logical_cpu_cores

        ! size_t SDL_GetSIMDAlignment(void)
        function sdl_get_simd_alignment() bind(c, name='SDL_GetSIMDAlignment')
            import :: c_size_t
            implicit none
            integer(c_size_t) :: sdl_get_simd_alignment
        end function sdl_get_simd_alignment

        ! int SDL_GetSystemPageSize(void)
        function sdl_get_system_page_size() bind(c, name='SDL_GetSystemPageSize')
            import :: c_int
            implicit none
            integer(c_int) :: sdl_get_system_page_size
        end function sdl_get_system_page_size

        ! int SDL_GetSystemRAM(void)
        function sdl_get_system_ram() bind(c, name='SDL_GetSystemRAM')
            import :: c_int
            implicit none
            integer(c_int) :: sdl_get_system_ram
        end function sdl_get_system_ram

        ! bool SDL_HasARMSIMD(void)
        function sdl_has_arm_simd() bind(c, name='SDL_HasARMSIMD')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_has_arm_simd
        end function sdl_has_arm_simd

        ! bool SDL_HasAVX(void)
        function sdl_has_avx() bind(c, name='SDL_HasAVX')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_has_avx
        end function sdl_has_avx

        ! bool SDL_HasAVX2(void)
        function sdl_has_avx2() bind(c, name='SDL_HasAVX2')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_has_avx2
        end function sdl_has_avx2

        ! bool SDL_HasAVX512F(void)
        function sdl_has_avx512f() bind(c, name='SDL_HasAVX512F')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_has_avx512f
        end function sdl_has_avx512f

        ! bool SDL_HasAltiVec(void)
        function sdl_has_alti_vec() bind(c, name='SDL_HasAltiVec')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_has_alti_vec
        end function sdl_has_alti_vec

        ! bool SDL_HasLASX(void)
        function sdl_has_lasx() bind(c, name='SDL_HasLASX')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_has_lasx
        end function sdl_has_lasx

        ! bool SDL_HasLSX(void)
        function sdl_has_lsx() bind(c, name='SDL_HasLSX')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_has_lsx
        end function sdl_has_lsx

        ! bool SDL_HasMMX(void)
        function sdl_has_mmx() bind(c, name='SDL_HasMMX')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_has_mmx
        end function sdl_has_mmx

        ! bool SDL_HasNEON(void)
        function sdl_has_neon() bind(c, name='SDL_HasNEON')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_has_neon
        end function sdl_has_neon

        ! bool SDL_HasSSE(void)
        function sdl_has_sse() bind(c, name='SDL_HasSSE')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_has_sse
        end function sdl_has_sse

        ! bool SDL_HasSSE2(void)
        function sdl_has_sse2() bind(c, name='SDL_HasSSE2')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_has_sse2
        end function sdl_has_sse2

        ! bool SDL_HasSSE3(void)
        function sdl_has_sse3() bind(c, name='SDL_HasSSE3')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_has_sse3
        end function sdl_has_sse3

        ! bool SDL_HasSSE41(void)
        function sdl_has_sse41() bind(c, name='SDL_HasSSE41')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_has_sse41
        end function sdl_has_sse41

        ! bool SDL_HasSSE42(void)
        function sdl_has_sse42() bind(c, name='SDL_HasSSE42')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_has_sse42
        end function sdl_has_sse42

        ! bool SDL_HasSVE2(void)
        function sdl_has_sve2() bind(c, name='SDL_HasSVE2')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_has_sve2
        end function sdl_has_sve2
    end interface
end module sdl3_cpuinfo
