! Author:  Philipp Engel
! Licence: ISC
module sdl3_pixels
    !! Auto-generated Fortran 2023 interface bindings to `SDL3/SDL_pixels.h`.
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    integer(c_int), parameter, public :: SDL_ALPHA_OPAQUE      = 255
    integer(c_int), parameter, public :: SDL_ALPHA_TRANSPARENT = 0

    real(c_float), parameter, public :: SDL_ALPHA_OPAQUE_FLOAT      = 1.0
    real(c_float), parameter, public :: SDL_ALPHA_TRANSPARENT_FLOAT = 0.0

    ! enum SDL_PixelType
    integer(c_int), parameter, public :: SDL_PIXELTYPE_UNKNOWN  =  0
    integer(c_int), parameter, public :: SDL_PIXELTYPE_INDEX1   =  1
    integer(c_int), parameter, public :: SDL_PIXELTYPE_INDEX4   =  2
    integer(c_int), parameter, public :: SDL_PIXELTYPE_INDEX8   =  3
    integer(c_int), parameter, public :: SDL_PIXELTYPE_PACKED8  =  4
    integer(c_int), parameter, public :: SDL_PIXELTYPE_PACKED16 =  5
    integer(c_int), parameter, public :: SDL_PIXELTYPE_PACKED32 =  6
    integer(c_int), parameter, public :: SDL_PIXELTYPE_ARRAYU8  =  7
    integer(c_int), parameter, public :: SDL_PIXELTYPE_ARRAYU16 =  8
    integer(c_int), parameter, public :: SDL_PIXELTYPE_ARRAYU32 =  9
    integer(c_int), parameter, public :: SDL_PIXELTYPE_ARRAYF16 = 10
    integer(c_int), parameter, public :: SDL_PIXELTYPE_ARRAYF32 = 11
    integer(c_int), parameter, public :: SDL_PIXELTYPE_INDEX2   = 12

    ! enum SDL_BitmapOrder
    integer(c_int), parameter, public :: SDL_BITMAPORDER_NONE = 0
    integer(c_int), parameter, public :: SDL_BITMAPORDER_4321 = 1
    integer(c_int), parameter, public :: SDL_BITMAPORDER_1234 = 2

    ! enum SDL_PackedOrder
    integer(c_int), parameter, public :: SDL_PACKEDORDER_NONE = 0
    integer(c_int), parameter, public :: SDL_PACKEDORDER_XRGB = 1
    integer(c_int), parameter, public :: SDL_PACKEDORDER_RGBX = 2
    integer(c_int), parameter, public :: SDL_PACKEDORDER_ARGB = 3
    integer(c_int), parameter, public :: SDL_PACKEDORDER_RGBA = 4
    integer(c_int), parameter, public :: SDL_PACKEDORDER_XBGR = 5
    integer(c_int), parameter, public :: SDL_PACKEDORDER_BGRX = 6
    integer(c_int), parameter, public :: SDL_PACKEDORDER_ABGR = 7
    integer(c_int), parameter, public :: SDL_PACKEDORDER_BGRA = 8

    ! enum SDL_ArrayOrder
    integer(c_int), parameter, public :: SDL_ARRAYORDER_NONE = 0
    integer(c_int), parameter, public :: SDL_ARRAYORDER_RGB  = 1
    integer(c_int), parameter, public :: SDL_ARRAYORDER_RGBA = 2
    integer(c_int), parameter, public :: SDL_ARRAYORDER_ARGB = 3
    integer(c_int), parameter, public :: SDL_ARRAYORDER_BGR  = 4
    integer(c_int), parameter, public :: SDL_ARRAYORDER_BGRA = 5
    integer(c_int), parameter, public :: SDL_ARRAYORDER_ABGR = 6

    ! enum SDL_PackedLayout
    integer(c_int), parameter, public :: SDL_PACKEDLAYOUT_NONE    = 0
    integer(c_int), parameter, public :: SDL_PACKEDLAYOUT_332     = 1
    integer(c_int), parameter, public :: SDL_PACKEDLAYOUT_4444    = 2
    integer(c_int), parameter, public :: SDL_PACKEDLAYOUT_1555    = 3
    integer(c_int), parameter, public :: SDL_PACKEDLAYOUT_5551    = 4
    integer(c_int), parameter, public :: SDL_PACKEDLAYOUT_565     = 5
    integer(c_int), parameter, public :: SDL_PACKEDLAYOUT_8888    = 6
    integer(c_int), parameter, public :: SDL_PACKEDLAYOUT_2101010 = 7
    integer(c_int), parameter, public :: SDL_PACKEDLAYOUT_1010102 = 8

    ! enum SDL_PixelFormat
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_UNKNOWN       = 0
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_INDEX1LSB     = int(z'11100100', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_INDEX1MSB     = int(z'11200100', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_INDEX2LSB     = int(z'1c100200', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_INDEX2MSB     = int(z'1c200200', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_INDEX4LSB     = int(z'12100400', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_INDEX4MSB     = int(z'12200400', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_INDEX8        = int(z'13000801', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_RGB332        = int(z'14110801', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_XRGB4444      = int(z'15120c02', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_XBGR4444      = int(z'15520c02', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_XRGB1555      = int(z'15130f02', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_XBGR1555      = int(z'15530f02', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_ARGB4444      = int(z'15321002', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_RGBA4444      = int(z'15421002', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_ABGR4444      = int(z'15721002', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_BGRA4444      = int(z'15821002', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_ARGB1555      = int(z'15331002', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_RGBA5551      = int(z'15441002', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_ABGR1555      = int(z'15731002', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_BGRA5551      = int(z'15841002', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_RGB565        = int(z'15151002', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_BGR565        = int(z'15551002', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_RGB24         = int(z'17101803', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_BGR24         = int(z'17401803', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_XRGB8888      = int(z'16161804', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_RGBX8888      = int(z'16261804', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_XBGR8888      = int(z'16561804', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_BGRX8888      = int(z'16661804', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_ARGB8888      = int(z'16362004', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_RGBA8888      = int(z'16462004', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_ABGR8888      = int(z'16762004', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_BGRA8888      = int(z'16862004', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_XRGB2101010   = int(z'16172004', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_XBGR2101010   = int(z'16572004', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_ARGB2101010   = int(z'16372004', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_ABGR2101010   = int(z'16772004', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_RGB48         = int(z'18103006', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_BGR48         = int(z'18403006', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_RGBA64        = int(z'18204008', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_ARGB64        = int(z'18304008', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_BGRA64        = int(z'18504008', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_ABGR64        = int(z'18604008', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_RGB48_FLOAT   = int(z'1a103006', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_BGR48_FLOAT   = int(z'1a403006', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_RGBA64_FLOAT  = int(z'1a204008', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_ARGB64_FLOAT  = int(z'1a304008', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_BGRA64_FLOAT  = int(z'1a504008', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_ABGR64_FLOAT  = int(z'1a604008', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_RGB96_FLOAT   = int(z'1b10600c', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_BGR96_FLOAT   = int(z'1b40600c', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_RGBA128_FLOAT = int(z'1b208010', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_ARGB128_FLOAT = int(z'1b308010', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_BGRA128_FLOAT = int(z'1b508010', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_ABGR128_FLOAT = int(z'1b608010', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_YV12          = int(z'32315659', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_IYUV          = int(z'56555949', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_YUY2          = int(z'32595559', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_UYVY          = int(z'59565955', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_YVYU          = int(z'55595659', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_NV12          = int(z'3231564e', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_NV21          = int(z'3132564e', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_P010          = int(z'30313050', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_P408          = int(z'38303450', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_P416          = int(z'36313450', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_EXTERNAL_OES  = int(z'2053454f', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_MJPG          = int(z'47504a4d', c_unsigned)

#if SDL_BYTEORDER == SDL_BIG_ENDIAN

    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_RGBA32 = SDL_PIXELFORMAT_RGBA8888
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_ARGB32 = SDL_PIXELFORMAT_ARGB8888
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_BGRA32 = SDL_PIXELFORMAT_BGRA8888
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_ABGR32 = SDL_PIXELFORMAT_ABGR8888
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_RGBX32 = SDL_PIXELFORMAT_RGBX8888
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_XRGB32 = SDL_PIXELFORMAT_XRGB8888
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_BGRX32 = SDL_PIXELFORMAT_BGRX8888
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_XBGR32 = SDL_PIXELFORMAT_XBGR8888

#else

    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_RGBA32 = SDL_PIXELFORMAT_ABGR8888
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_ARGB32 = SDL_PIXELFORMAT_BGRA8888
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_BGRA32 = SDL_PIXELFORMAT_ARGB8888
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_ABGR32 = SDL_PIXELFORMAT_RGBA8888
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_RGBX32 = SDL_PIXELFORMAT_XBGR8888
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_XRGB32 = SDL_PIXELFORMAT_BGRX8888
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_BGRX32 = SDL_PIXELFORMAT_XRGB8888
    integer(c_unsigned), parameter, public :: SDL_PIXELFORMAT_XBGR32 = SDL_PIXELFORMAT_RGBX8888

#endif

    ! enum SDL_ColorType
    integer(c_int), parameter, public :: SDL_COLOR_TYPE_UNKNOWN = 0
    integer(c_int), parameter, public :: SDL_COLOR_TYPE_RGB     = 1
    integer(c_int), parameter, public :: SDL_COLOR_TYPE_YCBCR   = 2

    ! enum SDL_ColorRange
    integer(c_int), parameter, public :: SDL_COLOR_RANGE_UNKNOWN = 0
    integer(c_int), parameter, public :: SDL_COLOR_RANGE_LIMITED = 1
    integer(c_int), parameter, public :: SDL_COLOR_RANGE_FULL    = 2

    ! enum SDL_ColorPrimaries
    integer(c_int), parameter, public :: SDL_COLOR_PRIMARIES_UNKNOWN      = 0
    integer(c_int), parameter, public :: SDL_COLOR_PRIMARIES_BT709        = 1
    integer(c_int), parameter, public :: SDL_COLOR_PRIMARIES_UNSPECIFIED  = 2
    integer(c_int), parameter, public :: SDL_COLOR_PRIMARIES_BT470M       = 4
    integer(c_int), parameter, public :: SDL_COLOR_PRIMARIES_BT470BG      = 5
    integer(c_int), parameter, public :: SDL_COLOR_PRIMARIES_BT601        = 6
    integer(c_int), parameter, public :: SDL_COLOR_PRIMARIES_SMPTE240     = 7
    integer(c_int), parameter, public :: SDL_COLOR_PRIMARIES_GENERIC_FILM = 8
    integer(c_int), parameter, public :: SDL_COLOR_PRIMARIES_BT2020       = 9
    integer(c_int), parameter, public :: SDL_COLOR_PRIMARIES_XYZ          = 10
    integer(c_int), parameter, public :: SDL_COLOR_PRIMARIES_SMPTE431     = 11
    integer(c_int), parameter, public :: SDL_COLOR_PRIMARIES_SMPTE432     = 12
    integer(c_int), parameter, public :: SDL_COLOR_PRIMARIES_EBU3213      = 22
    integer(c_int), parameter, public :: SDL_COLOR_PRIMARIES_CUSTOM       = 31

    ! enum SDL_TransferCharacteristics
    integer(c_int), parameter, public :: SDL_TRANSFER_CHARACTERISTICS_UNKNOWN       = 0
    integer(c_int), parameter, public :: SDL_TRANSFER_CHARACTERISTICS_BT709         = 1
    integer(c_int), parameter, public :: SDL_TRANSFER_CHARACTERISTICS_UNSPECIFIED   = 2
    integer(c_int), parameter, public :: SDL_TRANSFER_CHARACTERISTICS_GAMMA22       = 4
    integer(c_int), parameter, public :: SDL_TRANSFER_CHARACTERISTICS_GAMMA28       = 5
    integer(c_int), parameter, public :: SDL_TRANSFER_CHARACTERISTICS_BT601         = 6
    integer(c_int), parameter, public :: SDL_TRANSFER_CHARACTERISTICS_SMPTE240      = 7
    integer(c_int), parameter, public :: SDL_TRANSFER_CHARACTERISTICS_LINEAR        = 8
    integer(c_int), parameter, public :: SDL_TRANSFER_CHARACTERISTICS_LOG100        = 9
    integer(c_int), parameter, public :: SDL_TRANSFER_CHARACTERISTICS_LOG100_SQRT10 = 10
    integer(c_int), parameter, public :: SDL_TRANSFER_CHARACTERISTICS_IEC61966      = 11
    integer(c_int), parameter, public :: SDL_TRANSFER_CHARACTERISTICS_BT1361        = 12
    integer(c_int), parameter, public :: SDL_TRANSFER_CHARACTERISTICS_SRGB          = 13
    integer(c_int), parameter, public :: SDL_TRANSFER_CHARACTERISTICS_BT2020_10BIT  = 14
    integer(c_int), parameter, public :: SDL_TRANSFER_CHARACTERISTICS_BT2020_12BIT  = 15
    integer(c_int), parameter, public :: SDL_TRANSFER_CHARACTERISTICS_PQ            = 16
    integer(c_int), parameter, public :: SDL_TRANSFER_CHARACTERISTICS_SMPTE428      = 17
    integer(c_int), parameter, public :: SDL_TRANSFER_CHARACTERISTICS_HLG           = 18
    integer(c_int), parameter, public :: SDL_TRANSFER_CHARACTERISTICS_CUSTOM        = 31

    ! enum SDL_MatrixCoefficients
    integer(c_int), parameter, public :: SDL_MATRIX_COEFFICIENTS_IDENTITY           = 0
    integer(c_int), parameter, public :: SDL_MATRIX_COEFFICIENTS_BT709              = 1
    integer(c_int), parameter, public :: SDL_MATRIX_COEFFICIENTS_UNSPECIFIED        = 2
    integer(c_int), parameter, public :: SDL_MATRIX_COEFFICIENTS_FCC                = 4
    integer(c_int), parameter, public :: SDL_MATRIX_COEFFICIENTS_BT470BG            = 5
    integer(c_int), parameter, public :: SDL_MATRIX_COEFFICIENTS_BT601              = 6
    integer(c_int), parameter, public :: SDL_MATRIX_COEFFICIENTS_SMPTE240           = 7
    integer(c_int), parameter, public :: SDL_MATRIX_COEFFICIENTS_YCGCO              = 8
    integer(c_int), parameter, public :: SDL_MATRIX_COEFFICIENTS_BT2020_NCL         = 9
    integer(c_int), parameter, public :: SDL_MATRIX_COEFFICIENTS_BT2020_CL          = 10
    integer(c_int), parameter, public :: SDL_MATRIX_COEFFICIENTS_SMPTE2085          = 11
    integer(c_int), parameter, public :: SDL_MATRIX_COEFFICIENTS_CHROMA_DERIVED_NCL = 12
    integer(c_int), parameter, public :: SDL_MATRIX_COEFFICIENTS_CHROMA_DERIVED_CL  = 13
    integer(c_int), parameter, public :: SDL_MATRIX_COEFFICIENTS_ICTCP              = 14
    integer(c_int), parameter, public :: SDL_MATRIX_COEFFICIENTS_CUSTOM             = 31

    ! enum SDL_ChromaLocation
    integer(c_int), parameter, public :: SDL_CHROMA_LOCATION_NONE    = 0
    integer(c_int), parameter, public :: SDL_CHROMA_LOCATION_LEFT    = 1
    integer(c_int), parameter, public :: SDL_CHROMA_LOCATION_CENTER  = 2
    integer(c_int), parameter, public :: SDL_CHROMA_LOCATION_TOPLEFT = 3

    ! enum SDL_Colorspace
    integer(c_unsigned), parameter, public :: SDL_COLORSPACE_UNKNOWN        = 0
    integer(c_unsigned), parameter, public :: SDL_COLORSPACE_SRGB           = int(z'120005a0', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_COLORSPACE_SRGB_LINEAR    = int(z'12000500', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_COLORSPACE_HDR10          = int(z'12002600', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_COLORSPACE_JPEG           = int(z'220004c6', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_COLORSPACE_BT601_LIMITED  = int(z'211018c6', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_COLORSPACE_BT601_FULL     = int(z'221018c6', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_COLORSPACE_BT709_LIMITED  = int(z'21100421', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_COLORSPACE_BT709_FULL     = int(z'22100421', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_COLORSPACE_BT2020_LIMITED = int(z'21102609', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_COLORSPACE_BT2020_FULL    = int(z'22102609', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_COLORSPACE_RGB_DEFAULT    = SDL_COLORSPACE_SRGB
    integer(c_unsigned), parameter, public :: SDL_COLORSPACE_YUV_DEFAULT    = SDL_COLORSPACE_BT601_LIMITED

    ! struct SDL_Color
    type, bind(c), public :: sdl_color
        integer(uint8) :: r = 0
        integer(uint8) :: g = 0
        integer(uint8) :: b = 0
        integer(uint8) :: a = 0
    end type sdl_color

    ! struct SDL_FColor
    type, bind(c), public :: sdl_fcolor
        real(c_float) :: r = 0.0
        real(c_float) :: g = 0.0
        real(c_float) :: b = 0.0
        real(c_float) :: a = 0.0
    end type sdl_fcolor

    ! struct SDL_Palette
    type, bind(c), public :: sdl_palette
        integer(c_int)           :: ncolors  = 0          ! number of elements in `colors`.
        type(c_ptr)              :: colors   = c_null_ptr ! an array of colors, `ncolors` long.
        integer(uint32), private :: version  = 0          ! internal use only, do not touch.
        integer(c_int),  private :: refcount = 0          ! internal use only, do not touch.
    end type sdl_palette

    ! struct SDL_PixelFormatDetails
    type, bind(c), public :: sdl_pixel_format_details
        integer(c_int)          :: format          = 0
        integer(uint8)          :: bits_per_pixel  = 0
        integer(uint8)          :: bytes_per_pixel = 0
        integer(uint8), private :: padding(2)      = 0
        integer(uint32)         :: R_mask          = 0
        integer(uint32)         :: G_mask          = 0
        integer(uint32)         :: B_mask          = 0
        integer(uint32)         :: A_mask          = 0
        integer(uint8)          :: R_bits          = 0
        integer(uint8)          :: G_bits          = 0
        integer(uint8)          :: B_bits          = 0
        integer(uint8)          :: A_bits          = 0
        integer(uint8)          :: R_shift         = 0
        integer(uint8)          :: G_shift         = 0
        integer(uint8)          :: B_shift         = 0
        integer(uint8)          :: A_shift         = 0
    end type sdl_pixel_format_details

    public :: sdl_create_palette
    public :: sdl_destroy_palette
    public :: sdl_get_masks_for_pixel_format
    public :: sdl_get_pixel_format_details
    public :: sdl_get_pixel_format_for_masks
    public :: sdl_get_pixel_format_name_
    public :: sdl_get_rgb
    public :: sdl_get_rgba
    public :: sdl_map_rgb
    public :: sdl_map_rgba
    public :: sdl_set_palette_colors

    interface
        ! SDL_Palette *SDL_CreatePalette(int ncolors)
        function sdl_create_palette(ncolors) bind(c, name='SDL_CreatePalette')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(in), value :: ncolors
            type(c_ptr)                       :: sdl_create_palette
        end function sdl_create_palette

        ! void SDL_DestroyPalette(SDL_Palette *palette)
        subroutine sdl_destroy_palette(palette) bind(c, name='SDL_DestroyPalette')
            import :: sdl_palette
            implicit none
            type(sdl_palette), intent(inout) :: palette
        end subroutine sdl_destroy_palette

        ! bool SDL_GetMasksForPixelFormat(SDL_PixelFormat format, int *bpp, Uint32 *Rmask, Uint32 *Gmask, Uint32 *Bmask, Uint32 *Amask)
        function sdl_get_masks_for_pixel_format(format, bpp, r_mask, g_mask, b_mask, a_mask) bind(c, name='SDL_GetMasksForPixelFormat')
            import :: c_bool, c_int, uint32
            implicit none
            integer(c_int),  intent(in), value :: format
            integer(c_int),  intent(out)       :: bpp
            integer(uint32), intent(out)       :: r_mask
            integer(uint32), intent(out)       :: g_mask
            integer(uint32), intent(out)       :: b_mask
            integer(uint32), intent(out)       :: a_mask
            logical(c_bool)                    :: sdl_get_masks_for_pixel_format
        end function sdl_get_masks_for_pixel_format

        ! const SDL_PixelFormatDetails *SDL_GetPixelFormatDetails(SDL_PixelFormat format)
        function sdl_get_pixel_format_details(format) bind(c, name='SDL_GetPixelFormatDetails')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(in), value :: format
            type(c_ptr)                       :: sdl_get_pixel_format_details
        end function sdl_get_pixel_format_details

        ! SDL_PixelFormat SDL_GetPixelFormatForMasks(int bpp, Uint32 Rmask, Uint32 Gmask, Uint32 Bmask, Uint32 Amask)
        function sdl_get_pixel_format_for_masks(bpp, r_mask, g_mask, b_mask, a_mask) bind(c, name='SDL_GetPixelFormatForMasks')
            import :: c_int, uint32
            implicit none
            integer(c_int),  intent(in), value :: bpp
            integer(uint32), intent(in), value :: r_mask
            integer(uint32), intent(in), value :: g_mask
            integer(uint32), intent(in), value :: b_mask
            integer(uint32), intent(in), value :: a_mask
            integer(c_int)                     :: sdl_get_pixel_format_for_masks
        end function sdl_get_pixel_format_for_masks

        ! const char *SDL_GetPixelFormatName(SDL_PixelFormat format)
        function sdl_get_pixel_format_name_(format) bind(c, name='SDL_GetPixelFormatName')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(in), value :: format
            type(c_ptr)                       :: sdl_get_pixel_format_name_
        end function sdl_get_pixel_format_name_

        ! void SDL_GetRGB(Uint32 pixelvalue, const SDL_PixelFormatDetails *format, const SDL_Palette *palette, Uint8 *r, Uint8 *g, Uint8 *b)
        subroutine sdl_get_rgb(pixel_value, format, palette, r, g, b) bind(c, name='SDL_GetRGB')
            import :: sdl_palette, sdl_pixel_format_details, uint32, uint8
            implicit none
            integer(uint32),                intent(in), value :: pixel_value
            type(sdl_pixel_format_details), intent(in)        :: format
            type(sdl_palette),              intent(in)        :: palette
            integer(uint8),                 intent(out)       :: r
            integer(uint8),                 intent(out)       :: g
            integer(uint8),                 intent(out)       :: b
        end subroutine sdl_get_rgb

        ! void SDL_GetRGBA(Uint32 pixelvalue, const SDL_PixelFormatDetails *format, const SDL_Palette *palette, Uint8 *r, Uint8 *g, Uint8 *b, Uint8 *a)
        subroutine sdl_get_rgba(pixel_value, format, palette, r, g, b, a) bind(c, name='SDL_GetRGBA')
            import :: sdl_palette, sdl_pixel_format_details, uint32, uint8
            implicit none
            integer(uint32),                intent(in), value :: pixel_value
            type(sdl_pixel_format_details), intent(in)        :: format
            type(sdl_palette),              intent(in)        :: palette
            integer(uint8),                 intent(out)       :: r
            integer(uint8),                 intent(out)       :: g
            integer(uint8),                 intent(out)       :: b
            integer(uint8),                 intent(out)       :: a
        end subroutine sdl_get_rgba

        ! Uint32 SDL_MapRGB(const SDL_PixelFormatDetails *format, const SDL_Palette *palette, Uint8 r, Uint8 g, Uint8 b)
        function sdl_map_rgb(format, palette, r, g, b) bind(c, name='SDL_MapRGB')
            import :: sdl_palette, sdl_pixel_format_details, uint32, uint8
            implicit none
            type(sdl_pixel_format_details), intent(in)        :: format
            type(sdl_palette),              intent(in)        :: palette
            integer(uint8),                 intent(in), value :: r
            integer(uint8),                 intent(in), value :: g
            integer(uint8),                 intent(in), value :: b
            integer(uint32)                                   :: sdl_map_rgb
        end function sdl_map_rgb

        ! Uint32 SDL_MapRGBA(const SDL_PixelFormatDetails *format, const SDL_Palette *palette, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
        function sdl_map_rgba(format, palette, r, g, b, a) bind(c, name='SDL_MapRGBA')
            import :: sdl_palette, sdl_pixel_format_details, uint32, uint8
            implicit none
            type(sdl_pixel_format_details), intent(in)        :: format
            type(sdl_palette),              intent(in)        :: palette
            integer(uint8),                 intent(in), value :: r
            integer(uint8),                 intent(in), value :: g
            integer(uint8),                 intent(in), value :: b
            integer(uint8),                 intent(in), value :: a
            integer(uint32)                                   :: sdl_map_rgba
        end function sdl_map_rgba

        ! bool SDL_SetPaletteColors(SDL_Palette *palette, const SDL_Color *colors, int firstcolor, int ncolors)
        function sdl_set_palette_colors(palette, colors, first_color, ncolors) bind(c, name='SDL_SetPaletteColors')
            import :: c_bool, c_int, sdl_color, sdl_palette
            implicit none
            type(sdl_palette), intent(inout)     :: palette
            type(sdl_color),   intent(in)        :: colors
            integer(c_int),    intent(in), value :: first_color
            integer(c_int),    intent(in), value :: ncolors
            logical(c_bool)                      :: sdl_set_palette_colors
        end function sdl_set_palette_colors
    end interface

    public sdl_get_pixel_format_name
contains
    function sdl_get_pixel_format_name(format) result(str)
        integer, intent(in)       :: format
        character(:), allocatable :: str

        type(c_ptr) :: ptr

        ptr = sdl_get_pixel_format_name_(format)
        call c_f_str_ptr(ptr, str)
    end function sdl_get_pixel_format_name
end module sdl3_pixels
