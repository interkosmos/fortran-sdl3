! Author:  Philipp Engel
! Licence: ISC
module sdl3_surface
    !! Auto-generated Fortran 2023 interface bindings to `SDL3/SDL_surface.h`.
    use :: sdl3_blendmode
    use :: sdl3_pixels
    use :: sdl3_properties
    use :: sdl3_rect
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    integer, parameter, public :: sdl_surface_flags = uint32 !! SDL_SurfaceFlags

    character(*), parameter, public :: SDL_PROP_SURFACE_HDR_HEADROOM_FLOAT      = 'SDL.surface.HDR_headroom'
    character(*), parameter, public :: SDL_PROP_SURFACE_HOTSPOT_X_NUMBER        = 'SDL.surface.hotspot.x'
    character(*), parameter, public :: SDL_PROP_SURFACE_HOTSPOT_Y_NUMBER        = 'SDL.surface.hotspot.y'
    character(*), parameter, public :: SDL_PROP_SURFACE_ROTATION_FLOAT          = 'SDL.surface.rotation'
    character(*), parameter, public :: SDL_PROP_SURFACE_SDR_WHITE_POINT_FLOAT   = 'SDL.surface.SDR_white_point'
    character(*), parameter, public :: SDL_PROP_SURFACE_TONEMAP_OPERATOR_STRING = 'SDL.surface.tonemap'

    integer(c_unsigned), parameter, public :: SDL_SURFACE_PREALLOCATED = int(z'00000001', c_unsigned) !! Surface uses preallocated pixel memory.
    integer(c_unsigned), parameter, public :: SDL_SURFACE_LOCK_NEEDED  = int(z'00000002', c_unsigned) !! Surface needs to be locked to access pixels.
    integer(c_unsigned), parameter, public :: SDL_SURFACE_LOCKED       = int(z'00000004', c_unsigned) !! Surface is currently locked.
    integer(c_unsigned), parameter, public :: SDL_SURFACE_SIMD_ALIGNED = int(z'00000008', c_unsigned) !! Surface uses pixel memory allocated with SDL_aligned_alloc().

    ! SDL_MUSTLOCK(S) (((S)->flags & SDL_SURFACE_LOCK_NEEDED) == SDL_SURFACE_LOCK_NEEDED)

    ! enum SDL_ScaleMode
    integer(c_int), parameter, public :: SDL_SCALEMODE_INVALID  = -1
    integer(c_int), parameter, public :: SDL_SCALEMODE_NEAREST  =  0 !! nearest pixel sampling.
    integer(c_int), parameter, public :: SDL_SCALEMODE_LINEAR   =  1 !! linear filtering.
    integer(c_int), parameter, public :: SDL_SCALEMODE_PIXELART =  2 !! nearest pixel sampling with improved scaling for pixel art, available since SDL 3.4.0.

    ! enum SDL_FlipMode
    integer(c_int), parameter, public :: SDL_FLIP_NONE                    = 0                                           !! Do not flip.
    integer(c_int), parameter, public :: SDL_FLIP_HORIZONTAL              = 1                                           !! Flip horizontally.
    integer(c_int), parameter, public :: SDL_FLIP_VERTICAL                = 2                                           !! Flip vertically.
    integer(c_int), parameter, public :: SDL_FLIP_HORIZONTAL_AND_VERTICAL = ior(SDL_FLIP_HORIZONTAL, SDL_FLIP_VERTICAL) !! Flip horizontally and vertically (not a diagonal flip).

    ! struct SDL_Surface
    type, bind(c), public :: sdl_surface
        integer(sdl_surface_flags) :: flags     = 0          !! The flags of the surface, read-only.
        integer(c_int)             :: format    = 0          !! The format of the surface, read-only (`SDL_PixelFormat`).
        integer(c_int)             :: w         = 0          !! The width of the surface, read-only.
        integer(c_int)             :: h         = 0          !! The height of the surface, read-only.
        integer(c_int)             :: pitch     = 0          !! The distance in bytes between rows of pixels, read-only.
        type(c_ptr)                :: pixels    = c_null_ptr !! A pointer to the pixels of the surface, the pixels are writeable if non-NULL.
        integer(c_int)             :: ref_count = 0          !! Application reference count, used when freeing surface.
        type(c_ptr), private       :: reserved  = c_null_ptr !! Reserved for internal use.
    end type sdl_surface

    public :: sdl_add_surface_alternate_image
    public :: sdl_blit_surface
    public :: sdl_blit_surface9_grid
    public :: sdl_blit_surface_scaled
    public :: sdl_blit_surface_tiled
    public :: sdl_blit_surface_tiled_with_scale
    public :: sdl_blit_surface_unchecked
    public :: sdl_blit_surface_unchecked_scaled
    public :: sdl_clear_surface
    public :: sdl_convert_pixels
    public :: sdl_convert_pixels_and_colorspace
    public :: sdl_convert_surface
    public :: sdl_convert_surface_and_colorspace
    public :: sdl_create_surface
    public :: sdl_create_surface_from
    public :: sdl_create_surface_palette
    public :: sdl_destroy_surface
    public :: sdl_duplicate_surface
    public :: sdl_fill_surface_rect
    public :: sdl_fill_surface_rects
    public :: sdl_flip_surface
    public :: sdl_get_surface_alpha_mod
    public :: sdl_get_surface_blend_mode
    public :: sdl_get_surface_clip_rect
    public :: sdl_get_surface_color_key
    public :: sdl_get_surface_color_mod
    public :: sdl_get_surface_colorspace
    public :: sdl_get_surface_images
    public :: sdl_get_surface_palette
    public :: sdl_get_surface_properties
    public :: sdl_load_bmp
    public :: sdl_load_bmp_io
    public :: sdl_load_jpg
    public :: sdl_load_jpg_io
    public :: sdl_load_png
    public :: sdl_load_png_io
    public :: sdl_load_surface
    public :: sdl_load_surface_io
    public :: sdl_lock_surface
    public :: sdl_map_surface_rgb
    public :: sdl_map_surface_rgba
    public :: sdl_premultiply_alpha
    public :: sdl_premultiply_surface_alpha
    public :: sdl_read_surface_pixel
    public :: sdl_read_surface_pixel_float
    public :: sdl_remove_surface_alternate_images
    public :: sdl_rotate_surface
    public :: sdl_save_bmp
    public :: sdl_save_bmp_io
    public :: sdl_save_png
    public :: sdl_save_png_io
    public :: sdl_scale_surface
    public :: sdl_set_surface_alpha_mod
    public :: sdl_set_surface_blend_mode
    public :: sdl_set_surface_clip_rect
    public :: sdl_set_surface_color_key
    public :: sdl_set_surface_color_mod
    public :: sdl_set_surface_colorspace
    public :: sdl_set_surface_palette
    public :: sdl_set_surface_rle
    public :: sdl_stretch_surface
    public :: sdl_surface_has_alternate_images
    public :: sdl_surface_has_color_key
    public :: sdl_surface_has_rle
    public :: sdl_unlock_surface
    public :: sdl_write_surface_pixel
    public :: sdl_write_surface_pixel_float

    interface
        ! bool SDL_AddSurfaceAlternateImage(SDL_Surface *surface, SDL_Surface *image)
        function sdl_add_surface_alternate_image(surface, image) bind(c, name='SDL_AddSurfaceAlternateImage')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: surface
            type(c_ptr), intent(in), value :: image
            logical(c_bool)                :: sdl_add_surface_alternate_image
        end function sdl_add_surface_alternate_image

        ! bool SDL_BlitSurface(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect)
        function sdl_blit_surface(src, src_rect, dst, dst_rect) bind(c, name='SDL_BlitSurface')
            import :: c_bool, c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value    :: src
            type(sdl_rect), intent(in), optional :: src_rect
            type(c_ptr),    intent(in), value    :: dst
            type(sdl_rect), intent(in), optional :: dst_rect
            logical(c_bool)                      :: sdl_blit_surface
        end function sdl_blit_surface

        ! bool SDL_BlitSurface9Grid(SDL_Surface *src, const SDL_Rect *srcrect, int left_width, int right_width, int top_height, int bottom_height, float scale, SDL_ScaleMode scaleMode, SDL_Surface *dst, const SDL_Rect *dstrect)
        function sdl_blit_surface9_grid(src, src_rect, left_width, right_width, top_height, bottom_height, scale, scale_mode, dst, dst_rect) bind(c, name='SDL_BlitSurface9Grid')
            import :: c_bool, c_float, c_int, c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value :: src
            type(sdl_rect), intent(in)        :: src_rect
            integer(c_int), intent(in), value :: left_width
            integer(c_int), intent(in), value :: right_width
            integer(c_int), intent(in), value :: top_height
            integer(c_int), intent(in), value :: bottom_height
            real(c_float),  intent(in), value :: scale
            integer(c_int), intent(in), value :: scale_mode
            type(c_ptr),    intent(in), value :: dst
            type(sdl_rect), intent(in)        :: dst_rect
            logical(c_bool)                   :: sdl_blit_surface9_grid
        end function sdl_blit_surface9_grid

        ! bool SDL_BlitSurfaceScaled(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect, SDL_ScaleMode scaleMode)
        function sdl_blit_surface_scaled(src, src_rect, dst, dst_rect, scale_mode) bind(c, name='SDL_BlitSurfaceScaled')
            import :: c_bool, c_int, c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value    :: src
            type(sdl_rect), intent(in), optional :: src_rect
            type(c_ptr),    intent(in), value    :: dst
            type(sdl_rect), intent(in), optional :: dst_rect
            integer(c_int), intent(in), value    :: scale_mode
            logical(c_bool)                      :: sdl_blit_surface_scaled
        end function sdl_blit_surface_scaled

        ! bool SDL_BlitSurfaceTiled(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect)
        function sdl_blit_surface_tiled(src, src_rect, dst, dst_rect) bind(c, name='SDL_BlitSurfaceTiled')
            import :: c_bool, c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value :: src
            type(sdl_rect), intent(in)        :: src_rect
            type(c_ptr),    intent(in), value :: dst
            type(sdl_rect), intent(in)        :: dst_rect
            logical(c_bool)                   :: sdl_blit_surface_tiled
        end function sdl_blit_surface_tiled

        ! bool SDL_BlitSurfaceTiledWithScale(SDL_Surface *src, const SDL_Rect *srcrect, float scale, SDL_ScaleMode scaleMode, SDL_Surface *dst, const SDL_Rect *dstrect)
        function sdl_blit_surface_tiled_with_scale(src, src_rect, scale, scale_mode, dst, dst_rect) bind(c, name='SDL_BlitSurfaceTiledWithScale')
            import :: c_bool, c_float, c_int, c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value :: src
            type(sdl_rect), intent(in)        :: src_rect
            real(c_float),  intent(in), value :: scale
            integer(c_int), intent(in), value :: scale_mode
            type(c_ptr),    intent(in), value :: dst
            type(sdl_rect), intent(in)        :: dst_rect
            logical(c_bool)                   :: sdl_blit_surface_tiled_with_scale
        end function sdl_blit_surface_tiled_with_scale

        ! bool SDL_BlitSurfaceUnchecked(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect)
        function sdl_blit_surface_unchecked(src, src_rect, dst, dst_rect) bind(c, name='SDL_BlitSurfaceUnchecked')
            import :: c_bool, c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value :: src
            type(sdl_rect), intent(in)        :: src_rect
            type(c_ptr),    intent(in), value :: dst
            type(sdl_rect), intent(in)        :: dst_rect
            logical(c_bool)                   :: sdl_blit_surface_unchecked
        end function sdl_blit_surface_unchecked

        ! bool SDL_BlitSurfaceUncheckedScaled(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect, SDL_ScaleMode scaleMode)
        function sdl_blit_surface_unchecked_scaled(src, src_rect, dst, dst_rect, scale_mode) bind(c, name='SDL_BlitSurfaceUncheckedScaled')
            import :: c_bool, c_int, c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value :: src
            type(sdl_rect), intent(in)        :: src_rect
            type(c_ptr),    intent(in), value :: dst
            type(sdl_rect), intent(in)        :: dst_rect
            integer(c_int), intent(in), value :: scale_mode
            logical(c_bool)                   :: sdl_blit_surface_unchecked_scaled
        end function sdl_blit_surface_unchecked_scaled

        ! bool SDL_ClearSurface(SDL_Surface *surface, float r, float g, float b, float a)
        function sdl_clear_surface(surface, r, g, b, a) bind(c, name='SDL_ClearSurface')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: surface
            real(c_float), intent(in), value :: r
            real(c_float), intent(in), value :: g
            real(c_float), intent(in), value :: b
            real(c_float), intent(in), value :: a
            logical(c_bool)                  :: sdl_clear_surface
        end function sdl_clear_surface

        ! bool SDL_ConvertPixels(int width, int height, SDL_PixelFormat src_format, const void *src, int src_pitch, SDL_PixelFormat dst_format, void *dst, int dst_pitch)
        function sdl_convert_pixels(width, height, src_format, src, src_pitch, dst_format, dst, dst_pitch) bind(c, name='SDL_ConvertPixels')
            import :: c_bool, c_int, c_ptr
            implicit none
            integer(c_int), intent(in), value :: width
            integer(c_int), intent(in), value :: height
            integer(c_int), intent(in), value :: src_format
            type(c_ptr),    intent(in), value :: src
            integer(c_int), intent(in), value :: src_pitch
            integer(c_int), intent(in), value :: dst_format
            type(c_ptr),    intent(in), value :: dst
            integer(c_int), intent(in), value :: dst_pitch
            logical(c_bool)                   :: sdl_convert_pixels
        end function sdl_convert_pixels

        ! bool SDL_ConvertPixelsAndColorspace(int width, int height, SDL_PixelFormat src_format, SDL_Colorspace src_colorspace, SDL_PropertiesID src_properties, const void *src, int src_pitch, SDL_PixelFormat dst_format, SDL_Colorspace dst_colorspace, SDL_PropertiesID dst_properties, void *dst, int dst_pitch)
        function sdl_convert_pixels_and_colorspace(width, height, src_format, src_colorspace, src_properties, src, src_pitch, dst_format, dst_colorspace, dst_properties, dst, dst_pitch) bind(c, name='SDL_ConvertPixelsAndColorspace')
            import :: c_bool, c_int, c_ptr, sdl_properties_id
            implicit none
            integer(c_int),             intent(in), value :: width
            integer(c_int),             intent(in), value :: height
            integer(c_int),             intent(in), value :: src_format
            integer(c_int),             intent(in), value :: src_colorspace
            integer(sdl_properties_id), intent(in), value :: src_properties
            type(c_ptr),                intent(in), value :: src
            integer(c_int),             intent(in), value :: src_pitch
            integer(c_int),             intent(in), value :: dst_format
            integer(c_int),             intent(in), value :: dst_colorspace
            integer(sdl_properties_id), intent(in), value :: dst_properties
            type(c_ptr),                intent(in), value :: dst
            integer(c_int),             intent(in), value :: dst_pitch
            logical(c_bool)                               :: sdl_convert_pixels_and_colorspace
        end function sdl_convert_pixels_and_colorspace

        ! SDL_Surface *SDL_ConvertSurface(SDL_Surface *surface, SDL_PixelFormat format)
        function sdl_convert_surface(surface, format) bind(c, name='SDL_ConvertSurface')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: surface
            integer(c_int), intent(in), value :: format
            type(c_ptr)                       :: sdl_convert_surface
        end function sdl_convert_surface

        ! SDL_Surface *SDL_ConvertSurfaceAndColorspace(SDL_Surface *surface, SDL_PixelFormat format, SDL_Palette *palette, SDL_Colorspace colorspace, SDL_PropertiesID props)
        function sdl_convert_surface_and_colorspace(surface, format, palette, colorspace, props) bind(c, name='SDL_ConvertSurfaceAndColorspace')
            import :: c_int, c_ptr, sdl_palette, sdl_properties_id
            implicit none
            type(c_ptr),                intent(in), value :: surface
            integer(c_int),             intent(in), value :: format
            type(sdl_palette),          intent(in)        :: palette
            integer(c_int),             intent(in), value :: colorspace
            integer(sdl_properties_id), intent(in), value :: props
            type(c_ptr)                                   :: sdl_convert_surface_and_colorspace
        end function sdl_convert_surface_and_colorspace

        ! SDL_Surface *SDL_CreateSurface(int width, int height, SDL_PixelFormat format)
        function sdl_create_surface(width, height, format) bind(c, name='SDL_CreateSurface')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(in), value :: width
            integer(c_int), intent(in), value :: height
            integer(c_int), intent(in), value :: format
            type(c_ptr)                       :: sdl_create_surface
        end function sdl_create_surface

        ! SDL_Surface *SDL_CreateSurfaceFrom(int width, int height, SDL_PixelFormat format, void *pixels, int pitch)
        function sdl_create_surface_from(width, height, format, pixels, pitch) bind(c, name='SDL_CreateSurfaceFrom')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(in), value :: width
            integer(c_int), intent(in), value :: height
            integer(c_int), intent(in), value :: format
            type(c_ptr),    intent(in), value :: pixels
            integer(c_int), intent(in), value :: pitch
            type(c_ptr)                       :: sdl_create_surface_from
        end function sdl_create_surface_from

        ! SDL_Palette *SDL_CreateSurfacePalette(SDL_Surface *surface)
        function sdl_create_surface_palette(surface) bind(c, name='SDL_CreateSurfacePalette')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: surface
            type(c_ptr)                    :: sdl_create_surface_palette
        end function sdl_create_surface_palette

        ! void SDL_DestroySurface(SDL_Surface *surface)
        subroutine sdl_destroy_surface(surface) bind(c, name='SDL_DestroySurface')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: surface
        end subroutine sdl_destroy_surface

        ! SDL_Surface *SDL_DuplicateSurface(SDL_Surface *surface)
        function sdl_duplicate_surface(surface) bind(c, name='SDL_DuplicateSurface')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: surface
            type(c_ptr)                    :: sdl_duplicate_surface
        end function sdl_duplicate_surface

        ! bool SDL_FillSurfaceRect(SDL_Surface *dst, const SDL_Rect *rect, Uint32 color)
        function sdl_fill_surface_rect(dst, rect, color) bind(c, name='SDL_FillSurfaceRect')
            import :: c_bool, c_ptr, sdl_rect, uint32
            implicit none
            type(c_ptr),     intent(in), value :: dst
            type(sdl_rect),  intent(in)        :: rect
            integer(uint32), intent(in), value :: color
            logical(c_bool)                    :: sdl_fill_surface_rect
        end function sdl_fill_surface_rect

        ! bool SDL_FillSurfaceRects(SDL_Surface *dst, const SDL_Rect *rects, int count, Uint32 color)
        function sdl_fill_surface_rects(dst, rects, count, color) bind(c, name='SDL_FillSurfaceRects')
            import :: c_bool, c_int, c_ptr, sdl_rect, uint32
            implicit none
            type(c_ptr),     intent(in), value :: dst
            type(sdl_rect),  intent(in)        :: rects
            integer(c_int),  intent(in), value :: count
            integer(uint32), intent(in), value :: color
            logical(c_bool)                    :: sdl_fill_surface_rects
        end function sdl_fill_surface_rects

        ! bool SDL_FlipSurface(SDL_Surface *surface, SDL_FlipMode flip)
        function sdl_flip_surface(surface, flip) bind(c, name='SDL_FlipSurface')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: surface
            integer(c_int), intent(in), value :: flip
            logical(c_bool)                   :: sdl_flip_surface
        end function sdl_flip_surface

        ! bool SDL_GetSurfaceAlphaMod(SDL_Surface *surface, Uint8 *alpha)
        function sdl_get_surface_alpha_mod(surface, alpha) bind(c, name='SDL_GetSurfaceAlphaMod')
            import :: c_bool, c_ptr, uint8
            implicit none
            type(c_ptr),    intent(in), value :: surface
            integer(uint8), intent(out)       :: alpha
            logical(c_bool)                   :: sdl_get_surface_alpha_mod
        end function sdl_get_surface_alpha_mod

        ! bool SDL_GetSurfaceBlendMode(SDL_Surface *surface, SDL_BlendMode *blendMode)
        function sdl_get_surface_blend_mode(surface, blend_mode) bind(c, name='SDL_GetSurfaceBlendMode')
            import :: c_bool, c_ptr, sdl_blend_mode
            implicit none
            type(c_ptr),             intent(in), value :: surface
            integer(sdl_blend_mode), intent(out)       :: blend_mode
            logical(c_bool)                            :: sdl_get_surface_blend_mode
        end function sdl_get_surface_blend_mode

        ! bool SDL_GetSurfaceClipRect(SDL_Surface *surface, SDL_Rect *rect)
        function sdl_get_surface_clip_rect(surface, rect) bind(c, name='SDL_GetSurfaceClipRect')
            import :: c_bool, c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value :: surface
            type(sdl_rect), intent(out)       :: rect
            logical(c_bool)                   :: sdl_get_surface_clip_rect
        end function sdl_get_surface_clip_rect

        ! bool SDL_GetSurfaceColorKey(SDL_Surface *surface, Uint32 *key)
        function sdl_get_surface_color_key(surface, key) bind(c, name='SDL_GetSurfaceColorKey')
            import :: c_bool, c_ptr, uint32
            implicit none
            type(c_ptr),     intent(in), value :: surface
            integer(uint32), intent(out)       :: key
            logical(c_bool)                    :: sdl_get_surface_color_key
        end function sdl_get_surface_color_key

        ! bool SDL_GetSurfaceColorMod(SDL_Surface *surface, Uint8 *r, Uint8 *g, Uint8 *b)
        function sdl_get_surface_color_mod(surface, r, g, b) bind(c, name='SDL_GetSurfaceColorMod')
            import :: c_bool, c_ptr, uint8
            implicit none
            type(c_ptr),    intent(in), value :: surface
            integer(uint8), intent(out)       :: r
            integer(uint8), intent(out)       :: g
            integer(uint8), intent(out)       :: b
            logical(c_bool)                   :: sdl_get_surface_color_mod
        end function sdl_get_surface_color_mod

        ! SDL_Colorspace SDL_GetSurfaceColorspace(SDL_Surface *surface)
        function sdl_get_surface_colorspace(surface) bind(c, name='SDL_GetSurfaceColorspace')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: surface
            integer(c_int)                 :: sdl_get_surface_colorspace
        end function sdl_get_surface_colorspace

        ! SDL_Surface **SDL_GetSurfaceImages(SDL_Surface *surface, int *count)
        function sdl_get_surface_images(surface, count) bind(c, name='SDL_GetSurfaceImages')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: surface
            integer(c_int), intent(out)       :: count
            type(c_ptr)                       :: sdl_get_surface_images
        end function sdl_get_surface_images

        ! SDL_Palette *SDL_GetSurfacePalette(SDL_Surface *surface)
        function sdl_get_surface_palette(surface) bind(c, name='SDL_GetSurfacePalette')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: surface
            type(c_ptr)                    :: sdl_get_surface_palette
        end function sdl_get_surface_palette

        ! SDL_PropertiesID SDL_GetSurfaceProperties(SDL_Surface *surface)
        function sdl_get_surface_properties(surface) bind(c, name='SDL_GetSurfaceProperties')
            import :: c_ptr, sdl_properties_id
            implicit none
            type(c_ptr), intent(in), value :: surface
            integer(sdl_properties_id)     :: sdl_get_surface_properties
        end function sdl_get_surface_properties

        ! SDL_Surface *SDL_LoadBMP(const char *file)
        function sdl_load_bmp(file) bind(c, name='SDL_LoadBMP')
            import :: c_char, c_ptr
            implicit none
            character(c_char), intent(in) :: file
            type(c_ptr)                   :: sdl_load_bmp
        end function sdl_load_bmp

        ! SDL_Surface *SDL_LoadBMP_IO(SDL_IOStream *src, bool closeio)
        function sdl_load_bmp_io(src, close_io) bind(c, name='SDL_LoadBMP_IO')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: src
            logical(c_bool), intent(in), value :: close_io
            type(c_ptr)                        :: sdl_load_bmp_io
        end function sdl_load_bmp_io

        ! SDL_Surface *SDL_LoadJPG(const char *file)
        function sdl_load_jpg(file) bind(c, name='SDL_LoadJPG')
            import :: c_char, c_ptr
            implicit none
            character(c_char), intent(in) :: file
            type(c_ptr)                   :: sdl_load_jpg
        end function sdl_load_jpg

        ! SDL_Surface *SDL_LoadJPG_IO(SDL_IOStream *src, bool closeio)
        function sdl_load_jpg_io(src, close_io) bind(c, name='SDL_LoadJPG_IO')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: src
            logical(c_bool), intent(in), value :: close_io
            type(c_ptr)                        :: sdl_load_jpg_io
        end function sdl_load_jpg_io

        ! SDL_Surface *SDL_LoadPNG(const char *file)
        function sdl_load_png(file) bind(c, name='SDL_LoadPNG')
            import :: c_char, c_ptr
            implicit none
            character(c_char), intent(in) :: file
            type(c_ptr)                   :: sdl_load_png
        end function sdl_load_png

        ! SDL_Surface *SDL_LoadPNG_IO(SDL_IOStream *src, bool closeio)
        function sdl_load_png_io(src, close_io) bind(c, name='SDL_LoadPNG_IO')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: src
            logical(c_bool), intent(in), value :: close_io
            type(c_ptr)                        :: sdl_load_png_io
        end function sdl_load_png_io

        ! SDL_Surface *SDL_LoadSurface(const char *file)
        function sdl_load_surface(file) bind(c, name='SDL_LoadSurface')
            import :: c_char, c_ptr
            implicit none
            character(c_char), intent(in) :: file
            type(c_ptr)                   :: sdl_load_surface
        end function sdl_load_surface

        ! SDL_Surface *SDL_LoadSurface_IO(SDL_IOStream *src, bool closeio)
        function sdl_load_surface_io(src, close_io) bind(c, name='SDL_LoadSurface_IO')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: src
            logical(c_bool), intent(in), value :: close_io
            type(c_ptr)                        :: sdl_load_surface_io
        end function sdl_load_surface_io

        ! bool SDL_LockSurface(SDL_Surface *surface)
        function sdl_lock_surface(surface) bind(c, name='SDL_LockSurface')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: surface
            logical(c_bool)                :: sdl_lock_surface
        end function sdl_lock_surface

        ! Uint32 SDL_MapSurfaceRGB(SDL_Surface *surface, Uint8 r, Uint8 g, Uint8 b)
        function sdl_map_surface_rgb(surface, r, g, b) bind(c, name='SDL_MapSurfaceRGB')
            import :: c_ptr, uint32, uint8
            implicit none
            type(c_ptr),    intent(in), value :: surface
            integer(uint8), intent(in), value :: r
            integer(uint8), intent(in), value :: g
            integer(uint8), intent(in), value :: b
            integer(uint32)                   :: sdl_map_surface_rgb
        end function sdl_map_surface_rgb

        ! Uint32 SDL_MapSurfaceRGBA(SDL_Surface *surface, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
        function sdl_map_surface_rgba(surface, r, g, b, a) bind(c, name='SDL_MapSurfaceRGBA')
            import :: c_ptr, uint32, uint8
            implicit none
            type(c_ptr),    intent(in), value :: surface
            integer(uint8), intent(in), value :: r
            integer(uint8), intent(in), value :: g
            integer(uint8), intent(in), value :: b
            integer(uint8), intent(in), value :: a
            integer(uint32)                   :: sdl_map_surface_rgba
        end function sdl_map_surface_rgba

        ! bool SDL_PremultiplyAlpha(int width, int height, SDL_PixelFormat src_format, const void *src, int src_pitch, SDL_PixelFormat dst_format, void *dst, int dst_pitch, bool linear)
        function sdl_premultiply_alpha(width, height, src_format, src, src_pitch, dst_format, dst, dst_pitch, linear) bind(c, name='SDL_PremultiplyAlpha')
            import :: c_bool, c_int, c_ptr
            implicit none
            integer(c_int),  intent(in), value :: width
            integer(c_int),  intent(in), value :: height
            integer(c_int),  intent(in), value :: src_format
            type(c_ptr),     intent(in), value :: src
            integer(c_int),  intent(in), value :: src_pitch
            integer(c_int),  intent(in), value :: dst_format
            type(c_ptr),     intent(in), value :: dst
            integer(c_int),  intent(in), value :: dst_pitch
            logical(c_bool), intent(in), value :: linear
            logical(c_bool)                    :: sdl_premultiply_alpha
        end function sdl_premultiply_alpha

        ! bool SDL_PremultiplySurfaceAlpha(SDL_Surface *surface, bool linear)
        function sdl_premultiply_surface_alpha(surface, linear) bind(c, name='SDL_PremultiplySurfaceAlpha')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: surface
            logical(c_bool), intent(in), value :: linear
            logical(c_bool)                    :: sdl_premultiply_surface_alpha
        end function sdl_premultiply_surface_alpha

        ! bool SDL_ReadSurfacePixel(SDL_Surface *surface, int x, int y, Uint8 *r, Uint8 *g, Uint8 *b, Uint8 *a)
        function sdl_read_surface_pixel(surface, x, y, r, g, b, a) bind(c, name='SDL_ReadSurfacePixel')
            import :: c_bool, c_int, c_ptr, uint8
            implicit none
            type(c_ptr),    intent(in), value :: surface
            integer(c_int), intent(in), value :: x
            integer(c_int), intent(in), value :: y
            integer(uint8), intent(out)       :: r
            integer(uint8), intent(out)       :: g
            integer(uint8), intent(out)       :: b
            integer(uint8), intent(out)       :: a
            logical(c_bool)                   :: sdl_read_surface_pixel
        end function sdl_read_surface_pixel

        ! bool SDL_ReadSurfacePixelFloat(SDL_Surface *surface, int x, int y, float *r, float *g, float *b, float *a)
        function sdl_read_surface_pixel_float(surface, x, y, r, g, b, a) bind(c, name='SDL_ReadSurfacePixelFloat')
            import :: c_bool, c_float, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: surface
            integer(c_int), intent(in), value :: x
            integer(c_int), intent(in), value :: y
            real(c_float),  intent(out)       :: r
            real(c_float),  intent(out)       :: g
            real(c_float),  intent(out)       :: b
            real(c_float),  intent(out)       :: a
            logical(c_bool)                   :: sdl_read_surface_pixel_float
        end function sdl_read_surface_pixel_float

        ! void SDL_RemoveSurfaceAlternateImages(SDL_Surface *surface)
        subroutine sdl_remove_surface_alternate_images(surface) bind(c, name='SDL_RemoveSurfaceAlternateImages')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: surface
        end subroutine sdl_remove_surface_alternate_images

        ! SDL_Surface *SDL_RotateSurface(SDL_Surface *surface, float angle)
        function sdl_rotate_surface(surface, angle) bind(c, name='SDL_RotateSurface')
            import :: c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: surface
            real(c_float), intent(in), value :: angle
            type(c_ptr)                      :: sdl_rotate_surface
        end function sdl_rotate_surface

        ! bool SDL_SaveBMP(SDL_Surface *surface, const char *file)
        function sdl_save_bmp(surface, file) bind(c, name='SDL_SaveBMP')
            import :: c_bool, c_char, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: surface
            character(c_char), intent(in)        :: file
            logical(c_bool)                      :: sdl_save_bmp
        end function sdl_save_bmp

        ! bool SDL_SaveBMP_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio)
        function sdl_save_bmp_io(surface, dst, close_io) bind(c, name='SDL_SaveBMP_IO')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: surface
            type(c_ptr),     intent(in), value :: dst
            logical(c_bool), intent(in), value :: close_io
            logical(c_bool)                    :: sdl_save_bmp_io
        end function sdl_save_bmp_io

        ! bool SDL_SavePNG(SDL_Surface *surface, const char *file)
        function sdl_save_png(surface, file) bind(c, name='SDL_SavePNG')
            import :: c_bool, c_char, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: surface
            character(c_char), intent(in)        :: file
            logical(c_bool)                      :: sdl_save_png
        end function sdl_save_png

        ! bool SDL_SavePNG_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio)
        function sdl_save_png_io(surface, dst, close_io) bind(c, name='SDL_SavePNG_IO')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: surface
            type(c_ptr),     intent(in), value :: dst
            logical(c_bool), intent(in), value :: close_io
            logical(c_bool)                    :: sdl_save_png_io
        end function sdl_save_png_io

        ! SDL_Surface *SDL_ScaleSurface(SDL_Surface *surface, int width, int height, SDL_ScaleMode scaleMode)
        function sdl_scale_surface(surface, width, height, scale_mode) bind(c, name='SDL_ScaleSurface')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: surface
            integer(c_int), intent(in), value :: width
            integer(c_int), intent(in), value :: height
            integer(c_int), intent(in), value :: scale_mode
            type(c_ptr)                       :: sdl_scale_surface
        end function sdl_scale_surface

        ! bool SDL_SetSurfaceAlphaMod(SDL_Surface *surface, Uint8 alpha)
        function sdl_set_surface_alpha_mod(surface, alpha) bind(c, name='SDL_SetSurfaceAlphaMod')
            import :: c_bool, c_ptr, uint8
            implicit none
            type(c_ptr),    intent(in), value :: surface
            integer(uint8), intent(in), value :: alpha
            logical(c_bool)                   :: sdl_set_surface_alpha_mod
        end function sdl_set_surface_alpha_mod

        ! bool SDL_SetSurfaceBlendMode(SDL_Surface *surface, SDL_BlendMode blendMode)
        function sdl_set_surface_blend_mode(surface, blend_mode) bind(c, name='SDL_SetSurfaceBlendMode')
            import :: c_bool, c_ptr, sdl_blend_mode
            implicit none
            type(c_ptr),             intent(in), value :: surface
            integer(sdl_blend_mode), intent(in), value :: blend_mode
            logical(c_bool)                            :: sdl_set_surface_blend_mode
        end function sdl_set_surface_blend_mode

        ! bool SDL_SetSurfaceClipRect(SDL_Surface *surface, const SDL_Rect *rect)
        function sdl_set_surface_clip_rect(surface, rect) bind(c, name='SDL_SetSurfaceClipRect')
            import :: c_bool, c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value :: surface
            type(sdl_rect), intent(in)        :: rect
            logical(c_bool)                   :: sdl_set_surface_clip_rect
        end function sdl_set_surface_clip_rect

        ! bool SDL_SetSurfaceColorKey(SDL_Surface *surface, bool enabled, Uint32 key)
        function sdl_set_surface_color_key(surface, enabled, key) bind(c, name='SDL_SetSurfaceColorKey')
            import :: c_bool, c_ptr, uint32
            implicit none
            type(c_ptr),     intent(in), value :: surface
            logical(c_bool), intent(in), value :: enabled
            integer(uint32), intent(in), value :: key
            logical(c_bool)                    :: sdl_set_surface_color_key
        end function sdl_set_surface_color_key

        ! bool SDL_SetSurfaceColorMod(SDL_Surface *surface, Uint8 r, Uint8 g, Uint8 b)
        function sdl_set_surface_color_mod(surface, r, g, b) bind(c, name='SDL_SetSurfaceColorMod')
            import :: c_bool, c_ptr, uint8
            implicit none
            type(c_ptr),    intent(in), value :: surface
            integer(uint8), intent(in), value :: r
            integer(uint8), intent(in), value :: g
            integer(uint8), intent(in), value :: b
            logical(c_bool)                   :: sdl_set_surface_color_mod
        end function sdl_set_surface_color_mod

        ! bool SDL_SetSurfaceColorspace(SDL_Surface *surface, SDL_Colorspace colorspace)
        function sdl_set_surface_colorspace(surface, colorspace) bind(c, name='SDL_SetSurfaceColorspace')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: surface
            integer(c_int), intent(in), value :: colorspace
            logical(c_bool)                   :: sdl_set_surface_colorspace
        end function sdl_set_surface_colorspace

        ! bool SDL_SetSurfacePalette(SDL_Surface *surface, SDL_Palette *palette)
        function sdl_set_surface_palette(surface, palette) bind(c, name='SDL_SetSurfacePalette')
            import :: c_bool, c_ptr, sdl_palette
            implicit none
            type(c_ptr),       intent(in), value :: surface
            type(sdl_palette), intent(in)        :: palette
            logical(c_bool)                      :: sdl_set_surface_palette
        end function sdl_set_surface_palette

        ! bool SDL_SetSurfaceRLE(SDL_Surface *surface, bool enabled)
        function sdl_set_surface_rle(surface, enabled) bind(c, name='SDL_SetSurfaceRLE')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: surface
            logical(c_bool), intent(in), value :: enabled
            logical(c_bool)                    :: sdl_set_surface_rle
        end function sdl_set_surface_rle

        ! bool SDL_StretchSurface(SDL_Surface *src, const SDL_Rect *srcrect, SDL_Surface *dst, const SDL_Rect *dstrect, SDL_ScaleMode scaleMode)
        function sdl_stretch_surface(src, src_rect, dst, dst_rect, scale_mode) bind(c, name='SDL_StretchSurface')
            import :: c_bool, c_int, c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value :: src
            type(sdl_rect), intent(in)        :: src_rect
            type(c_ptr),    intent(in), value :: dst
            type(sdl_rect), intent(in)        :: dst_rect
            integer(c_int), intent(in), value :: scale_mode
            logical(c_bool)                   :: sdl_stretch_surface
        end function sdl_stretch_surface

        ! bool SDL_SurfaceHasAlternateImages(SDL_Surface *surface)
        function sdl_surface_has_alternate_images(surface) bind(c, name='SDL_SurfaceHasAlternateImages')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: surface
            logical(c_bool)                :: sdl_surface_has_alternate_images
        end function sdl_surface_has_alternate_images

        ! bool SDL_SurfaceHasColorKey(SDL_Surface *surface)
        function sdl_surface_has_color_key(surface) bind(c, name='SDL_SurfaceHasColorKey')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: surface
            logical(c_bool)                :: sdl_surface_has_color_key
        end function sdl_surface_has_color_key

        ! bool SDL_SurfaceHasRLE(SDL_Surface *surface)
        function sdl_surface_has_rle(surface) bind(c, name='SDL_SurfaceHasRLE')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: surface
            logical(c_bool)                :: sdl_surface_has_rle
        end function sdl_surface_has_rle

        ! void SDL_UnlockSurface(SDL_Surface *surface)
        subroutine sdl_unlock_surface(surface) bind(c, name='SDL_UnlockSurface')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: surface
        end subroutine sdl_unlock_surface

        ! bool SDL_WriteSurfacePixel(SDL_Surface *surface, int x, int y, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
        function sdl_write_surface_pixel(surface, x, y, r, g, b, a) bind(c, name='SDL_WriteSurfacePixel')
            import :: c_bool, c_int, c_ptr, uint8
            implicit none
            type(c_ptr),    intent(in), value :: surface
            integer(c_int), intent(in), value :: x
            integer(c_int), intent(in), value :: y
            integer(uint8), intent(in), value :: r
            integer(uint8), intent(in), value :: g
            integer(uint8), intent(in), value :: b
            integer(uint8), intent(in), value :: a
            logical(c_bool)                   :: sdl_write_surface_pixel
        end function sdl_write_surface_pixel

        ! bool SDL_WriteSurfacePixelFloat(SDL_Surface *surface, int x, int y, float r, float g, float b, float a)
        function sdl_write_surface_pixel_float(surface, x, y, r, g, b, a) bind(c, name='SDL_WriteSurfacePixelFloat')
            import :: c_bool, c_float, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: surface
            integer(c_int), intent(in), value :: x
            integer(c_int), intent(in), value :: y
            real(c_float),  intent(in), value :: r
            real(c_float),  intent(in), value :: g
            real(c_float),  intent(in), value :: b
            real(c_float),  intent(in), value :: a
            logical(c_bool)                   :: sdl_write_surface_pixel_float
        end function sdl_write_surface_pixel_float
    end interface
end module sdl3_surface
