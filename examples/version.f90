! Author:  Philipp Engel
! Licence: ISC
program main
    !! Prints SDL version information to console.
    use :: sdl3
    implicit none (type, external)

    integer :: major, minor, patch, version

    if (.not. sdl_init(SDL_INIT_VIDEO)) stop

    version = sdl_get_version()
    major   = version / 1000000
    minor   = modulo(version / 1000, 1000)
    patch   = modulo(version, 1000)

    print '("SDL Version:  ", 2(i0, "."), i0)', major, minor, patch
    print '("SDL Revision: ", a)',              sdl_get_revision()

    call sdl_quit()
end program main
