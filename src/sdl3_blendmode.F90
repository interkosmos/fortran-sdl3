! Author:  Philipp Engel
! Licence: ISC
module sdl3_blendmode
    !! Auto-generated Fortran 2023 interface bindings to `SDL3/SDL_blendmode.h`.
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    integer, parameter, public :: sdl_blend_mode = uint32 !! SDL_BlendMode

    integer(c_unsigned), parameter, public :: SDL_BLENDMODE_NONE                = int(z'00000000', c_unsigned) !! no blending: dstRGBA = srcRGBA.
    integer(c_unsigned), parameter, public :: SDL_BLENDMODE_BLEND               = int(z'00000001', c_unsigned) !! alpha blending: dstRGB = (srcRGB * srcA) + (dstRGB * (1-srcA)), dstA = srcA + (dstA * (1-srcA)).
    integer(c_unsigned), parameter, public :: SDL_BLENDMODE_BLEND_PREMULTIPLIED = int(z'00000010', c_unsigned) !! pre-multiplied alpha blending: dstRGBA = srcRGBA + (dstRGBA * (1-srcA)).
    integer(c_unsigned), parameter, public :: SDL_BLENDMODE_ADD                 = int(z'00000002', c_unsigned) !! additive blending: dstRGB = (srcRGB * srcA) + dstRGB, dstA = dstA.
    integer(c_unsigned), parameter, public :: SDL_BLENDMODE_ADD_PREMULTIPLIED   = int(z'00000020', c_unsigned) !! pre-multiplied additive blending: dstRGB = srcRGB + dstRGB, dstA = dstA.
    integer(c_unsigned), parameter, public :: SDL_BLENDMODE_MOD                 = int(z'00000004', c_unsigned) !! color modulate: dstRGB = srcRGB * dstRGB, dstA = dstA.
    integer(c_unsigned), parameter, public :: SDL_BLENDMODE_MUL                 = int(z'00000008', c_unsigned) !! color multiply: dstRGB = (srcRGB * dstRGB) + (dstRGB * (1-srcA)), dstA = dstA.
    integer(c_unsigned), parameter, public :: SDL_BLENDMODE_INVALID             = int(z'7FFFFFFF', c_unsigned)

    ! enum SDL_BlendOperation
    integer(c_int), parameter, public :: SDL_BLENDOPERATION_ADD              = int(z'1')   !! dst + src: supported by all renderers.
    integer(c_int), parameter, public :: SDL_BLENDOPERATION_SUBTRACT         = int(z'2')   !! src - dst : supported by D3D, OpenGL, OpenGLES, and Vulkan.
    integer(c_int), parameter, public :: SDL_BLENDOPERATION_REV_SUBTRACT     = int(z'3')   !! dst - src : supported by D3D, OpenGL, OpenGLES, and Vulkan.
    integer(c_int), parameter, public :: SDL_BLENDOPERATION_MINIMUM          = int(z'4')   !! min(dst, src) : supported by D3D, OpenGL, OpenGLES, and Vulkan.
    integer(c_int), parameter, public :: SDL_BLENDOPERATION_MAXIMUM          = int(z'5')   !! max(dst, src) : supported by D3D, OpenGL, OpenGLES, and Vulkan.

    ! enum SDL_BlendFactor
    integer(c_int), parameter, public :: SDL_BLENDFACTOR_ZERO                = int(z'1') !! 0, 0, 0, 0.
    integer(c_int), parameter, public :: SDL_BLENDFACTOR_ONE                 = int(z'2') !! 1, 1, 1, 1.
    integer(c_int), parameter, public :: SDL_BLENDFACTOR_SRC_COLOR           = int(z'3') !! srcR, srcG, srcB, srcA.
    integer(c_int), parameter, public :: SDL_BLENDFACTOR_ONE_MINUS_SRC_COLOR = int(z'4') !! 1-srcR, 1-srcG, 1-srcB, 1-srcA.
    integer(c_int), parameter, public :: SDL_BLENDFACTOR_SRC_ALPHA           = int(z'5') !! srcA, srcA, srcA, srcA.
    integer(c_int), parameter, public :: SDL_BLENDFACTOR_ONE_MINUS_SRC_ALPHA = int(z'6') !! 1-srcA, 1-srcA, 1-srcA, 1-srcA.
    integer(c_int), parameter, public :: SDL_BLENDFACTOR_DST_COLOR           = int(z'7') !! dstR, dstG, dstB, dstA.
    integer(c_int), parameter, public :: SDL_BLENDFACTOR_ONE_MINUS_DST_COLOR = int(z'8') !! 1-dstR, 1-dstG, 1-dstB, 1-dstA.
    integer(c_int), parameter, public :: SDL_BLENDFACTOR_DST_ALPHA           = int(z'9') !! dstA, dstA, dstA, dstA.
    integer(c_int), parameter, public :: SDL_BLENDFACTOR_ONE_MINUS_DST_ALPHA = int(z'A') !! 1-dstA, 1-dstA, 1-dstA, 1-dstA.

    public :: sdl_compose_custom_blend_mode

    interface
        ! SDL_BlendMode SDL_ComposeCustomBlendMode(SDL_BlendFactor srcColorFactor, SDL_BlendFactor dstColorFactor, SDL_BlendOperation colorOperation, SDL_BlendFactor srcAlphaFactor, SDL_BlendFactor dstAlphaFactor, SDL_BlendOperation alphaOperation)
        function sdl_compose_custom_blend_mode(src_color_factor, dst_color_factor, color_operation, src_alpha_factor, dst_alpha_factor, alpha_operation) bind(c, name='SDL_ComposeCustomBlendMode')
            import :: c_int, sdl_blend_mode
            implicit none
            integer(c_int), intent(in), value :: src_color_factor
            integer(c_int), intent(in), value :: dst_color_factor
            integer(c_int), intent(in), value :: color_operation
            integer(c_int), intent(in), value :: src_alpha_factor
            integer(c_int), intent(in), value :: dst_alpha_factor
            integer(c_int), intent(in), value :: alpha_operation
            integer(sdl_blend_mode)           :: sdl_compose_custom_blend_mode
        end function sdl_compose_custom_blend_mode
    end interface
end module sdl3_blendmode
