! Author:  Philipp Engel
! Licence: ISC
module sdl3_stdinc
    !! Auto-generated Fortran 2023 interface bindings to `SDL3/SDL_stdinc.h`.
    use, intrinsic :: iso_c_binding, only: c_associated, c_f_pointer, c_funloc, c_loc, c_sizeof, &
                                           c_bool, c_char, c_double, c_float, c_funptr, c_int, &
                                           c_int8_t, c_int16_t, c_int32_t, c_int64_t, c_intptr_t, &
                                           c_ptr, c_size_t, c_null_char, c_null_funptr, c_null_ptr

#if HAS_UNSIGNED

    use, intrinsic :: iso_c_binding, only: c_uint16_t, c_uint32_t, c_uint64_t, c_unsigned

#endif

#if HAS_F2023

    use, intrinsic :: iso_c_binding, only: c_f_str_ptr => c_f_strpointer, f_c_str => f_c_string

#endif

    implicit none (type, external)
    private

    public :: c_associated
    public :: c_f_pointer
    public :: c_funloc
    public :: c_loc
    public :: c_sizeof

    public :: c_bool
    public :: c_char
    public :: c_double
    public :: c_float
    public :: c_funptr
    public :: c_int
    public :: c_intptr_t
    public :: c_ptr
    public :: c_size_t
    public :: c_null_char
    public :: c_null_funptr
    public :: c_null_ptr

    integer, parameter, public :: sint8  = c_int8_t
    integer, parameter, public :: sint16 = c_int16_t
    integer, parameter, public :: sint32 = c_int32_t
    integer, parameter, public :: sint64 = c_int64_t

#if HAS_UNSIGNED

    integer, parameter, public :: uint8  = c_uint8_t
    integer, parameter, public :: uint16 = c_uint16_t
    integer, parameter, public :: uint32 = c_uint32_t
    integer, parameter, public :: uint64 = c_uint64_t

    public :: c_unsigned

#else

    integer, parameter, public :: uint8  = c_int8_t
    integer, parameter, public :: uint16 = c_int16_t
    integer, parameter, public :: uint32 = c_int32_t
    integer, parameter, public :: uint64 = c_int64_t

    integer, parameter, public :: c_unsigned = c_int

#endif

    integer, parameter, public :: sdl_time = sint64

    real, parameter, public :: SDL_FLT_EPSILON = 1.1920928955078125e-07

    public :: c_f_str_ptr
    public :: f_c_str

    public :: sint16_to_uint8
    public :: sint32_to_uint8
    public :: sint32_to_uint16
    public :: sint64_to_uint32
    public :: uint8_to_sint16
    public :: uint8_to_sint32
    public :: uint16_to_sint32
    public :: uint32_to_sint64
contains

#if !defined(HAS_F2023) || !HAS_F2023

    subroutine c_f_str_ptr(c, f)
        !! Copies a C string, passed as a C pointer, to a Fortran string.
        type(c_ptr),               intent(in)  :: c !! C string pointer.
        character(:), allocatable, intent(out) :: f !! Fortran string.

        interface
            function c_strlen(str) bind(c, name='strlen')
                import :: c_ptr, c_size_t
                implicit none
                type(c_ptr), intent(in), value :: str
                integer(c_size_t)              :: c_strlen
            end function c_strlen
        end interface

        copy_block: block
            integer(c_size_t) :: n

            if (.not. c_associated(c)) exit copy_block
            n = c_strlen(c)
            if (n <= 0) exit copy_block

            block
                character(n), pointer :: ptr
                call c_f_pointer(c, ptr)
                f = ptr
            end block

            return
        end block copy_block

        if (.not. allocated(f)) f = ''
    end subroutine c_f_str_ptr

    pure function f_c_str(f) result(c)
        !! Returns trimmed `string` with appended null-termination.
        character(*), intent(in)   :: f !! Fortran string.
        character(len_trim(f) + 1) :: c !! Null-terminated string.

        c = trim(f) // c_null_char
    end function f_c_str

#endif

    pure elemental function sint16_to_uint8(s) result(u)
        !! Converts signed 2-byte integer to "unsigned" 1-byte integer.
        integer(sint16), intent(in) :: s !! Signed integer.
        integer(uint8)              :: u !! "Unsigned" integer.

        integer(sint16) :: i

        i = modulo(s, int(z'100', sint16))

        if (i < int(z'80', sint16)) then
            u = int(i, uint8)
        else
            u = int(i - int(z'100', sint16), uint8)
        end if
    end function sint16_to_uint8

    pure elemental function sint32_to_uint8(s) result(u)
        !! Converts signed 4-byte integer to "unsigned" 1-byte integer.
        integer(sint32), intent(in) :: s !! Signed integer.
        integer(uint8)              :: u !! "Unsigned" integer.

        integer(sint32) :: i

        i = modulo(s, int(z'100', sint32))

        if (i < int(z'80', sint32)) then
            u = int(i, uint8)
        else
            u = int(i - int(z'100', sint32), uint8)
        end if
    end function sint32_to_uint8

    pure elemental function sint32_to_uint16(s) result(u)
        !! Converts signed 4-byte integer to "unsigned" 2-byte integer.
        integer(sint32), intent(in) :: s !! Signed integer.
        integer(uint16)             :: u !! "Unsigned" integer.

        integer(sint32) :: i

        i = modulo(s, int(z'10000', sint32))

        if (i < int(z'8000', sint32)) then
            u = int(i, uint16)
        else
            u = int(i - int(z'10000', sint32), uint16)
        end if
    end function sint32_to_uint16

    pure elemental function sint64_to_uint32(s) result(u)
        !! Converts signed 8-byte integer to "unsigned" 4-byte integer.
        integer(sint64), intent(in) :: s !! Signed integer.
        integer(uint32)             :: u !! "Unsigned" integer.

        integer(sint64) :: i

        i = modulo(s, int(z'100000000', sint64))

        if (i < int(z'80000000', sint64)) then
            u = int(i, uint32)
        else
            u = int(i - int(z'100000000', sint64), uint32)
        end if
    end function sint64_to_uint32

    pure elemental function uint8_to_sint16(u) result(s)
        !! Converts "unsigned" 1-byte integer to signed 2-byte integer.
        integer(uint8), intent(in) :: u !! "Unsigned" integer.
        integer(sint16)            :: s !! Signed integer.

        if (u >= 0) then
            s = int(u, sint16)
        else
            s = int(z'100', sint16) + int(u, sint16)
        end if
    end function uint8_to_sint16

    pure elemental function uint8_to_sint32(u) result(s)
        !! Converts "unsigned" 1-byte integer to signed 4-byte integer.
        integer(uint8), intent(in) :: u !! "Unsigned" integer.
        integer(sint32)            :: s !! Signed integer.

        if (u >= 0) then
            s = int(u, sint32)
        else
            s = int(z'100', sint32) + int(u, sint32)
        end if
    end function uint8_to_sint32

    pure elemental function uint16_to_sint32(u) result(s)
        !! Converts "unsigned" 2-byte integer to signed 4-byte integer.
        integer(uint16), intent(in) :: u !! "Unsigned" integer.
        integer(sint32)             :: s !! Signed integer.

        if (u >= 0) then
            s = int(u, sint32)
        else
            s = int(z'10000', sint32) + int(u, sint32)
        end if
    end function uint16_to_sint32

    pure elemental function uint32_to_sint64(u) result(s)
        !! Converts "unsigned" 4-byte integer to signed 8-byte integer.
        integer(uint32), intent(in) :: u !! "Unsigned" integer.
        integer(sint64)             :: s !! Signed integer.

        if (u >= 0) then
            s = int(u, sint64)
        else
            s = int(z'100000000', sint64) + int(u, sint64)
        end if
    end function uint32_to_sint64
end module sdl3_stdinc
