! Author:  Philipp Engel
! Licence: ISC
module sdl3_image
    !! Auto-generated Fortran 2023 interface bindings to `SDL3_image/SDL_image.h`.
    use :: sdl3_properties
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    ! enum IMG_AnimationDecoderStatus
    integer(c_int), parameter, public :: IMG_DECODER_STATUS_INVALID  = -1 !! The decoder is invalid.
    integer(c_int), parameter, public :: IMG_DECODER_STATUS_OK       =  0 !! The decoder is ready to decode the next frame.
    integer(c_int), parameter, public :: IMG_DECODER_STATUS_FAILED   =  1 !! The decoder failed to decode a frame, call SDL_GetError() for more information.
    integer(c_int), parameter, public :: IMG_DECODER_STATUS_COMPLETE =  2 !! No more frames available.

    character(*), parameter, public :: IMG_PROP_ANIMATION_ENCODER_CREATE_AVIF_KEYFRAME_INTERVAL_NUMBER = 'SDL_image.animation_encoder.create.avif.keyframe_interval'
    character(*), parameter, public :: IMG_PROP_ANIMATION_ENCODER_CREATE_AVIF_MAX_THREADS_NUMBER       = 'SDL_image.animation_encoder.create.avif.max_threads'
    character(*), parameter, public :: IMG_PROP_ANIMATION_ENCODER_CREATE_FILENAME_STRING               = 'SDL_image.animation_encoder.create.filename'
    character(*), parameter, public :: IMG_PROP_ANIMATION_ENCODER_CREATE_GIF_USE_LUT_BOOLEAN           = 'SDL_image.animation_encoder.create.gif.use_lut'
    character(*), parameter, public :: IMG_PROP_ANIMATION_ENCODER_CREATE_IOSTREAM_AUTOCLOSE_BOOLEAN    = 'SDL_image.animation_encoder.create.iostream.autoclose'
    character(*), parameter, public :: IMG_PROP_ANIMATION_ENCODER_CREATE_IOSTREAM_POINTER              = 'SDL_image.animation_encoder.create.iostream'
    character(*), parameter, public :: IMG_PROP_ANIMATION_ENCODER_CREATE_QUALITY_NUMBER                = 'SDL_image.animation_encoder.create.quality'
    character(*), parameter, public :: IMG_PROP_ANIMATION_ENCODER_CREATE_TIMEBASE_DENOMINATOR_NUMBER   = 'SDL_image.animation_encoder.create.timebase.denominator'
    character(*), parameter, public :: IMG_PROP_ANIMATION_ENCODER_CREATE_TIMEBASE_NUMERATOR_NUMBER     = 'SDL_image.animation_encoder.create.timebase.numerator'
    character(*), parameter, public :: IMG_PROP_ANIMATION_ENCODER_CREATE_TYPE_STRING                   = 'SDL_image.animation_encoder.create.type'

    character(*), parameter, public :: IMG_PROP_ANIMATION_DECODER_CREATE_AVIF_ALLOW_INCR_BOOLEAN       = 'SDL_image.animation_decoder.create.avif.allow_incremental' ! IMG_PROP_ANIMATION_DECODER_CREATE_AVIF_ALLOW_INCREMENTAL_BOOLEAN
    character(*), parameter, public :: IMG_PROP_ANIMATION_DECODER_CREATE_AVIF_ALLOW_PROG_BOOLEAN       = 'SDL_image.animation_decoder.create.avif.allow_progressive' ! IMG_PROP_ANIMATION_DECODER_CREATE_AVIF_ALLOW_PROGRESSIVE_BOOLEAN
    character(*), parameter, public :: IMG_PROP_ANIMATION_DECODER_CREATE_AVIF_MAX_THREADS_NUMBER       = 'SDL_image.animation_decoder.create.avif.max_threads'
    character(*), parameter, public :: IMG_PROP_ANIMATION_DECODER_CREATE_FILENAME_STRING               = 'SDL_image.animation_decoder.create.filename'
    character(*), parameter, public :: IMG_PROP_ANIMATION_DECODER_CREATE_GIF_NUM_COLORS_NUMBER         = 'SDL_image.animation_encoder.create.gif.num_colors'
    character(*), parameter, public :: IMG_PROP_ANIMATION_DECODER_CREATE_GIF_TRANS_COLOR_IDX_NUMBER    = 'SDL_image.animation_encoder.create.gif.transparent_color_index' ! IMG_PROP_ANIMATION_DECODER_CREATE_GIF_TRANSPARENT_COLOR_INDEX_NUMBER
    character(*), parameter, public :: IMG_PROP_ANIMATION_DECODER_CREATE_IOSTREAM_AUTOCLOSE_BOOLEAN    = 'SDL_image.animation_decoder.create.iostream.autoclose'
    character(*), parameter, public :: IMG_PROP_ANIMATION_DECODER_CREATE_IOSTREAM_POINTER              = 'SDL_image.animation_decoder.create.iostream'
    character(*), parameter, public :: IMG_PROP_ANIMATION_DECODER_CREATE_TIMEBASE_DENOMINATOR_NUMBER   = 'SDL_image.animation_decoder.create.timebase.denominator'
    character(*), parameter, public :: IMG_PROP_ANIMATION_DECODER_CREATE_TIMEBASE_NUMERATOR_NUMBER     = 'SDL_image.animation_decoder.create.timebase.numerator'
    character(*), parameter, public :: IMG_PROP_ANIMATION_DECODER_CREATE_TYPE_STRING                   = 'SDL_image.animation_decoder.create.type'

    character(*), parameter, public :: IMG_PROP_METADATA_AUTHOR_STRING        = 'SDL_image.metadata.author'
    character(*), parameter, public :: IMG_PROP_METADATA_COPYRIGHT_STRING     = 'SDL_image.metadata.copyright'
    character(*), parameter, public :: IMG_PROP_METADATA_CREATION_TIME_STRING = 'SDL_image.metadata.creation_time'
    character(*), parameter, public :: IMG_PROP_METADATA_DESCRIPTION_STRING   = 'SDL_image.metadata.description'
    character(*), parameter, public :: IMG_PROP_METADATA_FRAME_COUNT_NUMBER   = 'SDL_image.metadata.frame_count'
    character(*), parameter, public :: IMG_PROP_METADATA_IGNORE_PROPS_BOOLEAN = 'SDL_image.metadata.ignore_props'
    character(*), parameter, public :: IMG_PROP_METADATA_LOOP_COUNT_NUMBER    = 'SDL_image.metadata.loop_count'
    character(*), parameter, public :: IMG_PROP_METADATA_TITLE_STRING         = 'SDL_image.metadata.title'

    ! struct IMG_Animation
    type, bind(c), public :: img_animation
        integer(c_int) :: w      = 0          !! The width of the frames.
        integer(c_int) :: h      = 0          !! The height of the frames.
        integer(c_int) :: count  = 0          !! The number of frames.
        type(c_ptr)    :: frames = c_null_ptr !! `SDL_Surface **frames`: an array of frames.
        type(c_ptr)    :: delays = c_null_ptr !! `int *delays`: an array of frame delays, in milliseconds.
    end type img_animation

    ! struct IMG_AnimationEncoder IMG_AnimationEncoder
    ! struct IMG_AnimationDecoder IMG_AnimationDecoder

    public :: img_add_animation_encoder_frame
    public :: img_close_animation_decoder
    public :: img_close_animation_encoder
    public :: img_create_animated_cursor
    public :: img_create_animation_decoder
    public :: img_create_animation_decoder_io
    public :: img_create_animation_decoder_with_properties
    public :: img_create_animation_encoder
    public :: img_create_animation_encoder_io
    public :: img_create_animation_encoder_with_properties
    public :: img_free_animation
    public :: img_get_animation_decoder_frame
    public :: img_get_animation_decoder_properties
    public :: img_get_animation_decoder_status
    public :: img_get_clipboard_image
    public :: img_is_ani
    public :: img_is_avif
    public :: img_is_bmp
    public :: img_is_cur
    public :: img_is_gif
    public :: img_is_ico
    public :: img_is_jpg
    public :: img_is_jxl
    public :: img_is_lbm
    public :: img_is_pcx
    public :: img_is_png
    public :: img_is_pnm
    public :: img_is_qoi
    public :: img_is_svg
    public :: img_is_tif
    public :: img_is_webp
    public :: img_is_xcf
    public :: img_is_xpm
    public :: img_is_xv
    public :: img_load
    public :: img_load_ani_animation_io
    public :: img_load_animation
    public :: img_load_animation_io
    public :: img_load_animation_typed_io
    public :: img_load_apng_animation_io
    public :: img_load_avif_animation_io
    public :: img_load_avif_io
    public :: img_load_bmp_io
    public :: img_load_cur_io
    public :: img_load_gif_animation_io
    public :: img_load_gif_io
    public :: img_load_gpu_texture
    public :: img_load_gpu_texture_io
    public :: img_load_gpu_texture_typed_io
    public :: img_load_ico_io
    public :: img_load_io
    public :: img_load_jpg_io
    public :: img_load_jxl_io
    public :: img_load_lbm_io
    public :: img_load_pcx_io
    public :: img_load_png_io
    public :: img_load_pnm_io
    public :: img_load_qoi_io
    public :: img_load_sized_svg_io
    public :: img_load_svg_io
    public :: img_load_texture
    public :: img_load_texture_io
    public :: img_load_texture_typed_io
    public :: img_load_tga_io
    public :: img_load_tif_io
    public :: img_load_typed_io
    public :: img_load_webp_animation_io
    public :: img_load_webp_io
    public :: img_load_xcf_io
    public :: img_load_xpm_io
    public :: img_load_xv_io
    public :: img_read_xpm_from_array
    public :: img_read_xpm_from_array_to_rgb888
    public :: img_reset_animation_decoder
    public :: img_save
    public :: img_save_ani_animation_io
    public :: img_save_animation
    public :: img_save_animation_typed_io
    public :: img_save_apng_animation_io
    public :: img_save_avif
    public :: img_save_avif_animation_io
    public :: img_save_avif_io
    public :: img_save_bmp
    public :: img_save_bmp_io
    public :: img_save_cur
    public :: img_save_cur_io
    public :: img_save_gif
    public :: img_save_gif_animation_io
    public :: img_save_gif_io
    public :: img_save_ico
    public :: img_save_ico_io
    public :: img_save_jpg
    public :: img_save_jpg_io
    public :: img_save_png
    public :: img_save_png_io
    public :: img_save_tga
    public :: img_save_tga_io
    public :: img_save_typed_io
    public :: img_save_webp
    public :: img_save_webp_animation_io
    public :: img_save_webp_io
    public :: img_version

    interface
        ! bool IMG_AddAnimationEncoderFrame(IMG_AnimationEncoder *encoder, SDL_Surface *surface, Uint64 duration)
        function img_add_animation_encoder_frame(encoder, surface, duration) bind(c, name='IMG_AddAnimationEncoderFrame')
            import :: c_bool, c_ptr, uint64
            implicit none
            type(c_ptr),     intent(in), value :: encoder
            type(c_ptr),     intent(in), value :: surface
            integer(uint64), intent(in), value :: duration
            logical(c_bool)                    :: img_add_animation_encoder_frame
        end function img_add_animation_encoder_frame

        ! bool IMG_CloseAnimationDecoder(IMG_AnimationDecoder *decoder)
        function img_close_animation_decoder(decoder) bind(c, name='IMG_CloseAnimationDecoder')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: decoder
            logical(c_bool)                :: img_close_animation_decoder
        end function img_close_animation_decoder

        ! bool IMG_CloseAnimationEncoder(IMG_AnimationEncoder *encoder)
        function img_close_animation_encoder(encoder) bind(c, name='IMG_CloseAnimationEncoder')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: encoder
            logical(c_bool)                :: img_close_animation_encoder
        end function img_close_animation_encoder

        ! SDL_Cursor *IMG_CreateAnimatedCursor(IMG_Animation *anim, int hot_x, int hot_y)
        function img_create_animated_cursor(anim, hot_x, hot_y) bind(c, name='IMG_CreateAnimatedCursor')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: anim
            integer(c_int), intent(in), value :: hot_x
            integer(c_int), intent(in), value :: hot_y
            type(c_ptr)                       :: img_create_animated_cursor
        end function img_create_animated_cursor

        ! IMG_AnimationDecoder *IMG_CreateAnimationDecoder(const char *file)
        function img_create_animation_decoder(file) bind(c, name='IMG_CreateAnimationDecoder')
            import :: c_char, c_ptr
            implicit none
            character(c_char), intent(in) :: file
            type(c_ptr)                   :: img_create_animation_decoder
        end function img_create_animation_decoder

        ! IMG_AnimationDecoder *IMG_CreateAnimationDecoderWithProperties(SDL_PropertiesID props)
        function img_create_animation_decoder_with_properties(props) bind(c, name='IMG_CreateAnimationDecoderWithProperties')
            import :: c_ptr, sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
            type(c_ptr)                                   :: img_create_animation_decoder_with_properties
        end function img_create_animation_decoder_with_properties

        ! IMG_AnimationDecoder *IMG_CreateAnimationDecoder_IO(SDL_IOStream *src, bool closeio, const char *type)
        function img_create_animation_decoder_io(src, close_io, type) bind(c, name='IMG_CreateAnimationDecoder_IO')
            import :: c_bool, c_char, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: src
            logical(c_bool),   intent(in), value :: close_io
            character(c_char), intent(in)        :: type
            type(c_ptr)                          :: img_create_animation_decoder_io
        end function img_create_animation_decoder_io

        ! IMG_AnimationEncoder *IMG_CreateAnimationEncoder(const char *file)
        function img_create_animation_encoder(file) bind(c, name='IMG_CreateAnimationEncoder')
            import :: c_char, c_ptr
            implicit none
            character(c_char), intent(in) :: file
            type(c_ptr)                   :: img_create_animation_encoder
        end function img_create_animation_encoder

        ! IMG_AnimationEncoder *IMG_CreateAnimationEncoderWithProperties(SDL_PropertiesID props)
        function img_create_animation_encoder_with_properties(props) bind(c, name='IMG_CreateAnimationEncoderWithProperties')
            import :: c_ptr, sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
            type(c_ptr)                                   :: img_create_animation_encoder_with_properties
        end function img_create_animation_encoder_with_properties

        ! IMG_AnimationEncoder *IMG_CreateAnimationEncoder_IO(SDL_IOStream *dst, bool closeio, const char *type)
        function img_create_animation_encoder_io(dst, close_io, type) bind(c, name='IMG_CreateAnimationEncoder_IO')
            import :: c_bool, c_char, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: dst
            logical(c_bool),   intent(in), value :: close_io
            character(c_char), intent(in)        :: type
            type(c_ptr)                          :: img_create_animation_encoder_io
        end function img_create_animation_encoder_io

        ! void IMG_FreeAnimation(IMG_Animation *anim)
        subroutine img_free_animation(anim) bind(c, name='IMG_FreeAnimation')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: anim
        end subroutine img_free_animation

        ! bool IMG_GetAnimationDecoderFrame(IMG_AnimationDecoder *decoder, SDL_Surface **frame, Uint64 *duration)
        function img_get_animation_decoder_frame(decoder, frame, duration) bind(c, name='IMG_GetAnimationDecoderFrame')
            import :: c_bool, c_ptr, uint64
            implicit none
            type(c_ptr),     intent(in), value :: decoder
            type(c_ptr),     intent(out)       :: frame
            integer(uint64), intent(out)       :: duration
            logical(c_bool)                    :: img_get_animation_decoder_frame
        end function img_get_animation_decoder_frame

        ! SDL_PropertiesID IMG_GetAnimationDecoderProperties(IMG_AnimationDecoder *decoder)
        function img_get_animation_decoder_properties(decoder) bind(c, name='IMG_GetAnimationDecoderProperties')
            import :: c_ptr, sdl_properties_id
            implicit none
            type(c_ptr), intent(in), value :: decoder
            integer(sdl_properties_id)     :: img_get_animation_decoder_properties
        end function img_get_animation_decoder_properties

        ! IMG_AnimationDecoderStatus IMG_GetAnimationDecoderStatus(IMG_AnimationDecoder *decoder)
        function img_get_animation_decoder_status(decoder) bind(c, name='IMG_GetAnimationDecoderStatus')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: decoder
            integer(c_int)                 :: img_get_animation_decoder_status
        end function img_get_animation_decoder_status

        ! SDL_Surface *IMG_GetClipboardImage(void)
        function img_get_clipboard_image() bind(c, name='IMG_GetClipboardImage')
            import :: c_ptr
            implicit none
            type(c_ptr) :: img_get_clipboard_image
        end function img_get_clipboard_image

        ! bool IMG_isANI(SDL_IOStream *src)
        function img_is_ani(src) bind(c, name='IMG_isANI')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            logical(c_bool)                :: img_is_ani
        end function img_is_ani

        ! bool IMG_isAVIF(SDL_IOStream *src)
        function img_is_avif(src) bind(c, name='IMG_isAVIF')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            logical(c_bool)                :: img_is_avif
        end function img_is_avif

        ! bool IMG_isBMP(SDL_IOStream *src)
        function img_is_bmp(src) bind(c, name='IMG_isBMP')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            logical(c_bool)                :: img_is_bmp
        end function img_is_bmp

        ! bool IMG_isCUR(SDL_IOStream *src)
        function img_is_cur(src) bind(c, name='IMG_isCUR')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            logical(c_bool)                :: img_is_cur
        end function img_is_cur

        ! bool IMG_isGIF(SDL_IOStream *src)
        function img_is_gif(src) bind(c, name='IMG_isGIF')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            logical(c_bool)                :: img_is_gif
        end function img_is_gif

        ! bool IMG_isICO(SDL_IOStream *src)
        function img_is_ico(src) bind(c, name='IMG_isICO')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            logical(c_bool)                :: img_is_ico
        end function img_is_ico

        ! bool IMG_isJPG(SDL_IOStream *src)
        function img_is_jpg(src) bind(c, name='IMG_isJPG')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            logical(c_bool)                :: img_is_jpg
        end function img_is_jpg

        ! bool IMG_isJXL(SDL_IOStream *src)
        function img_is_jxl(src) bind(c, name='IMG_isJXL')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            logical(c_bool)                :: img_is_jxl
        end function img_is_jxl

        ! bool IMG_isLBM(SDL_IOStream *src)
        function img_is_lbm(src) bind(c, name='IMG_isLBM')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            logical(c_bool)                :: img_is_lbm
        end function img_is_lbm

        ! bool IMG_isPCX(SDL_IOStream *src)
        function img_is_pcx(src) bind(c, name='IMG_isPCX')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            logical(c_bool)                :: img_is_pcx
        end function img_is_pcx

        ! bool IMG_isPNG(SDL_IOStream *src)
        function img_is_png(src) bind(c, name='IMG_isPNG')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            logical(c_bool)                :: img_is_png
        end function img_is_png

        ! bool IMG_isPNM(SDL_IOStream *src)
        function img_is_pnm(src) bind(c, name='IMG_isPNM')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            logical(c_bool)                :: img_is_pnm
        end function img_is_pnm

        ! bool IMG_isQOI(SDL_IOStream *src)
        function img_is_qoi(src) bind(c, name='IMG_isQOI')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            logical(c_bool)                :: img_is_qoi
        end function img_is_qoi

        ! bool IMG_isSVG(SDL_IOStream *src)
        function img_is_svg(src) bind(c, name='IMG_isSVG')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            logical(c_bool)                :: img_is_svg
        end function img_is_svg

        ! bool IMG_isTIF(SDL_IOStream *src)
        function img_is_tif(src) bind(c, name='IMG_isTIF')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            logical(c_bool)                :: img_is_tif
        end function img_is_tif

        ! bool IMG_isWEBP(SDL_IOStream *src)
        function img_is_webp(src) bind(c, name='IMG_isWEBP')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            logical(c_bool)                :: img_is_webp
        end function img_is_webp

        ! bool IMG_isXCF(SDL_IOStream *src)
        function img_is_xcf(src) bind(c, name='IMG_isXCF')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            logical(c_bool)                :: img_is_xcf
        end function img_is_xcf

        ! bool IMG_isXPM(SDL_IOStream *src)
        function img_is_xpm(src) bind(c, name='IMG_isXPM')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            logical(c_bool)                :: img_is_xpm
        end function img_is_xpm

        ! bool IMG_isXV(SDL_IOStream *src)
        function img_is_xv(src) bind(c, name='IMG_isXV')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            logical(c_bool)                :: img_is_xv
        end function img_is_xv

        ! SDL_Surface *IMG_Load(const char *file)
        function img_load(file) bind(c, name='IMG_Load')
            import :: c_char, c_ptr
            implicit none
            character(c_char), intent(in) :: file
            type(c_ptr)                   :: img_load
        end function img_load

        ! IMG_Animation *IMG_LoadANIAnimation_IO(SDL_IOStream *src)
        function img_load_ani_animation_io(src) bind(c, name='IMG_LoadANIAnimation_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_ani_animation_io
        end function img_load_ani_animation_io

        ! IMG_Animation *IMG_LoadAnimation(const char *file)
        function img_load_animation(file) bind(c, name='IMG_LoadAnimation')
            import :: c_char, c_ptr
            implicit none
            character(c_char), intent(in) :: file
            type(c_ptr)                   :: img_load_animation
        end function img_load_animation

        ! IMG_Animation *IMG_LoadAnimation_IO(SDL_IOStream *src, bool closeio)
        function img_load_animation_io(src, close_io) bind(c, name='IMG_LoadAnimation_IO')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: src
            logical(c_bool), intent(in), value :: close_io
            type(c_ptr)                        :: img_load_animation_io
        end function img_load_animation_io

        ! IMG_Animation *IMG_LoadAnimationTyped_IO(SDL_IOStream *src, bool closeio, const char *type)
        function img_load_animation_typed_io(src, close_io, type) bind(c, name='IMG_LoadAnimationTyped_IO')
            import :: c_bool, c_char, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: src
            logical(c_bool),   intent(in), value :: close_io
            character(c_char), intent(in)        :: type
            type(c_ptr)                          :: img_load_animation_typed_io
        end function img_load_animation_typed_io

        ! IMG_Animation *IMG_LoadAPNGAnimation_IO(SDL_IOStream *src)
        function img_load_apng_animation_io(src) bind(c, name='IMG_LoadAPNGAnimation_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_apng_animation_io
        end function img_load_apng_animation_io

        ! IMG_Animation *IMG_LoadAVIFAnimation_IO(SDL_IOStream *src)
        function img_load_avif_animation_io(src) bind(c, name='IMG_LoadAVIFAnimation_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_avif_animation_io
        end function img_load_avif_animation_io

        ! SDL_Surface *IMG_LoadAVIF_IO(SDL_IOStream *src)
        function img_load_avif_io(src) bind(c, name='IMG_LoadAVIF_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_avif_io
        end function img_load_avif_io 

        ! SDL_Surface *IMG_LoadBMP_IO(SDL_IOStream *src)
        function img_load_bmp_io(src) bind(c, name='IMG_LoadBMP_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_bmp_io
        end function img_load_bmp_io

        ! SDL_Surface *IMG_LoadCUR_IO(SDL_IOStream *src)
        function img_load_cur_io(src) bind(c, name='IMG_LoadCUR_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_cur_io
        end function img_load_cur_io

        ! IMG_Animation *IMG_LoadGIFAnimation_IO(SDL_IOStream *src)
        function img_load_gif_animation_io(src) bind(c, name='IMG_LoadGIFAnimation_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_gif_animation_io
        end function img_load_gif_animation_io

        ! SDL_Surface *IMG_LoadGIF_IO(SDL_IOStream *src)
        function img_load_gif_io(src) bind(c, name='IMG_LoadGIF_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_gif_io
        end function img_load_gif_io

        ! SDL_GPUTexture *IMG_LoadGPUTexture(SDL_GPUDevice *device, SDL_GPUCopyPass *copy_pass, const char *file, int *width, int *height)
        function img_load_gpu_texture(device, copy_pass, file, width, height) bind(c, name='IMG_LoadGPUTexture')
            import :: c_char, c_int, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: device
            type(c_ptr),       intent(in), value :: copy_pass
            character(c_char), intent(in)        :: file
            integer(c_int),    intent(out)       :: width
            integer(c_int),    intent(out)       :: height
            type(c_ptr)                          :: img_load_gpu_texture
        end function img_load_gpu_texture

        ! SDL_GPUTexture *IMG_LoadGPUTexture_IO(SDL_GPUDevice *device, SDL_GPUCopyPass *copy_pass, SDL_IOStream *src, bool closeio, int *width, int *height)
        function img_load_gpu_texture_io(device, copy_pass, src, close_io, width, height) bind(c, name='IMG_LoadGPUTexture_IO')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: device
            type(c_ptr),     intent(in), value :: copy_pass
            type(c_ptr),     intent(in), value :: src
            logical(c_bool), intent(in), value :: close_io
            integer(c_int),  intent(out)       :: width
            integer(c_int),  intent(out)       :: height
            type(c_ptr)                        :: img_load_gpu_texture_io
        end function img_load_gpu_texture_io

        ! SDL_GPUTexture *IMG_LoadGPUTextureTyped_IO(SDL_GPUDevice *device, SDL_GPUCopyPass *copy_pass, SDL_IOStream *src, bool closeio, const char *type, int *width, int *height)
        function img_load_gpu_texture_typed_io(device, copy_pass, src, close_io, type, width, height) bind(c, name='IMG_LoadGPUTextureTyped_IO')
            import :: c_bool, c_char, c_int, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: device
            type(c_ptr),       intent(in), value :: copy_pass
            type(c_ptr),       intent(in), value :: src
            logical(c_bool),   intent(in), value :: close_io
            character(c_char), intent(in)        :: type
            integer(c_int),    intent(out)       :: width
            integer(c_int),    intent(out)       :: height
            type(c_ptr)                          :: img_load_gpu_texture_typed_io
        end function img_load_gpu_texture_typed_io

        ! SDL_Surface *IMG_LoadICO_IO(SDL_IOStream *src)
        function img_load_ico_io(src) bind(c, name='IMG_LoadICO_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_ico_io
        end function img_load_ico_io

        ! SDL_Surface *IMG_LoadJPG_IO(SDL_IOStream *src)
        function img_load_jpg_io(src) bind(c, name='IMG_LoadJPG_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_jpg_io
        end function img_load_jpg_io

        ! SDL_Surface *IMG_LoadJXL_IO(SDL_IOStream *src)
        function img_load_jxl_io(src) bind(c, name='IMG_LoadJXL_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_jxl_io
        end function img_load_jxl_io

        ! SDL_Surface *IMG_LoadLBM_IO(SDL_IOStream *src)
        function img_load_lbm_io(src) bind(c, name='IMG_LoadLBM_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_lbm_io
        end function img_load_lbm_io

        ! SDL_Surface *IMG_LoadPCX_IO(SDL_IOStream *src)
        function img_load_pcx_io(src) bind(c, name='IMG_LoadPCX_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_pcx_io
        end function img_load_pcx_io

        ! SDL_Surface *IMG_LoadPNG_IO(SDL_IOStream *src)
        function img_load_png_io(src) bind(c, name='IMG_LoadPNG_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_png_io
        end function img_load_png_io

        ! SDL_Surface *IMG_LoadPNM_IO(SDL_IOStream *src)
        function img_load_pnm_io(src) bind(c, name='IMG_LoadPNM_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_pnm_io
        end function img_load_pnm_io

        ! SDL_Surface *IMG_LoadQOI_IO(SDL_IOStream *src)
        function img_load_qoi_io(src) bind(c, name='IMG_LoadQOI_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_qoi_io
        end function img_load_qoi_io

        ! SDL_Surface *IMG_LoadSizedSVG_IO(SDL_IOStream *src, int width, int height)
        function img_load_sized_svg_io(src, width, height) bind(c, name='IMG_LoadSizedSVG_IO')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: src
            integer(c_int), intent(in), value :: width
            integer(c_int), intent(in), value :: height
            type(c_ptr)                       :: img_load_sized_svg_io
        end function img_load_sized_svg_io

        ! SDL_Surface *IMG_LoadSVG_IO(SDL_IOStream *src)
        function img_load_svg_io(src) bind(c, name='IMG_LoadSVG_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_svg_io
        end function img_load_svg_io

        ! SDL_Texture *IMG_LoadTexture(SDL_Renderer *renderer, const char *file)
        function img_load_texture(renderer, file) bind(c, name='IMG_LoadTexture')
            import :: c_char, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: renderer
            character(c_char), intent(in)        :: file
            type(c_ptr)                          :: img_load_texture
        end function img_load_texture

        ! SDL_Texture *IMG_LoadTextureTyped_IO(SDL_Renderer *renderer, SDL_IOStream *src, bool closeio, const char *type)
        function img_load_texture_typed_io(renderer, src, close_io, type) bind(c, name='IMG_LoadTextureTyped_IO')
            import :: c_bool, c_char, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: renderer
            type(c_ptr),       intent(in), value :: src
            logical(c_bool),   intent(in), value :: close_io
            character(c_char), intent(in)        :: type
            type(c_ptr)                          :: img_load_texture_typed_io
        end function img_load_texture_typed_io

        ! SDL_Texture *IMG_LoadTexture_IO(SDL_Renderer *renderer, SDL_IOStream *src, bool closeio)
        function img_load_texture_io(renderer, src, close_io) bind(c, name='IMG_LoadTexture_IO')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: renderer
            type(c_ptr),     intent(in), value :: src
            logical(c_bool), intent(in), value :: close_io
            type(c_ptr)                        :: img_load_texture_io
        end function img_load_texture_io

        ! SDL_Surface *IMG_LoadTGA_IO(SDL_IOStream *src)
        function img_load_tga_io(src) bind(c, name='IMG_LoadTGA_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_tga_io
        end function img_load_tga_io

        ! SDL_Surface *IMG_LoadTIF_IO(SDL_IOStream *src)
        function img_load_tif_io(src) bind(c, name='IMG_LoadTIF_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_tif_io
        end function img_load_tif_io

        ! SDL_Surface *IMG_LoadTyped_IO(SDL_IOStream *src, bool closeio, const char *type)
        function img_load_typed_io(src, close_io, type) bind(c, name='IMG_LoadTyped_IO')
            import :: c_bool, c_char, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: src
            logical(c_bool),   intent(in), value :: close_io
            character(c_char), intent(in)        :: type
            type(c_ptr)                          :: img_load_typed_io
        end function img_load_typed_io

        ! IMG_Animation *IMG_LoadWEBPAnimation_IO(SDL_IOStream *src)
        function img_load_webp_animation_io(src) bind(c, name='IMG_LoadWEBPAnimation_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_webp_animation_io
        end function img_load_webp_animation_io

        ! SDL_Surface *IMG_LoadWEBP_IO(SDL_IOStream *src)
        function img_load_webp_io(src) bind(c, name='IMG_LoadWEBP_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_webp_io
        end function img_load_webp_io

        ! SDL_Surface *IMG_LoadXCF_IO(SDL_IOStream *src)
        function img_load_xcf_io(src) bind(c, name='IMG_LoadXCF_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_xcf_io
        end function img_load_xcf_io

        ! SDL_Surface *IMG_LoadXPM_IO(SDL_IOStream *src)
        function img_load_xpm_io(src) bind(c, name='IMG_LoadXPM_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_xpm_io
        end function img_load_xpm_io

        ! SDL_Surface *IMG_LoadXV_IO(SDL_IOStream *src)
        function img_load_xv_io(src) bind(c, name='IMG_LoadXV_IO')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: src
            type(c_ptr)                    :: img_load_xv_io
        end function img_load_xv_io

        ! SDL_Surface *IMG_Load_IO(SDL_IOStream *src, bool closeio)
        function img_load_io(src, close_io) bind(c, name='IMG_Load_IO')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: src
            logical(c_bool), intent(in), value :: close_io
            type(c_ptr)                        :: img_load_io
        end function img_load_io

        ! SDL_Surface *IMG_ReadXPMFromArray(char **xpm)
        function img_read_xpm_from_array(xpm) bind(c, name='IMG_ReadXPMFromArray')
            import :: c_char, c_ptr
            implicit none
            character(c_char), intent(in) :: xpm(*)
            type(c_ptr)                   :: img_read_xpm_from_array
        end function img_read_xpm_from_array

        ! SDL_Surface *IMG_ReadXPMFromArrayToRGB888(char **xpm)
        function img_read_xpm_from_array_to_rgb888(xpm) bind(c, name='IMG_ReadXPMFromArrayToRGB888')
            import :: c_char, c_ptr
            implicit none
            character(c_char), intent(in) :: xpm(*)
            type(c_ptr)                   :: img_read_xpm_from_array_to_rgb888
        end function img_read_xpm_from_array_to_rgb888

        ! bool IMG_ResetAnimationDecoder(IMG_AnimationDecoder *decoder)
        function img_reset_animation_decoder(decoder) bind(c, name='IMG_ResetAnimationDecoder')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: decoder
            logical(c_bool)                :: img_reset_animation_decoder
        end function img_reset_animation_decoder

        ! bool IMG_Save(SDL_Surface *surface, const char *file)
        function img_save(surface, file) bind(c, name='IMG_Save')
            import :: c_bool, c_char, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: surface
            character(c_char), intent(in)        :: file
            logical(c_bool)                      :: img_save
        end function img_save

        ! bool IMG_SaveANIAnimation_IO(IMG_Animation *anim, SDL_IOStream *dst, bool closeio)
        function img_save_ani_animation_io(anim, dst, close_io) bind(c, name='IMG_SaveANIAnimation_IO')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: anim
            type(c_ptr),     intent(in), value :: dst
            logical(c_bool), intent(in), value :: close_io
            logical(c_bool)                    :: img_save_ani_animation_io
        end function img_save_ani_animation_io

        ! bool IMG_SaveAnimation(IMG_Animation *anim, const char *file)
        function img_save_animation(anim, file) bind(c, name='IMG_SaveAnimation')
            import :: c_bool, c_char, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: anim
            character(c_char), intent(in)        :: file
            logical(c_bool)                      :: img_save_animation
        end function img_save_animation

        ! bool IMG_SaveAnimationTyped_IO(IMG_Animation *anim, SDL_IOStream *dst, bool closeio, const char *type)
        function img_save_animation_typed_io(anim, dst, close_io, type) bind(c, name='IMG_SaveAnimationTyped_IO')
            import :: c_bool, c_char, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: anim
            type(c_ptr),       intent(in), value :: dst
            logical(c_bool),   intent(in), value :: close_io
            character(c_char), intent(in)        :: type
            logical(c_bool)                      :: img_save_animation_typed_io
        end function img_save_animation_typed_io

        ! bool IMG_SaveAPNGAnimation_IO(IMG_Animation *anim, SDL_IOStream *dst, bool closeio)
        function img_save_apng_animation_io(anim, dst, close_io) bind(c, name='IMG_SaveAPNGAnimation_IO')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: anim
            type(c_ptr),     intent(in), value :: dst
            logical(c_bool), intent(in), value :: close_io
            logical(c_bool)                    :: img_save_apng_animation_io
        end function img_save_apng_animation_io

        ! bool IMG_SaveAVIF(SDL_Surface *surface, const char *file, int quality)
        function img_save_avif(surface, file, quality) bind(c, name='IMG_SaveAVIF')
            import :: c_bool, c_char, c_int, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: surface
            character(c_char), intent(in)        :: file
            integer(c_int),    intent(in), value :: quality
            logical(c_bool)                      :: img_save_avif
        end function img_save_avif

        ! bool IMG_SaveAVIFAnimation_IO(IMG_Animation *anim, SDL_IOStream *dst, bool closeio, int quality)
        function img_save_avif_animation_io(anim, dst, close_io, quality) bind(c, name='IMG_SaveAVIFAnimation_IO')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: anim
            type(c_ptr),     intent(in), value :: dst
            logical(c_bool), intent(in), value :: close_io
            integer(c_int),  intent(in), value :: quality
            logical(c_bool)                    :: img_save_avif_animation_io
        end function img_save_avif_animation_io

        ! bool IMG_SaveAVIF_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio, int quality)
        function img_save_avif_io(surface, dst, close_io, quality) bind(c, name='IMG_SaveAVIF_IO')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: surface
            type(c_ptr),     intent(in), value :: dst
            logical(c_bool), intent(in), value :: close_io
            integer(c_int),  intent(in), value :: quality
            logical(c_bool)                    :: img_save_avif_io
        end function img_save_avif_io

        ! bool IMG_SaveBMP(SDL_Surface *surface, const char *file)
        function img_save_bmp(surface, file) bind(c, name='IMG_SaveBMP')
            import :: c_bool, c_char, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: surface
            character(c_char), intent(in)        :: file
            logical(c_bool)                      :: img_save_bmp
        end function img_save_bmp

        ! bool IMG_SaveBMP_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio)
        function img_save_bmp_io(surface, dst, close_io) bind(c, name='IMG_SaveBMP_IO')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: surface
            type(c_ptr),     intent(in), value :: dst
            logical(c_bool), intent(in), value :: close_io
            logical(c_bool)                    :: img_save_bmp_io
        end function img_save_bmp_io

        ! bool IMG_SaveCUR(SDL_Surface *surface, const char *file)
        function img_save_cur(surface, file) bind(c, name='IMG_SaveCUR')
            import :: c_bool, c_char, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: surface
            character(c_char), intent(in)        :: file
            logical(c_bool)                      :: img_save_cur
        end function img_save_cur

        ! bool IMG_SaveCUR_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio)
        function img_save_cur_io(surface, dst, close_io) bind(c, name='IMG_SaveCUR_IO')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: surface
            type(c_ptr),     intent(in), value :: dst
            logical(c_bool), intent(in), value :: close_io
            logical(c_bool)                    :: img_save_cur_io
        end function img_save_cur_io

        ! bool IMG_SaveGIF(SDL_Surface *surface, const char *file)
        function img_save_gif(surface, file) bind(c, name='IMG_SaveGIF')
            import :: c_bool, c_char, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: surface
            character(c_char), intent(in)        :: file
            logical(c_bool)                      :: img_save_gif
        end function img_save_gif

        ! bool IMG_SaveGIFAnimation_IO(IMG_Animation *anim, SDL_IOStream *dst, bool closeio)
        function img_save_gif_animation_io(anim, dst, close_io) bind(c, name='IMG_SaveGIFAnimation_IO')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: anim
            type(c_ptr),     intent(in), value :: dst
            logical(c_bool), intent(in), value :: close_io
            logical(c_bool)                    :: img_save_gif_animation_io
        end function img_save_gif_animation_io

        ! bool IMG_SaveGIF_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio)
        function img_save_gif_io(surface, dst, close_io) bind(c, name='IMG_SaveGIF_IO')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: surface
            type(c_ptr),     intent(in), value :: dst
            logical(c_bool), intent(in), value :: close_io
            logical(c_bool)                    :: img_save_gif_io
        end function img_save_gif_io

        ! bool IMG_SaveICO(SDL_Surface *surface, const char *file)
        function img_save_ico(surface, file) bind(c, name='IMG_SaveICO')
            import :: c_bool, c_char, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: surface
            character(c_char), intent(in)        :: file
            logical(c_bool)                      :: img_save_ico
        end function img_save_ico

        ! bool IMG_SaveICO_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio)
        function img_save_ico_io(surface, dst, close_io) bind(c, name='IMG_SaveICO_IO')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: surface
            type(c_ptr),     intent(in), value :: dst
            logical(c_bool), intent(in), value :: close_io
            logical(c_bool)                    :: img_save_ico_io
        end function img_save_ico_io

        ! bool IMG_SaveJPG(SDL_Surface *surface, const char *file, int quality)
        function img_save_jpg(surface, file, quality) bind(c, name='IMG_SaveJPG')
            import :: c_bool, c_char, c_int, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: surface
            character(c_char), intent(in)        :: file
            integer(c_int),    intent(in), value :: quality
            logical(c_bool)                      :: img_save_jpg
        end function img_save_jpg

        ! bool IMG_SaveJPG_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio, int quality)
        function img_save_jpg_io(surface, dst, close_io, quality) bind(c, name='IMG_SaveJPG_IO')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: surface
            type(c_ptr),     intent(in), value :: dst
            logical(c_bool), intent(in), value :: close_io
            integer(c_int),  intent(in), value :: quality
            logical(c_bool)                    :: img_save_jpg_io
        end function img_save_jpg_io

        ! bool IMG_SavePNG(SDL_Surface *surface, const char *file)
        function img_save_png(surface, file) bind(c, name='IMG_SavePNG')
            import :: c_bool, c_char, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: surface
            character(c_char), intent(in)        :: file
            logical(c_bool)                      :: img_save_png
        end function img_save_png

        ! bool IMG_SavePNG_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio)
        function img_save_png_io(surface, dst, close_io) bind(c, name='IMG_SavePNG_IO')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: surface
            type(c_ptr),     intent(in), value :: dst
            logical(c_bool), intent(in), value :: close_io
            logical(c_bool)                    :: img_save_png_io
        end function img_save_png_io

        ! bool IMG_SaveTGA(SDL_Surface *surface, const char *file)
        function img_save_tga(surface, file) bind(c, name='IMG_SaveTGA')
            import :: c_bool, c_char, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: surface
            character(c_char), intent(in)        :: file
            logical(c_bool)                      :: img_save_tga
        end function img_save_tga

        ! bool IMG_SaveTGA_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio)
        function img_save_tga_io(surface, dst, close_io) bind(c, name='IMG_SaveTGA_IO')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: surface
            type(c_ptr),     intent(in), value :: dst
            logical(c_bool), intent(in), value :: close_io
            logical(c_bool)                    :: img_save_tga_io
        end function img_save_tga_io

        ! bool IMG_SaveTyped_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio, const char *type)
        function img_save_typed_io(surface, dst, close_io, type) bind(c, name='IMG_SaveTyped_IO')
            import :: c_bool, c_char, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: surface
            type(c_ptr),       intent(in), value :: dst
            logical(c_bool),   intent(in), value :: close_io
            character(c_char), intent(in)        :: type
            logical(c_bool)                      :: img_save_typed_io
        end function img_save_typed_io

        ! bool IMG_SaveWEBP(SDL_Surface *surface, const char *file, float quality)
        function img_save_webp(surface, file, quality) bind(c, name='IMG_SaveWEBP')
            import :: c_bool, c_char, c_float, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: surface
            character(c_char), intent(in)        :: file
            real(c_float),     intent(in), value :: quality
            logical(c_bool)                      :: img_save_webp
        end function img_save_webp

        ! bool IMG_SaveWEBPAnimation_IO(IMG_Animation *anim, SDL_IOStream *dst, bool closeio, int quality)
        function img_save_webp_animation_io(anim, dst, close_io, quality) bind(c, name='IMG_SaveWEBPAnimation_IO')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: anim
            type(c_ptr),     intent(in), value :: dst
            logical(c_bool), intent(in), value :: close_io
            integer(c_int),  intent(in), value :: quality
            logical(c_bool)                    :: img_save_webp_animation_io
        end function img_save_webp_animation_io

        ! bool IMG_SaveWEBP_IO(SDL_Surface *surface, SDL_IOStream *dst, bool closeio, float quality)
        function img_save_webp_io(surface, dst, close_io, quality) bind(c, name='IMG_SaveWEBP_IO')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: surface
            type(c_ptr),     intent(in), value :: dst
            logical(c_bool), intent(in), value :: close_io
            real(c_float),   intent(in), value :: quality
            logical(c_bool)                    :: img_save_webp_io
        end function img_save_webp_io

        ! int IMG_Version(void)
        function img_version() bind(c, name='IMG_Version')
            import :: c_int
            implicit none
            integer(c_int) :: img_version
        end function img_version
    end interface
end module sdl3_image
