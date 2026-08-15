! Author:  Philipp Engel
! Licence: ISC
module sdl3_gpu
    !! Auto-generated Fortran 2023 interface bindings to `SDL3/SDL_gpu.h`.
    use :: sdl3_pixels
    use :: sdl3_properties
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    integer, parameter, public :: sdl_gpu_color_component_flags = uint8  !! SDL_GPUColorComponentFlags
    integer, parameter, public :: sdl_gpu_texture_usage_flags   = uint32 !! SDL_GPUTextureUsageFlags
    integer, parameter, public :: sdl_gpu_buffer_usage_flags    = uint32 !! SDL_GPUBufferUsageFlags
    integer, parameter, public :: sdl_gpu_shader_format         = uint32 !! SDL_GPUShaderFormat

    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_D3D12_AGILITY_SDK_PATH_STRING       = 'SDL.gpu.device.create.d3d12.agility_sdk_path'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_D3D12_AGILITY_SDK_VERSION_NUMBER    = 'SDL.gpu.device.create.d3d12.agility_sdk_version'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_D3D12_ALLOW_FEWER_RES_SLOTS_BOOLEAN = 'SDL.gpu.device.create.d3d12.allowtier1resourcebinding'      !! SDL_PROP_GPU_DEVICE_CREATE_D3D12_ALLOW_FEWER_RESOURCE_SLOTS_BOOLEAN
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_D3D12_SEMANTIC_NAME_STRING          = 'SDL.gpu.device.create.d3d12.semantic'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_DEBUGMODE_BOOLEAN                   = 'SDL.gpu.device.create.debugmode'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_FEATURE_ANISOTROPY_BOOLEAN          = 'SDL.gpu.device.create.feature.anisotropy'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_FEATURE_CLIP_DISTANCE_BOOLEAN       = 'SDL.gpu.device.create.feature.clip_distance'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_FEATURE_DEPTH_CLAMPING_BOOLEAN      = 'SDL.gpu.device.create.feature.depth_clamping'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_FEATURE_INDIRECT_DRAW_FIRST_BOOLEAN = 'SDL.gpu.device.create.feature.indirect_draw_first_instance' !! SDL_PROP_GPU_DEVICE_CREATE_FEATURE_INDIRECT_DRAW_FIRST_INSTANCE_BOOLEAN
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_METAL_ALLOW_MACFAMILY1_BOOLEAN      = 'SDL.gpu.device.create.metal.allowmacfamily1'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_NAME_STRING                         = 'SDL.gpu.device.create.name'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_PREFERLOWPOWER_BOOLEAN              = 'SDL.gpu.device.create.preferlowpower'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_SHADERS_DXBC_BOOLEAN                = 'SDL.gpu.device.create.shaders.dxbc'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_SHADERS_DXIL_BOOLEAN                = 'SDL.gpu.device.create.shaders.dxil'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_SHADERS_METALLIB_BOOLEAN            = 'SDL.gpu.device.create.shaders.metallib'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_SHADERS_MSL_BOOLEAN                 = 'SDL.gpu.device.create.shaders.msl'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_SHADERS_PRIVATE_BOOLEAN             = 'SDL.gpu.device.create.shaders.private'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_SHADERS_SPIRV_BOOLEAN               = 'SDL.gpu.device.create.shaders.spirv'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_VERBOSE_BOOLEAN                     = 'SDL.gpu.device.create.verbose'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_VULKAN_OPTIONS_POINTER              = 'SDL.gpu.device.create.vulkan.options'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_VULKAN_REQUIRE_HW_ACCEL_BOOLEAN     = 'SDL.gpu.device.create.vulkan.requirehardwareacceleration'   !! SDL_PROP_GPU_DEVICE_CREATE_VULKAN_REQUIRE_HARDWARE_ACCELERATION_BOOLEAN
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_XR_APPLICATION_NAME_STRING          = 'SDL.gpu.device.create.xr.application.name'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_XR_APPLICATION_VERSION_NUMBER       = 'SDL.gpu.device.create.xr.application.version'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_XR_ENABLE_BOOLEAN                   = 'SDL.gpu.device.create.xr.enable'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_XR_ENGINE_NAME_STRING               = 'SDL.gpu.device.create.xr.engine.name'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_XR_ENGINE_VERSION_NUMBER            = 'SDL.gpu.device.create.xr.engine.version'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_XR_EXTENSION_COUNT_NUMBER           = 'SDL.gpu.device.create.xr.extensions.count'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_XR_EXTENSION_NAMES_POINTER          = 'SDL.gpu.device.create.xr.extensions.names'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_XR_FORM_FACTOR_NUMBER               = 'SDL.gpu.device.create.xr.form_factor'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_XR_INSTANCE_POINTER                 = 'SDL.gpu.device.create.xr.instance_out'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_XR_LAYER_COUNT_NUMBER               = 'SDL.gpu.device.create.xr.layers.count'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_XR_LAYER_NAMES_POINTER              = 'SDL.gpu.device.create.xr.layers.names'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_XR_SYSTEM_ID_POINTER                = 'SDL.gpu.device.create.xr.system_id_out'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_CREATE_XR_VERSION_NUMBER                   = 'SDL.gpu.device.create.xr.version'

    character(*), parameter, public :: SDL_PROP_GPU_BUFFER_CREATE_NAME_STRING                 = 'SDL.gpu.buffer.create.name'
    character(*), parameter, public :: SDL_PROP_GPU_COMPUTEPIPELINE_CREATE_NAME_STRING        = 'SDL.gpu.computepipeline.create.name'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_DRIVER_INFO_STRING                 = 'SDL.gpu.device.driver_info'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_DRIVER_NAME_STRING                 = 'SDL.gpu.device.driver_name'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_DRIVER_VERSION_STRING              = 'SDL.gpu.device.driver_version'
    character(*), parameter, public :: SDL_PROP_GPU_DEVICE_NAME_STRING                        = 'SDL.gpu.device.name'
    character(*), parameter, public :: SDL_PROP_GPU_GRAPHICSPIPELINE_CREATE_NAME_STRING       = 'SDL.gpu.graphicspipeline.create.name'
    character(*), parameter, public :: SDL_PROP_GPU_SAMPLER_CREATE_NAME_STRING                = 'SDL.gpu.sampler.create.name'
    character(*), parameter, public :: SDL_PROP_GPU_SHADER_CREATE_NAME_STRING                 = 'SDL.gpu.shader.create.name'
    character(*), parameter, public :: SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_A_FLOAT        = 'SDL.gpu.texture.create.d3d12.clear.a'
    character(*), parameter, public :: SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_B_FLOAT        = 'SDL.gpu.texture.create.d3d12.clear.b'
    character(*), parameter, public :: SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_DEPTH_FLOAT    = 'SDL.gpu.texture.create.d3d12.clear.depth'
    character(*), parameter, public :: SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_G_FLOAT        = 'SDL.gpu.texture.create.d3d12.clear.g'
    character(*), parameter, public :: SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_R_FLOAT        = 'SDL.gpu.texture.create.d3d12.clear.r'
    character(*), parameter, public :: SDL_PROP_GPU_TEXTURE_CREATE_D3D12_CLEAR_STENCIL_NUMBER = 'SDL.gpu.texture.create.d3d12.clear.stencil'
    character(*), parameter, public :: SDL_PROP_GPU_TEXTURE_CREATE_NAME_STRING                = 'SDL.gpu.texture.create.name'
    character(*), parameter, public :: SDL_PROP_GPU_TRANSFERBUFFER_CREATE_NAME_STRING         = 'SDL.gpu.transferbuffer.create.name'

    integer(c_unsigned), parameter, public :: SDL_GPU_TEXTUREUSAGE_SAMPLER                                 = shiftl(1_c_unsigned, 0) !! Texture supports sampling.
    integer(c_unsigned), parameter, public :: SDL_GPU_TEXTUREUSAGE_COLOR_TARGET                            = shiftl(1_c_unsigned, 1) !! Texture is a color render target.
    integer(c_unsigned), parameter, public :: SDL_GPU_TEXTUREUSAGE_DEPTH_STENCIL_TARGET                    = shiftl(1_c_unsigned, 2) !! Texture is a depth stencil target.
    integer(c_unsigned), parameter, public :: SDL_GPU_TEXTUREUSAGE_GRAPHICS_STORAGE_READ                   = shiftl(1_c_unsigned, 3) !! Texture supports storage reads in graphics stages.
    integer(c_unsigned), parameter, public :: SDL_GPU_TEXTUREUSAGE_COMPUTE_STORAGE_READ                    = shiftl(1_c_unsigned, 4) !! Texture supports storage reads in the compute stage.
    integer(c_unsigned), parameter, public :: SDL_GPU_TEXTUREUSAGE_COMPUTE_STORAGE_WRITE                   = shiftl(1_c_unsigned, 5) !! Texture supports storage writes in the compute stage.
    integer(c_unsigned), parameter, public :: SDL_GPU_TEXTUREUSAGE_COMPUTE_STORAGE_SIMULTANEOUS_READ_WRITE = shiftl(1_c_unsigned, 6) !! Texture supports reads and writes in the same compute shader. This is NOT equivalent to READ | WRITE.

    integer(c_unsigned), parameter, public :: SDL_GPU_SHADERFORMAT_INVALID  = 0
    integer(c_unsigned), parameter, public :: SDL_GPU_SHADERFORMAT_PRIVATE  = shiftl(1_c_unsigned, 0) !! Shaders for NDA'd platforms.
    integer(c_unsigned), parameter, public :: SDL_GPU_SHADERFORMAT_SPIRV    = shiftl(1_c_unsigned, 1) !! SPIR-V shaders for Vulkan.
    integer(c_unsigned), parameter, public :: SDL_GPU_SHADERFORMAT_DXBC     = shiftl(1_c_unsigned, 2) !! DXBC SM5_1 shaders for D3D12.
    integer(c_unsigned), parameter, public :: SDL_GPU_SHADERFORMAT_DXIL     = shiftl(1_c_unsigned, 3) !! DXIL SM6_0 shaders for D3D12.
    integer(c_unsigned), parameter, public :: SDL_GPU_SHADERFORMAT_MSL      = shiftl(1_c_unsigned, 4) !! MSL shaders for Metal.
    integer(c_unsigned), parameter, public :: SDL_GPU_SHADERFORMAT_METALLIB = shiftl(1_c_unsigned, 5) !! Precompiled metallib shaders for Metal.

    integer(c_unsigned), parameter, public :: SDL_GPU_COLORCOMPONENT_R = shiftl(1_c_unsigned, 0) !! The red component.
    integer(c_unsigned), parameter, public :: SDL_GPU_COLORCOMPONENT_G = shiftl(1_c_unsigned, 1) !! The green component.
    integer(c_unsigned), parameter, public :: SDL_GPU_COLORCOMPONENT_B = shiftl(1_c_unsigned, 2) !! The blue component.
    integer(c_unsigned), parameter, public :: SDL_GPU_COLORCOMPONENT_A = shiftl(1_c_unsigned, 3) !! The alpha component.

    ! enum SDL_GPUPrimitiveType
    integer(c_int), parameter, public :: SDL_GPU_PRIMITIVETYPE_TRIANGLELIST  = 0 !! A series of separate triangles.
    integer(c_int), parameter, public :: SDL_GPU_PRIMITIVETYPE_TRIANGLESTRIP = 1 !! A series of connected triangles.
    integer(c_int), parameter, public :: SDL_GPU_PRIMITIVETYPE_LINELIST      = 2 !! A series of separate lines.
    integer(c_int), parameter, public :: SDL_GPU_PRIMITIVETYPE_LINESTRIP     = 3 !! A series of connected lines.
    integer(c_int), parameter, public :: SDL_GPU_PRIMITIVETYPE_POINTLIST     = 4 !! A series of separate points.

    ! enum SDL_GPULoadOp
    integer(c_int), parameter, public :: SDL_GPU_LOADOP_LOAD      = 0 !! The previous contents of the texture will be preserved.
    integer(c_int), parameter, public :: SDL_GPU_LOADOP_CLEAR     = 1 !! The contents of the texture will be cleared to a color.
    integer(c_int), parameter, public :: SDL_GPU_LOADOP_DONT_CARE = 2 !! The previous contents of the texture need not be preserved. The contents will be undefined.

    ! enum SDL_GPUStoreOp
    integer(c_int), parameter, public :: SDL_GPU_STOREOP_STORE             = 0 !! The contents generated during the render pass will be written to memory.
    integer(c_int), parameter, public :: SDL_GPU_STOREOP_DONT_CARE         = 1 !! The contents generated during the render pass are not needed and may be discarded. The contents will be undefined.
    integer(c_int), parameter, public :: SDL_GPU_STOREOP_RESOLVE           = 2 !! The multisample contents generated during the render pass will be resolved to a non-multisample texture. The contents in the multisample texture may then be discarded and will be undefined.
    integer(c_int), parameter, public :: SDL_GPU_STOREOP_RESOLVE_AND_STORE = 3 !! The multisample contents generated during the render pass will be resolved to a non-multisample texture. The contents in the multisample texture will be written to memory.

    ! enum SDL_GPUIndexElementSize
    integer(c_int), parameter, public :: SDL_GPU_INDEXELEMENTSIZE_16BIT = 0 !! The index elements are 16-bit.
    integer(c_int), parameter, public :: SDL_GPU_INDEXELEMENTSIZE_32BIT = 1 !! The index elements are 32-bit.

    ! enum SDL_GPUTextureFormat
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_INVALID               =   0
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_A8_UNORM              =   1
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R8_UNORM              =   2
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R8G8_UNORM            =   3
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM        =   4
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R16_UNORM             =   5
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R16G16_UNORM          =   6
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R16G16B16A16_UNORM    =   7
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R10G10B10A2_UNORM     =   8
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_B5G6R5_UNORM          =   9
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_B5G5R5A1_UNORM        =  10
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_B4G4R4A4_UNORM        =  11
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_B8G8R8A8_UNORM        =  12
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_BC1_RGBA_UNORM        =  13
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_BC2_RGBA_UNORM        =  14
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_BC3_RGBA_UNORM        =  15
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_BC4_R_UNORM           =  16
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_BC5_RG_UNORM          =  17
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_BC7_RGBA_UNORM        =  18
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_BC6H_RGB_FLOAT        =  19
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_BC6H_RGB_UFLOAT       =  20
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R8_SNORM              =  21
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R8G8_SNORM            =  22
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R8G8B8A8_SNORM        =  23
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R16_SNORM             =  24
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R16G16_SNORM          =  25
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R16G16B16A16_SNORM    =  26
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R16_FLOAT             =  27
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R16G16_FLOAT          =  28
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R16G16B16A16_FLOAT    =  29
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R32_FLOAT             =  30
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R32G32_FLOAT          =  31
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R32G32B32A32_FLOAT    =  32
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R11G11B10_UFLOAT      =  33
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R8_UINT               =  34
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R8G8_UINT             =  35
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UINT         =  36
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R16_UINT              =  37
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R16G16_UINT           =  38
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R16G16B16A16_UINT     =  39
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R32_UINT              =  30
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R32G32_UINT           =  41
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R32G32B32A32_UINT     =  42
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R8_INT                =  43
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R8G8_INT              =  44
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R8G8B8A8_INT          =  45
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R16_INT               =  46
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R16G16_INT            =  47
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R16G16B16A16_INT      =  48
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R32_INT               =  49
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R32G32_INT            =  50
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R32G32B32A32_INT      =  51
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_R8G8B8A8_UNORM_SRGB   =  52
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_B8G8R8A8_UNORM_SRGB   =  53
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_BC1_RGBA_UNORM_SRGB   =  54
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_BC2_RGBA_UNORM_SRGB   =  55
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_BC3_RGBA_UNORM_SRGB   =  56
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_BC7_RGBA_UNORM_SRGB   =  57
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_D16_UNORM             =  58
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_D24_UNORM             =  59
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_D32_FLOAT             =  60
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_D24_UNORM_S8_UINT     =  61
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_D32_FLOAT_S8_UINT     =  62
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_4x4_UNORM        =  63
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_5x4_UNORM        =  64
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_5x5_UNORM        =  65
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_6x5_UNORM        =  66
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_6x6_UNORM        =  67
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_8x5_UNORM        =  68
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_8x6_UNORM        =  69
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_8x8_UNORM        =  70
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_10x5_UNORM       =  71
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_10x6_UNORM       =  72
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_10x8_UNORM       =  73
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_10x10_UNORM      =  74
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_12x10_UNORM      =  75
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_12x12_UNORM      =  76
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_4x4_UNORM_SRGB   =  77
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_5x4_UNORM_SRGB   =  78
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_5x5_UNORM_SRGB   =  79
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_6x5_UNORM_SRGB   =  80
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_6x6_UNORM_SRGB   =  81
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_8x5_UNORM_SRGB   =  82
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_8x6_UNORM_SRGB   =  83
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_8x8_UNORM_SRGB   =  84
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_10x5_UNORM_SRGB  =  85
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_10x6_UNORM_SRGB  =  86
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_10x8_UNORM_SRGB  =  87
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_10x10_UNORM_SRGB =  88
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_12x10_UNORM_SRGB =  89
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_12x12_UNORM_SRGB =  90
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_4x4_FLOAT        =  91
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_5x4_FLOAT        =  92
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_5x5_FLOAT        =  93
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_6x5_FLOAT        =  94
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_6x6_FLOAT        =  95
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_8x5_FLOAT        =  96
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_8x6_FLOAT        =  97
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_8x8_FLOAT        =  98
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_10x5_FLOAT       =  99
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_10x6_FLOAT       = 100
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_10x8_FLOAT       = 101
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_10x10_FLOAT      = 102
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_12x10_FLOAT      = 103
    integer(c_int), parameter, public :: SDL_GPU_TEXTUREFORMAT_ASTC_12x12_FLOAT      = 104

    ! enum SDL_GPUTextureType
    integer(c_int), parameter, public :: SDL_GPU_TEXTURETYPE_2D         = 0 !! The texture is a 2-dimensional image.
    integer(c_int), parameter, public :: SDL_GPU_TEXTURETYPE_2D_ARRAY   = 1 !! The texture is a 2-dimensional array image.
    integer(c_int), parameter, public :: SDL_GPU_TEXTURETYPE_3D         = 2 !! The texture is a 3-dimensional image.
    integer(c_int), parameter, public :: SDL_GPU_TEXTURETYPE_CUBE       = 3 !! The texture is a cube image.
    integer(c_int), parameter, public :: SDL_GPU_TEXTURETYPE_CUBE_ARRAY = 4 !! The texture is a cube array image.

    ! enum SDL_GPUSampleCount
    integer(c_int), parameter, public :: SDL_GPU_SAMPLECOUNT_1 = 0 !! No multisampling.
    integer(c_int), parameter, public :: SDL_GPU_SAMPLECOUNT_2 = 1 !! MSAA 2x.
    integer(c_int), parameter, public :: SDL_GPU_SAMPLECOUNT_4 = 2 !! MSAA 4x.
    integer(c_int), parameter, public :: SDL_GPU_SAMPLECOUNT_8 = 3 !! MSAA 8x.

    ! enum SDL_GPUCubeMapFace
    integer(c_int), parameter, public :: SDL_GPU_CUBEMAPFACE_POSITIVEX = 0
    integer(c_int), parameter, public :: SDL_GPU_CUBEMAPFACE_NEGATIVEX = 1
    integer(c_int), parameter, public :: SDL_GPU_CUBEMAPFACE_POSITIVEY = 2
    integer(c_int), parameter, public :: SDL_GPU_CUBEMAPFACE_NEGATIVEY = 3
    integer(c_int), parameter, public :: SDL_GPU_CUBEMAPFACE_POSITIVEZ = 4
    integer(c_int), parameter, public :: SDL_GPU_CUBEMAPFACE_NEGATIVEZ = 5

    integer(c_unsigned), parameter, public :: SDL_GPU_BUFFERUSAGE_VERTEX                = shiftl(1_c_unsigned, 0) !! Buffer is a vertex buffer.
    integer(c_unsigned), parameter, public :: SDL_GPU_BUFFERUSAGE_INDEX                 = shiftl(1_c_unsigned, 1) !! Buffer is an index buffer.
    integer(c_unsigned), parameter, public :: SDL_GPU_BUFFERUSAGE_INDIRECT              = shiftl(1_c_unsigned, 2) !! Buffer is an indirect buffer.
    integer(c_unsigned), parameter, public :: SDL_GPU_BUFFERUSAGE_GRAPHICS_STORAGE_READ = shiftl(1_c_unsigned, 3) !! Buffer supports storage reads in graphics stages.
    integer(c_unsigned), parameter, public :: SDL_GPU_BUFFERUSAGE_COMPUTE_STORAGE_READ  = shiftl(1_c_unsigned, 4) !! Buffer supports storage reads in the compute stage.
    integer(c_unsigned), parameter, public :: SDL_GPU_BUFFERUSAGE_COMPUTE_STORAGE_WRITE = shiftl(1_c_unsigned, 5) !! Buffer supports storage writes in the compute stage.

    ! enum SDL_GPUTransferBufferUsage
    integer(c_int), parameter, public :: SDL_GPU_TRANSFERBUFFERUSAGE_UPLOAD   = 0
    integer(c_int), parameter, public :: SDL_GPU_TRANSFERBUFFERUSAGE_DOWNLOAD = 1

    ! enum SDL_GPUShaderStage
    integer(c_int), parameter, public :: SDL_GPU_SHADERSTAGE_VERTEX   = 0
    integer(c_int), parameter, public :: SDL_GPU_SHADERSTAGE_FRAGMENT = 1

    ! enum SDL_GPUVertexElementFormat
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_INVALID      =  0
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_INT          =  1
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_INT2         =  2
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_INT3         =  3
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_INT4         =  4
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_UINT         =  5
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_UINT2        =  6
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_UINT3        =  7
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_UINT4        =  8
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_FLOAT        =  9
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_FLOAT2       = 10
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_FLOAT3       = 11
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_FLOAT4       = 12
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_BYTE2        = 13
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_BYTE4        = 14
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_UBYTE2       = 15
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_UBYTE4       = 16
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_BYTE2_NORM   = 17
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_BYTE4_NORM   = 18
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_UBYTE2_NORM  = 19
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_UBYTE4_NORM  = 20
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_SHORT2       = 21
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_SHORT4       = 22
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_USHORT2      = 23
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_USHORT4      = 24
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_SHORT2_NORM  = 25
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_SHORT4_NORM  = 26
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_USHORT2_NORM = 27
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_USHORT4_NORM = 28
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_HALF2        = 29
    integer(c_int), parameter, public :: SDL_GPU_VERTEXELEMENTFORMAT_HALF4        = 30

    ! enum SDL_GPUVertexInputRate
    integer(c_int), parameter, public :: SDL_GPU_VERTEXINPUTRATE_VERTEX   = 0 !! Attribute addressing is a function of the vertex index.
    integer(c_int), parameter, public :: SDL_GPU_VERTEXINPUTRATE_INSTANCE = 1 !! Attribute addressing is a function of the instance index.

    ! enum SDL_GPUFillMode
    integer(c_int), parameter, public :: SDL_GPU_FILLMODE_FILL = 0 !! Polygons will be rendered via rasterization.
    integer(c_int), parameter, public :: SDL_GPU_FILLMODE_LINE = 1 !! Polygon edges will be drawn as line segments.

    ! enum SDL_GPUCullMode
    integer(c_int), parameter, public :: SDL_GPU_CULLMODE_NONE  = 0 !! No triangles are culled.
    integer(c_int), parameter, public :: SDL_GPU_CULLMODE_FRONT = 1 !! Front-facing triangles are culled.
    integer(c_int), parameter, public :: SDL_GPU_CULLMODE_BACK  = 2 !! Back-facing triangles are culled.

    ! enum SDL_GPUFrontFace
    integer(c_int), parameter, public :: SDL_GPU_FRONTFACE_COUNTER_CLOCKWISE = 0 !! A triangle with counter-clockwise vertex winding will be considered front-facing.
    integer(c_int), parameter, public :: SDL_GPU_FRONTFACE_CLOCKWISE         = 1 !! A triangle with clockwise vertex winding will be considered front-facing.

    ! enum SDL_GPUCompareOp
    integer(c_int), parameter, public :: SDL_GPU_COMPAREOP_INVALID          = 0
    integer(c_int), parameter, public :: SDL_GPU_COMPAREOP_NEVER            = 1 !! The comparison always evaluates false.
    integer(c_int), parameter, public :: SDL_GPU_COMPAREOP_LESS             = 2 !! The comparison evaluates reference < test.
    integer(c_int), parameter, public :: SDL_GPU_COMPAREOP_EQUAL            = 3 !! The comparison evaluates reference == test.
    integer(c_int), parameter, public :: SDL_GPU_COMPAREOP_LESS_OR_EQUAL    = 4 !! The comparison evaluates reference <= test.
    integer(c_int), parameter, public :: SDL_GPU_COMPAREOP_GREATER          = 5 !! The comparison evaluates reference > test.
    integer(c_int), parameter, public :: SDL_GPU_COMPAREOP_NOT_EQUAL        = 6 !! The comparison evaluates reference !!= test.
    integer(c_int), parameter, public :: SDL_GPU_COMPAREOP_GREATER_OR_EQUAL = 7 !! The comparison evaluates reference >= test.
    integer(c_int), parameter, public :: SDL_GPU_COMPAREOP_ALWAYS           = 8 !! The comparison always evaluates true.

    ! enum SDL_GPUStencilOp
    integer(c_int), parameter, public :: SDL_GPU_STENCILOP_INVALID             = 0
    integer(c_int), parameter, public :: SDL_GPU_STENCILOP_KEEP                = 1 !! Keeps the current value.
    integer(c_int), parameter, public :: SDL_GPU_STENCILOP_ZERO                = 2 !! Sets the value to 0.
    integer(c_int), parameter, public :: SDL_GPU_STENCILOP_REPLACE             = 3 !! Sets the value to reference.
    integer(c_int), parameter, public :: SDL_GPU_STENCILOP_INCREMENT_AND_CLAMP = 4 !! Increments the current value and clamps to the maximum value.
    integer(c_int), parameter, public :: SDL_GPU_STENCILOP_DECREMENT_AND_CLAMP = 5 !! Decrements the current value and clamps to 0.
    integer(c_int), parameter, public :: SDL_GPU_STENCILOP_INVERT              = 6 !! Bitwise-inverts the current value.
    integer(c_int), parameter, public :: SDL_GPU_STENCILOP_INCREMENT_AND_WRAP  = 7 !! Increments the current value and wraps back to 0.
    integer(c_int), parameter, public :: SDL_GPU_STENCILOP_DECREMENT_AND_WRAP  = 8 !! Decrements the current value and wraps to the maximum value.

    ! enum SDL_GPUBlendOp
    integer(c_int), parameter, public :: SDL_GPU_BLENDOP_INVALID          = 0
    integer(c_int), parameter, public :: SDL_GPU_BLENDOP_ADD              = 1 !! (source *source_factor) + (destination *destination_factor)
    integer(c_int), parameter, public :: SDL_GPU_BLENDOP_SUBTRACT         = 2 !! (source *source_factor) - (destination *destination_factor)
    integer(c_int), parameter, public :: SDL_GPU_BLENDOP_REVERSE_SUBTRACT = 3 !! (destination *destination_factor) - (source *source_factor)
    integer(c_int), parameter, public :: SDL_GPU_BLENDOP_MIN              = 4 !! min(source, destination)
    integer(c_int), parameter, public :: SDL_GPU_BLENDOP_MAX              = 5 !! max(source, destination)

    ! enum SDL_GPUBlendFactor
    integer(c_int), parameter, public :: SDL_GPU_BLENDFACTOR_INVALID                  =  0
    integer(c_int), parameter, public :: SDL_GPU_BLENDFACTOR_ZERO                     =  1 !! 0.
    integer(c_int), parameter, public :: SDL_GPU_BLENDFACTOR_ONE                      =  2 !! 1.
    integer(c_int), parameter, public :: SDL_GPU_BLENDFACTOR_SRC_COLOR                =  3 !! source color.
    integer(c_int), parameter, public :: SDL_GPU_BLENDFACTOR_ONE_MINUS_SRC_COLOR      =  4 !! 1 - source color.
    integer(c_int), parameter, public :: SDL_GPU_BLENDFACTOR_DST_COLOR                =  5 !! destination color.
    integer(c_int), parameter, public :: SDL_GPU_BLENDFACTOR_ONE_MINUS_DST_COLOR      =  6 !! 1 - destination color.
    integer(c_int), parameter, public :: SDL_GPU_BLENDFACTOR_SRC_ALPHA                =  7 !! source alpha.
    integer(c_int), parameter, public :: SDL_GPU_BLENDFACTOR_ONE_MINUS_SRC_ALPHA      =  8 !! 1 - source alpha.
    integer(c_int), parameter, public :: SDL_GPU_BLENDFACTOR_DST_ALPHA                =  9 !! destination alpha.
    integer(c_int), parameter, public :: SDL_GPU_BLENDFACTOR_ONE_MINUS_DST_ALPHA      = 10 !! 1 - destination alpha.
    integer(c_int), parameter, public :: SDL_GPU_BLENDFACTOR_CONSTANT_COLOR           = 11 !! blend constant.
    integer(c_int), parameter, public :: SDL_GPU_BLENDFACTOR_ONE_MINUS_CONSTANT_COLOR = 12 !! 1 - blend constant.
    integer(c_int), parameter, public :: SDL_GPU_BLENDFACTOR_SRC_ALPHA_SATURATE       = 13 !! min(source alpha, 1 - destination alpha).

    ! enum SDL_GPUFilter
    integer(c_int), parameter, public :: SDL_GPU_FILTER_NEAREST = 0 !! Point filtering.
    integer(c_int), parameter, public :: SDL_GPU_FILTER_LINEAR  = 1 !! Linear filtering.

    ! enum SDL_GPUSamplerMipmapMode
    integer(c_int), parameter, public :: SDL_GPU_SAMPLERMIPMAPMODE_NEAREST = 0 !! Point filtering.
    integer(c_int), parameter, public :: SDL_GPU_SAMPLERMIPMAPMODE_LINEAR  = 1 !! Linear filtering.

    ! enum SDL_GPUSamplerAddressMode
    integer(c_int), parameter, public :: SDL_GPU_SAMPLERADDRESSMODE_REPEAT          = 0 !! Specifies that the coordinates will wrap around.
    integer(c_int), parameter, public :: SDL_GPU_SAMPLERADDRESSMODE_MIRRORED_REPEAT = 1 !! Specifies that the coordinates will wrap around mirrored.
    integer(c_int), parameter, public :: SDL_GPU_SAMPLERADDRESSMODE_CLAMP_TO_EDGE   = 2 !! Specifies that the coordinates will clamp to the 0-1 range.

    ! enum SDL_GPUPresentMode
    integer(c_int), parameter, public :: SDL_GPU_PRESENTMODE_VSYNC     = 0
    integer(c_int), parameter, public :: SDL_GPU_PRESENTMODE_IMMEDIATE = 1
    integer(c_int), parameter, public :: SDL_GPU_PRESENTMODE_MAILBOX   = 2

    ! enum SDL_GPUSwapchainComposition
    integer(c_int), parameter, public :: SDL_GPU_SWAPCHAINCOMPOSITION_SDR                 = 0
    integer(c_int), parameter, public :: SDL_GPU_SWAPCHAINCOMPOSITION_SDR_LINEAR          = 1
    integer(c_int), parameter, public :: SDL_GPU_SWAPCHAINCOMPOSITION_HDR_EXTENDED_LINEAR = 2
    integer(c_int), parameter, public :: SDL_GPU_SWAPCHAINCOMPOSITION_HDR10_ST2084        = 3

    ! struct SDL_GPUBuffer SDL_GPUBuffer
    ! struct SDL_GPUCommandBuffer SDL_GPUCommandBuffer
    ! struct SDL_GPUComputePass SDL_GPUComputePass
    ! struct SDL_GPUComputePipeline SDL_GPUComputePipeline
    ! struct SDL_GPUCopyPass SDL_GPUCopyPass
    ! struct SDL_GPUDevice SDL_GPUDevice
    ! struct SDL_GPUFence SDL_GPUFence
    ! struct SDL_GPUGraphicsPipeline SDL_GPUGraphicsPipeline
    ! struct SDL_GPURenderPass SDL_GPURenderPass
    ! struct SDL_GPUSampler SDL_GPUSampler
    ! struct SDL_GPUShader SDL_GPUShader
    ! struct SDL_GPUTexture SDL_GPUTexture
    ! struct SDL_GPUTransferBuffer SDL_GPUTransferBuffer

    ! struct SDL_GPUViewport
    type, bind(c), public :: sdl_gpu_viewport
        real(c_float) :: x         = 0.0 !! The left offset of the viewport.
        real(c_float) :: y         = 0.0 !! The top offset of the viewport.
        real(c_float) :: w         = 0.0 !! The width of the viewport.
        real(c_float) :: h         = 0.0 !! The height of the viewport.
        real(c_float) :: min_depth = 0.0 !! The minimum depth of the viewport.
        real(c_float) :: max_depth = 0.0 !! The maximum depth of the viewport.
    end type sdl_gpu_viewport

    ! struct SDL_GPUTextureTransferInfo
    type, bind(c), public :: sdl_gpu_texture_transfer_info
        type(c_ptr)     :: transfer_buffer = c_null_ptr !! The transfer buffer used in the transfer operation.
        integer(uint32) :: offset          = 0          !! The starting byte of the image data in the transfer buffer.
        integer(uint32) :: pixels_per_row  = 0          !! The number of pixels from one row to the next.
        integer(uint32) :: rows_per_layer  = 0          !! The number of rows from one layer/depth-slice to the next.
    end type sdl_gpu_texture_transfer_info

    ! struct SDL_GPUTransferBufferLocation
    type, bind(c), public :: sdl_gpu_transfer_buffer_location
        type(c_ptr)     :: transfer_buffer = c_null_ptr !! The transfer buffer used in the transfer operation.
        integer(uint32) :: offset          = 0          !! The starting byte of the buffer data in the transfer buffer.
    end type sdl_gpu_transfer_buffer_location

    ! struct SDL_GPUTextureLocation
    type, bind(c), public :: sdl_gpu_texture_location
        type(c_ptr)     :: texture   = c_null_ptr !! The texture used in the copy operation.
        integer(uint32) :: mip_level = 0          !! The mip level index of the location.
        integer(uint32) :: layer     = 0          !! The layer index of the location.
        integer(uint32) :: x         = 0          !! The left offset of the location.
        integer(uint32) :: y         = 0          !! The top offset of the location.
        integer(uint32) :: z         = 0          !! The front offset of the location.
    end type sdl_gpu_texture_location

    ! struct SDL_GPUTextureRegion
    type, bind(c), public :: sdl_gpu_texture_region
        type(c_ptr)     :: texture   = c_null_ptr !! The texture used in the copy operation.
        integer(uint32) :: mip_level = 0          !! The mip level index to transfer.
        integer(uint32) :: layer     = 0          !! The layer index to transfer.
        integer(uint32) :: x         = 0          !! The left offset of the region.
        integer(uint32) :: y         = 0          !! The top offset of the region.
        integer(uint32) :: z         = 0          !! The front offset of the region.
        integer(uint32) :: w         = 0          !! The width of the region.
        integer(uint32) :: h         = 0          !! The height of the region.
        integer(uint32) :: d         = 0          !! The depth of the region.
    end type sdl_gpu_texture_region

    ! struct SDL_GPUBlitRegion
    type, bind(c), public :: sdl_gpu_blit_region
        type(c_ptr)     :: texture              = c_null_ptr !! The texture.
        integer(uint32) :: mip_level            = 0          !! The mip level index of the region.
        integer(uint32) :: layer_or_depth_plane = 0          !! The layer index or depth plane of the region. This value is treated as a layer index on 2D array and cube textures, and as a depth plane on 3D textures.
        integer(uint32) :: x                    = 0          !! The left offset of the region.
        integer(uint32) :: y                    = 0          !! The top offset of the region.
        integer(uint32) :: w                    = 0          !! The width of the region.
        integer(uint32) :: h                    = 0          !! The height of the region.
    end type sdl_gpu_blit_region

    ! struct SDL_GPUBufferLocation
    type, bind(c), public :: sdl_gpu_buffer_location
        type(c_ptr)     :: buffer = c_null_ptr !! The buffer.
        integer(uint32) :: offset = 0          !! The starting byte within the buffer.
    end type sdl_gpu_buffer_location

    ! struct SDL_GPUBufferRegion
    type, bind(c), public :: sdl_gpu_buffer_region
        type(c_ptr)     :: buffer = c_null_ptr !! The buffer.
        integer(uint32) :: offset = 0          !! The starting byte within the buffer.
        integer(uint32) :: size   = 0          !! The size in bytes of the region.
    end type sdl_gpu_buffer_region

    ! struct SDL_GPUIndirectDrawCommand
    type, bind(c), public :: sdl_gpu_indirect_draw_command
        integer(uint32) :: num_vertices   = 0 !! The number of vertices to draw.
        integer(uint32) :: num_instances  = 0 !! The number of instances to draw.
        integer(uint32) :: first_vertex   = 0 !! The index of the first vertex to draw.
        integer(uint32) :: first_instance = 0 !! The ID of the first instance to draw.
    end type sdl_gpu_indirect_draw_command

    ! struct SDL_GPUIndexedIndirectDrawCommand
    type, bind(c), public :: sdl_gpu_indexed_indirect_draw_command
        integer(uint32) :: num_indices    = 0 !! The number of indices to draw per instance.
        integer(uint32) :: num_instances  = 0 !! The number of instances to draw.
        integer(uint32) :: first_index    = 0 !! The base index within the index buffer.
        integer(sint32) :: vertex_offset  = 0 !! The value added to the vertex index before indexing into the vertex buffer.
        integer(uint32) :: first_instance = 0 !! The ID of the first instance to draw.
    end type sdl_gpu_indexed_indirect_draw_command

    ! struct SDL_GPUIndirectDispatchCommand
    type, bind(c), public :: sdl_gpu_indirect_dispatch_command
        integer(uint32) :: groupcount_x = 0 !! The number of local workgroups to dispatch in the X dimension.
        integer(uint32) :: groupcount_y = 0 !! The number of local workgroups to dispatch in the Y dimension.
        integer(uint32) :: groupcount_z = 0 !! The number of local workgroups to dispatch in the Z dimension.
    end type sdl_gpu_indirect_dispatch_command

    ! struct SDL_GPUSamplerCreateInfo
    type, bind(c), public :: sdl_gpu_sampler_create_info
        integer(c_int)             :: min_filter        = 0              !! The minification filter to apply to lookups.
        integer(c_int)             :: mag_filter        = 0              !! The magnification filter to apply to lookups.
        integer(c_int)             :: mipmap_mode       = 0              !! The mipmap filter to apply to lookups.
        integer(c_int)             :: address_mode_u    = 0              !! The addressing mode for U coordinates outside [0, 1).
        integer(c_int)             :: address_mode_v    = 0              !! The addressing mode for V coordinates outside [0, 1).
        integer(c_int)             :: address_mode_w    = 0              !! The addressing mode for W coordinates outside [0, 1).
        real(c_float)              :: mip_lod_bias      = 0.0            !! The bias to be added to mipmap LOD calculation.
        real(c_float)              :: max_anisotropy    = 0.0            !! The anisotropy value clamp used by the sampler. If enable_anisotropy is false, this is ignored.
        integer(c_int)             :: compare_op        = 0              !! The comparison operator to apply to fetched data before filtering.
        real(c_float)              :: min_lod           = 0.0            !! Clamps the minimum of the computed LOD value.
        real(c_float)              :: max_lod           = 0.0            !! Clamps the maximum of the computed LOD value.
        logical(c_bool)            :: enable_anisotropy = .false._c_bool !! True to enable anisotropic filtering.
        logical(c_bool)            :: enable_compare    = .false._c_bool !! True to enable comparison against a reference value during lookups.
        integer(uint8), private    :: padding1          = 0
        integer(uint8), private    :: padding2          = 0
        integer(sdl_properties_id) :: props             = 0              !! A properties ID for extensions. Should be 0 if no extensions are needed.
    end type sdl_gpu_sampler_create_info

    ! struct SDL_GPUVertexBufferDescription
    type, bind(c), public :: sdl_gpu_vertex_buffer_description
        integer(uint32) :: slot               = 0 !! The binding slot of the vertex buffer.
        integer(uint32) :: pitch              = 0 !! The size of a single element + the offset between elements.
        integer(c_int)  :: input_rate         = 0 !! Whether attribute addressing is a function of the vertex index or instance index.
        integer(uint32) :: instance_step_rate = 0 !! Reserved for future use. Must be set to 0.
    end type sdl_gpu_vertex_buffer_description

    ! struct SDL_GPUVertexAttribute
    type, bind(c), public :: sdl_gpu_vertex_attribute
        integer(uint32) :: location    = 0 !! The shader input location index.
        integer(uint32) :: buffer_slot = 0 !! The binding slot of the associated vertex buffer.
        integer(c_int)  :: format      = 0 !! The size and type of the attribute data.
        integer(uint32) :: offset      = 0 !! The byte offset of this attribute relative to the start of the vertex element.
    end type sdl_gpu_vertex_attribute

    ! struct SDL_GPUVertexInputState
    type, bind(c), public :: sdl_gpu_vertex_input_state
        type(c_ptr)     :: vertex_buffer_descriptions = c_null_ptr !! A pointer to an array of vertex buffer descriptions.
        integer(uint32) :: num_vertex_buffers         = 0          !! The number of vertex buffer descriptions in the above array.
        type(c_ptr)     :: vertex_attributes          = c_null_ptr !! A pointer to an array of vertex attribute descriptions.
        integer(uint32) :: num_vertex_attributes      = 0          !! The number of vertex attribute descriptions in the above array.
    end type sdl_gpu_vertex_input_state

    ! struct SDL_GPUStencilOpState
    type, bind(c), public :: sdl_gpu_stencil_op_state
        integer(c_int) :: fail_op       = 0 !! The action performed on samples that fail the stencil test.
        integer(c_int) :: pass_op       = 0 !! The action performed on samples that pass the depth and stencil tests.
        integer(c_int) :: depth_fail_op = 0 !! The action performed on samples that pass the stencil test and fail the depth test.
        integer(c_int) :: compare_op    = 0 !! The comparison operator used in the stencil test.
    end type sdl_gpu_stencil_op_state

    ! struct SDL_GPUColorTargetBlendState
    type, bind(c), public :: sdl_gpu_color_target_blend_state
        integer(c_int)                         :: src_color_blendfactor   = 0              !! The value to be multiplied by the source RGB value.
        integer(c_int)                         :: dst_color_blendfactor   = 0              !! The value to be multiplied by the destination RGB value.
        integer(c_int)                         :: color_blend_op          = 0              !! The blend operation for the RGB components.
        integer(c_int)                         :: src_alpha_blendfactor   = 0              !! The value to be multiplied by the source alpha.
        integer(c_int)                         :: dst_alpha_blendfactor   = 0              !! The value to be multiplied by the destination alpha.
        integer(c_int)                         :: alpha_blend_op          = 0              !! The blend operation for the alpha component.
        integer(sdl_gpu_color_component_flags) :: color_write_mask        = 0              !! A bitmask specifying which of the RGBA components are enabled for writing. Writes to all channels if enable_color_write_mask is false.
        logical(c_bool)                        :: enable_blend            = .false._c_bool !! Whether blending is enabled for the color target.
        logical(c_bool)                        :: enable_color_write_mask = .false._c_bool !! Whether the color write mask is enabled.
        integer(uint8), private                :: padding1                = 0
        integer(uint8), private                :: padding2                = 0
    end type sdl_gpu_color_target_blend_state

    ! struct SDL_GPUShaderCreateInfo
    type, bind(c), public :: sdl_gpu_shader_create_info
        integer(c_size_t)              :: code_size            = 0          !! The size in bytes of the code pointed to.
        type(c_ptr)                    :: code                 = c_null_ptr !! A pointer to shader code.
        type(c_ptr)                    :: entrypoint           = c_null_ptr !! A pointer to a null-terminated UTF-8 string specifying the entry point function name for the shader.
        integer(sdl_gpu_shader_format) :: format               = 0          !! The format of the shader code.
        integer(c_int)                 :: stage                = 0          !! The stage the shader program corresponds to.
        integer(uint32)                :: num_samplers         = 0          !! The number of samplers defined in the shader.
        integer(uint32)                :: num_storage_textures = 0          !! The number of storage textures defined in the shader.
        integer(uint32)                :: num_storage_buffers  = 0          !! The number of storage buffers defined in the shader.
        integer(uint32)                :: num_uniform_buffers  = 0          !! The number of uniform buffers defined in the shader.
        integer(sdl_properties_id)     :: props                = 0          !! A properties ID for extensions. Should be 0 if no extensions are needed.
    end type sdl_gpu_shader_create_info

    ! struct SDL_GPUTextureCreateInfo
    type, bind(c), public :: sdl_gpu_texture_create_info
        integer(c_int)                       :: type                 = 0 !! The base dimensionality of the texture.
        integer(c_int)                       :: format               = 0 !! The pixel format of the texture.
        integer(sdl_gpu_texture_usage_flags) :: usage                = 0 !! How the texture is intended to be used by the client.
        integer(uint32)                      :: width                = 0 !! The width of the texture.
        integer(uint32)                      :: height               = 0 !! The height of the texture.
        integer(uint32)                      :: layer_count_or_depth = 0 !! The layer count or depth of the texture. This value is treated as a layer count on 2D array textures, and as a depth value on 3D textures.
        integer(uint32)                      :: num_levels           = 0 !! The number of mip levels in the texture.
        integer(c_int)                       :: sample_count         = 0 !! The number of samples per texel. Only applies if the texture is used as a render target.
        integer(sdl_properties_id)           :: props                = 0 !! A properties ID for extensions. Should be 0 if no extensions are needed.
    end type sdl_gpu_texture_create_info

    ! struct SDL_GPUBufferCreateInfo
    type, bind(c), public :: sdl_gpu_buffer_create_info
        integer(sdl_gpu_buffer_usage_flags) :: usage = 0 !! How the buffer is intended to be used by the client.
        integer(uint32)                     :: size  = 0 !! The size in bytes of the buffer.
        integer(sdl_properties_id)          :: props = 0 !! A properties ID for extensions. Should be 0 if no extensions are needed.
    end type sdl_gpu_buffer_create_info

    ! struct SDL_GPUTransferBufferCreateInfo
    type, bind(c), public :: sdl_gpu_transfer_buffer_create_info
        integer(c_int)             :: usage = 0 !! How the transfer buffer is intended to be used by the client.
        integer(uint32)            :: size  = 0 !! The size in bytes of the transfer buffer.
        integer(sdl_properties_id) :: props = 0 !! A properties ID for extensions. Should be 0 if no extensions are needed.
    end type sdl_gpu_transfer_buffer_create_info

    ! struct SDL_GPURasterizerState
    type, bind(c), public :: sdl_gpu_rasterizer_state
        integer(c_int)          :: fill_mode                  = 0              !! Whether polygons will be filled in or drawn as lines.
        integer(c_int)          :: cull_mode                  = 0              !! The facing direction in which triangles will be culled.
        integer(c_int)          :: front_face                 = 0              !! The vertex winding that will cause a triangle to be determined as front-facing.
        real(c_float)           :: depth_bias_constant_factor = 0              !! A scalar factor controlling the depth value added to each fragment.
        real(c_float)           :: depth_bias_clamp           = 0.0            !! The maximum depth bias of a fragment.
        real(c_float)           :: depth_bias_slope_factor    = 0.0            !! A scalar factor applied to a fragment's slope in depth calculations.
        logical(c_bool)         :: enable_depth_bias          = .false._c_bool !! True to bias fragment depth values.
        logical(c_bool)         :: enable_depth_clip          = .false._c_bool !! True to enable depth clip, false to enable depth clamp.
        integer(uint8), private :: padding1                   = 0
        integer(uint8), private :: padding2                   = 0
    end type sdl_gpu_rasterizer_state

    ! struct SDL_GPUMultisampleState
    type, bind(c), public :: sdl_gpu_multisample_state
        integer(c_int)          :: sample_count             = 0              !! The number of samples to be used in rasterization.
        integer(uint32)         :: sample_mask              = 0              !! Reserved for future use. Must be set to 0.
        logical(c_bool)         :: enable_mask              = .false._c_bool !! Reserved for future use. Must be set to false.
        logical(c_bool)         :: enable_alpha_to_coverage = .false._c_bool !! True enables the alpha-to-coverage feature.
        integer(uint8), private :: padding1                 = 0
        integer(uint8), private :: padding2                 = 0
    end type sdl_gpu_multisample_state

    ! struct SDL_GPUDepthStencilState
    type, bind(c), public :: sdl_gpu_depth_stencil_state
        integer(c_int)                 :: compare_op          = 0                          !! The comparison operator used for depth testing.
        type(sdl_gpu_stencil_op_state) :: back_stencil_state  = sdl_gpu_stencil_op_state() !! The stencil op state for back-facing triangles.
        type(sdl_gpu_stencil_op_state) :: front_stencil_state = sdl_gpu_stencil_op_state() !! The stencil op state for front-facing triangles.
        integer(uint8)                 :: compare_mask        = 0                          !! Selects the bits of the stencil values participating in the stencil test.
        integer(uint8)                 :: write_mask          = 0                          !! Selects the bits of the stencil values updated by the stencil test.
        logical(c_bool)                :: enable_depth_test   = .false._c_bool             !! True enables the depth test.
        logical(c_bool)                :: enable_depth_write  = .false._c_bool             !! True enables depth writes. Depth writes are always disabled when enable_depth_test is false.
        logical(c_bool)                :: enable_stencil_test = .false._c_bool             !! True enables the stencil test.
        integer(uint8), private        :: padding1            = 0
        integer(uint8), private        :: padding2            = 0
        integer(uint8), private        :: padding3            = 0
    end type sdl_gpu_depth_stencil_state

    ! struct SDL_GPUColorTargetDescription
    type, bind(c), public :: sdl_gpu_color_target_description
        integer(c_int)                         :: format      = 0                                  !! The pixel format of the texture to be used as a color target.
        type(sdl_gpu_color_target_blend_state) :: blend_state = sdl_gpu_color_target_blend_state() !! The blend state to be used for the color target.
    end type sdl_gpu_color_target_description

    ! struct SDL_GPUGraphicsPipelineTargetInfo
    type, bind(c), public :: sdl_gpu_graphics_pipeline_target_info
        type(c_ptr)             :: color_target_descriptions = c_null_ptr     !! A pointer to an array of color target descriptions.
        integer(uint32)         :: num_color_targets         = 0              !! The number of color target descriptions in the above array.
        integer(c_int)          :: depth_stencil_format      = 0              !! The pixel format of the depth-stencil target. Ignored if has_depth_stencil_target is false.
        logical(c_bool)         :: has_depth_stencil_target  = .false._c_bool !! True specifies that the pipeline uses a depth-stencil target.
        integer(uint8), private :: padding1                  = 0
        integer(uint8), private :: padding2                  = 0
        integer(uint8), private :: padding3                  = 0
    end type sdl_gpu_graphics_pipeline_target_info

    ! struct SDL_GPUGraphicsPipelineCreateInfo
    type, bind(c), public :: sdl_gpu_graphics_pipeline_create_info
        type(c_ptr)                                 :: vertex_shader       = c_null_ptr                              !! The vertex shader used by the graphics pipeline.
        type(c_ptr)                                 :: fragment_shader     = c_null_ptr                              !! The fragment shader used by the graphics pipeline.
        type(sdl_gpu_vertex_input_state)            :: vertex_input_state  =  sdl_gpu_vertex_input_state()           !! The vertex layout of the graphics pipeline.
        integer(c_int)                              :: primitive_type      = 0                                       !! The primitive topology of the graphics pipeline.
        type(sdl_gpu_rasterizer_state)              :: rasterizer_state    = sdl_gpu_rasterizer_state()              !! The rasterizer state of the graphics pipeline.
        type(sdl_gpu_multisample_state)             :: multisample_state   = sdl_gpu_multisample_state()             !! The multisample state of the graphics pipeline.
        type(sdl_gpu_depth_stencil_state)           :: depth_stencil_state = sdl_gpu_depth_stencil_state()           !! The depth-stencil state of the graphics pipeline.
        type(sdl_gpu_graphics_pipeline_target_info) :: target_info         = sdl_gpu_graphics_pipeline_target_info() !! Formats and blend modes for the render targets of the graphics pipeline.
        integer(sdl_properties_id)                  :: props               = 0                                       !! A properties ID for extensions. Should be 0 if no extensions are needed.
    end type sdl_gpu_graphics_pipeline_create_info

    ! struct SDL_GPUComputePipelineCreateInfo
    type, bind(c), public :: sdl_gpu_compute_pipeline_create_info
        integer(c_size_t)              :: code_size                      = 0          !! The size in bytes of the compute shader code pointed to.
        type(c_ptr)                    :: code                           = c_null_ptr !! A pointer to compute shader code.
        type(c_ptr)                    :: entrypoint                     = c_null_ptr !! A pointer to a null-terminated UTF-8 string specifying the entry point function name for the shader.
        integer(sdl_gpu_shader_format) :: format                         = 0          !! The format of the compute shader code.
        integer(uint32)                :: num_samplers                   = 0          !! The number of samplers defined in the shader.
        integer(uint32)                :: num_readonly_storage_textures  = 0          !! The number of readonly storage textures defined in the shader.
        integer(uint32)                :: num_readonly_storage_buffers   = 0          !! The number of readonly storage buffers defined in the shader.
        integer(uint32)                :: num_readwrite_storage_textures = 0          !! The number of read-write storage textures defined in the shader.
        integer(uint32)                :: num_readwrite_storage_buffers  = 0          !! The number of read-write storage buffers defined in the shader.
        integer(uint32)                :: num_uniform_buffers            = 0          !! The number of uniform buffers defined in the shader.
        integer(uint32)                :: threadcount_x                  = 0          !! The number of threads in the X dimension. This should match the value in the shader.
        integer(uint32)                :: threadcount_y                  = 0          !! The number of threads in the Y dimension. This should match the value in the shader.
        integer(uint32)                :: threadcount_z                  = 0          !! The number of threads in the Z dimension. This should match the value in the shader.
        integer(sdl_properties_id)     :: props                          = 0          !! A properties ID for extensions. Should be 0 if no extensions are needed.
    end type sdl_gpu_compute_pipeline_create_info

    ! struct SDL_GPUColorTargetInfo
    type, bind(c), public :: sdl_gpu_color_target_info
        type(c_ptr)             :: texture               = c_null_ptr     !! The texture that will be used as a color target by a render pass.
        integer(uint32)         :: mip_level             = 0              !! The mip level to use as a color target.
        integer(uint32)         :: layer_or_depth_plane  = 0              !! The layer index or depth plane to use as a color target. This value is treated as a layer index on 2D array and cube textures, and as a depth plane on 3D textures.
        type(sdl_fcolor)        :: clear_color           = sdl_fcolor()   !! The color to clear the color target to at the start of the render pass. Ignored if SDL_GPU_LOADOP_CLEAR is not used.
        integer(c_int)          :: load_op               = 0              !! What is done with the contents of the color target at the beginning of the render pass.
        integer(c_int)          :: store_op              = 0              !! What is done with the results of the render pass.
        type(c_ptr)             :: resolve_texture       = c_null_ptr     !! The texture that will receive the results of a multisample resolve operation. Ignored if a RESOLVE*store_op is not used.
        integer(uint32)         :: resolve_mip_level     = 0              !! The mip level of the resolve texture to use for the resolve operation. Ignored if a RESOLVE*store_op is not used.
        integer(uint32)         :: resolve_layer         = 0              !! The layer index of the resolve texture to use for the resolve operation. Ignored if a RESOLVE*store_op is not used.
        logical(c_bool)         :: cycle                 = .false._c_bool !! True cycles the texture if the texture is bound and load_op is not LOAD.
        logical(c_bool)         :: cycle_resolve_texture = .false._c_bool !! True cycles the resolve texture if the resolve texture is bound. Ignored if a RESOLVE*store_op is not used.
        integer(uint8), private :: padding1              = 0
        integer(uint8), private :: padding2              = 0
    end type sdl_gpu_color_target_info

    ! struct SDL_GPUDepthStencilTargetInfo
    type, bind(c), public :: sdl_gpu_depth_stencil_target_info
        type(c_ptr)     :: texture          = c_null_ptr     !! The texture that will be used as the depth stencil target by the render pass.
        real(c_float)   :: clear_depth      = 0.0            !! The value to clear the depth component to at the beginning of the render pass. Ignored if SDL_GPU_LOADOP_CLEAR is not used.
        integer(c_int)  :: load_op          = 0              !! What is done with the depth contents at the beginning of the render pass.
        integer(c_int)  :: store_op         = 0              !! What is done with the depth results of the render pass.
        integer(c_int)  :: stencil_load_op  = 0              !! What is done with the stencil contents at the beginning of the render pass.
        integer(c_int)  :: stencil_store_op = 0              !! What is done with the stencil results of the render pass.
        logical(c_bool) :: cycle            = .false._c_bool !! True cycles the texture if the texture is bound and any load ops are not LOAD.
        integer(uint8)  :: clear_stencil    = 0              !! The value to clear the stencil component to at the beginning of the render pass. Ignored if SDL_GPU_LOADOP_CLEAR is not used.
        integer(uint8)  :: mip_level        = 0              !! The mip level to use as the depth stencil target.
        integer(uint8)  :: layer            = 0              !! The layer index to use as the depth stencil target.
    end type sdl_gpu_depth_stencil_target_info

    ! struct SDL_GPUBlitInfo
    type, bind(c), public :: sdl_gpu_blit_info
        type(sdl_gpu_blit_region) :: source       = sdl_gpu_blit_region() !! The source region for the blit.
        type(sdl_gpu_blit_region) :: destination  = sdl_gpu_blit_region() !! The destination region for the blit.
        integer(c_int)            :: load_op      = 0                     !! What is done with the contents of the destination before the blit.
        type(sdl_fcolor)          :: clear_color  = sdl_fcolor()          !! The color to clear the destination region to before the blit. Ignored if load_op is not SDL_GPU_LOADOP_CLEAR.
        integer(c_int)            :: flip_mode    = 0                     !! The flip mode for the source region.
        integer(c_int)            :: filter       = 0                     !! The filter mode used when blitting.
        logical(c_bool)           :: cycle        = .false._c_bool        !! True cycles the destination texture if it is already bound.
        integer(uint8), private   :: padding1     = 0
        integer(uint8), private   :: padding2     = 0
        integer(uint8), private   :: padding3     = 0
    end type sdl_gpu_blit_info

    ! struct SDL_GPUBufferBinding
    type, bind(c), public :: sdl_gpu_buffer_binding
        type(c_ptr)     :: buffer = c_null_ptr !! The buffer to bind. Must have been created with SDL_GPU_BUFFERUSAGE_VERTEX for SDL_BindGPUVertexBuffers, or SDL_GPU_BUFFERUSAGE_INDEX for SDL_BindGPUIndexBuffer.
        integer(uint32) :: offset = 0          !! The starting byte of the data to bind in the buffer.
    end type sdl_gpu_buffer_binding

    ! struct SDL_GPUTextureSamplerBinding
    type, bind(c), public :: sdl_gpu_texture_sampler_binding
        type(c_ptr) :: texture = c_null_ptr !! The texture to bind. Must have been created with SDL_GPU_TEXTUREUSAGE_SAMPLER.
        type(c_ptr) :: sampler = c_null_ptr !! The sampler to bind.
    end type sdl_gpu_texture_sampler_binding

    ! struct SDL_GPUStorageBufferReadWriteBinding
    type, bind(c), public :: sdl_gpu_storage_buffer_read_write_binding
        type(c_ptr)             :: buffer   = c_null_ptr     !! The buffer to bind. Must have been created with SDL_GPU_BUFFERUSAGE_COMPUTE_STORAGE_WRITE.
        logical(c_bool)         :: cycle    = .false._c_bool !! True cycles the buffer if it is already bound.
        integer(uint8), private :: padding1 = 0
        integer(uint8), private :: padding2 = 0
        integer(uint8), private :: padding3 = 0
    end type sdl_gpu_storage_buffer_read_write_binding

    ! struct SDL_GPUStorageTextureReadWriteBinding
    type, bind(c), public :: sdl_gpu_storage_texture_read_write_binding
        type(c_ptr)             :: texture   = c_null_ptr     !! The texture to bind. Must have been created with SDL_GPU_TEXTUREUSAGE_COMPUTE_STORAGE_WRITE or SDL_GPU_TEXTUREUSAGE_COMPUTE_STORAGE_SIMULTANEOUS_READ_WRITE.
        integer(uint32)         :: mip_level = 0              !! The mip level index to bind.
        integer(uint32)         :: layer     = 0              !! The layer index to bind.
        logical(c_bool)         :: cycle     = .false._c_bool !! True cycles the texture if it is already bound.
        integer(uint8), private :: padding1  = 0
        integer(uint8), private :: padding2  = 0
        integer(uint8), private :: padding3  = 0
    end type sdl_gpu_storage_texture_read_write_binding

    ! struct SDL_GPUVulkanOptions
    type, bind(c), public :: sdl_gpu_vulkan_options
        integer(uint32) :: vulkan_api_version                 = 0          !! The Vulkan API version to request for the instance. Use Vulkan's VK_MAKE_VERSION or VK_MAKE_API_VERSION.
        type(c_ptr)     :: feature_list                       = c_null_ptr !! Pointer to the first element of a chain of Vulkan feature structs. (Requires API version 1.1 or higher.)
        type(c_ptr)     :: vulkan_10_physical_device_features = c_null_ptr !! Pointer to a VkPhysicalDeviceFeatures struct to enable additional Vulkan 1.0 features.
        integer(uint32) :: device_extension_count             = 0          !! Number of additional device extensions to require.
        type(c_ptr)     :: device_extension_names             = c_null_ptr !! Pointer to a list of additional device extensions to require.
        integer(uint32) :: instance_extension_count           = 0          !! Number of additional instance extensions to require.
        type(c_ptr)     :: instance_extension_names           = c_null_ptr !! Pointer to a list of additional instance extensions to require.
    end type sdl_gpu_vulkan_options
end module sdl3_gpu
