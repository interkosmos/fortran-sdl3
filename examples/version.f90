! Author:  Philipp Engel
! Licence: ISC
program main
    !! Prints SDL version and system information to console.
    use :: sdl3
    implicit none (type, external)

    character(*), parameter :: YES = 'YES'
    character(*), parameter :: NO  = 'NO '

    integer :: major, minor, patch, version

    if (.not. sdl_init(SDL_INIT_VIDEO)) stop

    version = sdl_get_version()
    major   = version / 1000000
    minor   = modulo(version / 1000, 1000)
    patch   = modulo(version, 1000)

    print '("SDL Version........: ", 2(i0, "."), i0, " (", a, ")")', major, minor, patch, sdl_get_revision()
    print '("CPU Cache Line Size: ", i0)', sdl_get_cpu_cache_line_size()
    print '("CPU Cores..........: ", i0)', sdl_get_num_logical_cpu_cores()
    print '("SIMD Alignment.....: ", i0)', sdl_get_simd_alignment()
    print '("System Page Size...: ", i0)', sdl_get_system_page_size()
    print '("System RAM.........: ", i0)', sdl_get_system_ram()
    print '("AltiVec............: ", a)',  merge(YES, NO, sdl_has_alti_vec())
    print '("ARM SIMD...........: ", a)',  merge(YES, NO, sdl_has_arm_simd())
    print '("AVX................: ", a)',  merge(YES, NO, sdl_has_avx())
    print '("AVX2...............: ", a)',  merge(YES, NO, sdl_has_avx2())
    print '("AVX512F............: ", a)',  merge(YES, NO, sdl_has_avx512f())
    print '("LASX...............: ", a)',  merge(YES, NO, sdl_has_lasx())
    print '("LSX................: ", a)',  merge(YES, NO, sdl_has_lsx())
    print '("MMX................: ", a)',  merge(YES, NO, sdl_has_mmx())
    print '("NEON...............: ", a)',  merge(YES, NO, sdl_has_neon())
    print '("SSE................: ", a)',  merge(YES, NO, sdl_has_sse())
    print '("SSE2...............: ", a)',  merge(YES, NO, sdl_has_sse2())
    print '("SSE3...............: ", a)',  merge(YES, NO, sdl_has_sse3())
    print '("SSE41..............: ", a)',  merge(YES, NO, sdl_has_sse41())
    print '("SSE42..............: ", a)',  merge(YES, NO, sdl_has_sse42())
    ! print '("SVE2...............: ", a)',  merge(YES, NO, sdl_has_sve2())

    call sdl_quit()
end program main
