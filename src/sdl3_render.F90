! Author:  Philipp Engel
! Licence: ISC
module sdl3_render
    !! Auto-generated Fortran 2023 interface bindings to `SDL3/SDL_render.h`.
    use :: sdl3_blendmode
    use :: sdl3_events
    use :: sdl3_gpu
    use :: sdl3_pixels
    use :: sdl3_properties
    use :: sdl3_rect
    use :: sdl3_stdinc
    use :: sdl3_video
    implicit none (type, external)
    private

    character(*), parameter, public :: SDL_SOFTWARE_RENDERER = 'software'
    character(*), parameter, public :: SDL_GPU_RENDERER      = 'gpu'

    character(*), parameter, public :: SDL_PROP_RENDERER_CREATE_NAME_STRING                        = 'SDL.renderer.create.name'
    character(*), parameter, public :: SDL_PROP_RENDERER_CREATE_WINDOW_POINTER                     = 'SDL.renderer.create.window'
    character(*), parameter, public :: SDL_PROP_RENDERER_CREATE_SURFACE_POINTER                    = 'SDL.renderer.create.surface'
    character(*), parameter, public :: SDL_PROP_RENDERER_CREATE_OUTPUT_COLORSPACE_NUMBER           = 'SDL.renderer.create.output_colorspace'
    character(*), parameter, public :: SDL_PROP_RENDERER_CREATE_PRESENT_VSYNC_NUMBER               = 'SDL.renderer.create.present_vsync'
    character(*), parameter, public :: SDL_PROP_RENDERER_CREATE_GPU_DEVICE_POINTER                 = 'SDL.renderer.create.gpu.device'
    character(*), parameter, public :: SDL_PROP_RENDERER_CREATE_GPU_SHADERS_SPIRV_BOOLEAN          = 'SDL.renderer.create.gpu.shaders_spirv'
    character(*), parameter, public :: SDL_PROP_RENDERER_CREATE_GPU_SHADERS_DXIL_BOOLEAN           = 'SDL.renderer.create.gpu.shaders_dxil'
    character(*), parameter, public :: SDL_PROP_RENDERER_CREATE_GPU_SHADERS_MSL_BOOLEAN            = 'SDL.renderer.create.gpu.shaders_msl'
    character(*), parameter, public :: SDL_PROP_RENDERER_CREATE_METAL_DEVICE_POINTER               = 'SDL.renderer.create.metal.device'
    character(*), parameter, public :: SDL_PROP_RENDERER_CREATE_METAL_COMMAND_QUEUE_POINTER        = 'SDL.renderer.create.metal.command_queue'
    character(*), parameter, public :: SDL_PROP_RENDERER_CREATE_VULKAN_INSTANCE_POINTER            = 'SDL.renderer.create.vulkan.instance'
    character(*), parameter, public :: SDL_PROP_RENDERER_CREATE_VULKAN_SURFACE_NUMBER              = 'SDL.renderer.create.vulkan.surface'
    character(*), parameter, public :: SDL_PROP_RENDERER_CREATE_VULKAN_PHYSICAL_DEVICE_POINTER     = 'SDL.renderer.create.vulkan.physical_device'
    character(*), parameter, public :: SDL_PROP_RENDERER_CREATE_VULKAN_DEVICE_POINTER              = 'SDL.renderer.create.vulkan.device'
    character(*), parameter, public :: SDL_PROP_RENDERER_CREATE_VULKAN_GRAPHICS_QUEUE_INDEX_NUMBER = 'SDL.renderer.create.vulkan.graphics_queue_family_index' !! SDL_PROP_RENDERER_CREATE_VULKAN_GRAPHICS_QUEUE_FAMILY_INDEX_NUMBER
    character(*), parameter, public :: SDL_PROP_RENDERER_CREATE_VULKAN_PRESENT_QUEUE_INDEX_NUMBER  = 'SDL.renderer.create.vulkan.present_queue_family_index'  !! SDL_PROP_RENDERER_CREATE_VULKAN_PRESENT_QUEUE_FAMILY_INDEX_NUMBER

    character(*), parameter, public :: SDL_PROP_RENDERER_NAME_STRING                               = 'SDL.renderer.name'
    character(*), parameter, public :: SDL_PROP_RENDERER_WINDOW_POINTER                            = 'SDL.renderer.window'
    character(*), parameter, public :: SDL_PROP_RENDERER_SURFACE_POINTER                           = 'SDL.renderer.surface'
    character(*), parameter, public :: SDL_PROP_RENDERER_VSYNC_NUMBER                              = 'SDL.renderer.vsync'
    character(*), parameter, public :: SDL_PROP_RENDERER_MAX_TEXTURE_SIZE_NUMBER                   = 'SDL.renderer.max_texture_size'
    character(*), parameter, public :: SDL_PROP_RENDERER_TEXTURE_FORMATS_POINTER                   = 'SDL.renderer.texture_formats'
    character(*), parameter, public :: SDL_PROP_RENDERER_TEXTURE_WRAPPING_BOOLEAN                  = 'SDL.renderer.texture_wrapping'
    character(*), parameter, public :: SDL_PROP_RENDERER_OUTPUT_COLORSPACE_NUMBER                  = 'SDL.renderer.output_colorspace'
    character(*), parameter, public :: SDL_PROP_RENDERER_HDR_ENABLED_BOOLEAN                       = 'SDL.renderer.HDR_enabled'
    character(*), parameter, public :: SDL_PROP_RENDERER_SDR_WHITE_POINT_FLOAT                     = 'SDL.renderer.SDR_white_point'
    character(*), parameter, public :: SDL_PROP_RENDERER_HDR_HEADROOM_FLOAT                        = 'SDL.renderer.HDR_headroom'
    character(*), parameter, public :: SDL_PROP_RENDERER_D3D9_DEVICE_POINTER                       = 'SDL.renderer.d3d9.device'
    character(*), parameter, public :: SDL_PROP_RENDERER_D3D11_DEVICE_POINTER                      = 'SDL.renderer.d3d11.device'
    character(*), parameter, public :: SDL_PROP_RENDERER_D3D11_SWAPCHAIN_POINTER                   = 'SDL.renderer.d3d11.swap_chain'
    character(*), parameter, public :: SDL_PROP_RENDERER_D3D12_DEVICE_POINTER                      = 'SDL.renderer.d3d12.device'
    character(*), parameter, public :: SDL_PROP_RENDERER_D3D12_SWAPCHAIN_POINTER                   = 'SDL.renderer.d3d12.swap_chain'
    character(*), parameter, public :: SDL_PROP_RENDERER_D3D12_COMMAND_QUEUE_POINTER               = 'SDL.renderer.d3d12.command_queue'
    character(*), parameter, public :: SDL_PROP_RENDERER_METAL_DEVICE_POINTER                      = 'SDL.renderer.metal.device'
    character(*), parameter, public :: SDL_PROP_RENDERER_METAL_COMMAND_QUEUE_POINTER               = 'SDL.renderer.metal.command_queue'
    character(*), parameter, public :: SDL_PROP_RENDERER_VULKAN_INSTANCE_POINTER                   = 'SDL.renderer.vulkan.instance'
    character(*), parameter, public :: SDL_PROP_RENDERER_VULKAN_SURFACE_NUMBER                     = 'SDL.renderer.vulkan.surface'
    character(*), parameter, public :: SDL_PROP_RENDERER_VULKAN_PHYSICAL_DEVICE_POINTER            = 'SDL.renderer.vulkan.physical_device'
    character(*), parameter, public :: SDL_PROP_RENDERER_VULKAN_DEVICE_POINTER                     = 'SDL.renderer.vulkan.device'
    character(*), parameter, public :: SDL_PROP_RENDERER_VULKAN_GRAPHICS_QUEUE_FAMILY_INDEX_NUMBER = 'SDL.renderer.vulkan.graphics_queue_family_index'
    character(*), parameter, public :: SDL_PROP_RENDERER_VULKAN_PRESENT_QUEUE_FAMILY_INDEX_NUMBER  = 'SDL.renderer.vulkan.present_queue_family_index'
    character(*), parameter, public :: SDL_PROP_RENDERER_VULKAN_SWAPCHAIN_IMAGE_COUNT_NUMBER       = 'SDL.renderer.vulkan.swapchain_image_count'
    character(*), parameter, public :: SDL_PROP_RENDERER_GPU_DEVICE_POINTER                        = 'SDL.renderer.gpu.device'

    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_COLORSPACE_NUMBER           = 'SDL.texture.create.colorspace'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_FORMAT_NUMBER               = 'SDL.texture.create.format'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_ACCESS_NUMBER               = 'SDL.texture.create.access'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_WIDTH_NUMBER                = 'SDL.texture.create.width'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_HEIGHT_NUMBER               = 'SDL.texture.create.height'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_PALETTE_POINTER             = 'SDL.texture.create.palette'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_SDR_WHITE_POINT_FLOAT       = 'SDL.texture.create.SDR_white_point'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_HDR_HEADROOM_FLOAT          = 'SDL.texture.create.HDR_headroom'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_D3D11_TEXTURE_POINTER       = 'SDL.texture.create.d3d11.texture'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_D3D11_TEXTURE_U_POINTER     = 'SDL.texture.create.d3d11.texture_u'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_D3D11_TEXTURE_V_POINTER     = 'SDL.texture.create.d3d11.texture_v'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_D3D12_TEXTURE_POINTER       = 'SDL.texture.create.d3d12.texture'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_D3D12_TEXTURE_U_POINTER     = 'SDL.texture.create.d3d12.texture_u'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_D3D12_TEXTURE_V_POINTER     = 'SDL.texture.create.d3d12.texture_v'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_METAL_PIXELBUFFER_POINTER   = 'SDL.texture.create.metal.pixelbuffer'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_METAL_TEXTURE_POINTER       = 'SDL.texture.create.metal.texture'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_METAL_TEXTURE_UV_POINTER    = 'SDL.texture.create.metal.texture_uv'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_METAL_TEXTURE_U_POINTER     = 'SDL.texture.create.metal.texture_u'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_METAL_TEXTURE_V_POINTER     = 'SDL.texture.create.metal.texture_v'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_METAL_TEXTURE_USAGE_NUMBER  = 'SDL.texture.create.metal.texture_usage'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_OPENGL_TEXTURE_NUMBER       = 'SDL.texture.create.opengl.texture'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_OPENGL_TEXTURE_UV_NUMBER    = 'SDL.texture.create.opengl.texture_uv'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_OPENGL_TEXTURE_U_NUMBER     = 'SDL.texture.create.opengl.texture_u'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_OPENGL_TEXTURE_V_NUMBER     = 'SDL.texture.create.opengl.texture_v'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_NUMBER    = 'SDL.texture.create.opengles2.texture'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_UV_NUMBER = 'SDL.texture.create.opengles2.texture_uv'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_U_NUMBER  = 'SDL.texture.create.opengles2.texture_u'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_OPENGLES2_TEXTURE_V_NUMBER  = 'SDL.texture.create.opengles2.texture_v'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_VULKAN_TEXTURE_NUMBER       = 'SDL.texture.create.vulkan.texture'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_VULKAN_LAYOUT_NUMBER        = 'SDL.texture.create.vulkan.layout'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_GPU_TEXTURE_POINTER         = 'SDL.texture.create.gpu.texture'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_GPU_TEXTURE_UV_POINTER      = 'SDL.texture.create.gpu.texture_uv'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_GPU_TEXTURE_U_POINTER       = 'SDL.texture.create.gpu.texture_u'
    character(*), parameter, public :: SDL_PROP_TEXTURE_CREATE_GPU_TEXTURE_V_POINTER       = 'SDL.texture.create.gpu.texture_v'

    character(*), parameter, public :: SDL_PROP_TEXTURE_COLORSPACE_NUMBER               = 'SDL.texture.colorspace'
    character(*), parameter, public :: SDL_PROP_TEXTURE_FORMAT_NUMBER                   = 'SDL.texture.format'
    character(*), parameter, public :: SDL_PROP_TEXTURE_ACCESS_NUMBER                   = 'SDL.texture.access'
    character(*), parameter, public :: SDL_PROP_TEXTURE_WIDTH_NUMBER                    = 'SDL.texture.width'
    character(*), parameter, public :: SDL_PROP_TEXTURE_HEIGHT_NUMBER                   = 'SDL.texture.height'
    character(*), parameter, public :: SDL_PROP_TEXTURE_SDR_WHITE_POINT_FLOAT           = 'SDL.texture.SDR_white_point'
    character(*), parameter, public :: SDL_PROP_TEXTURE_HDR_HEADROOM_FLOAT              = 'SDL.texture.HDR_headroom'
    character(*), parameter, public :: SDL_PROP_TEXTURE_D3D11_TEXTURE_POINTER           = 'SDL.texture.d3d11.texture'
    character(*), parameter, public :: SDL_PROP_TEXTURE_D3D11_TEXTURE_U_POINTER         = 'SDL.texture.d3d11.texture_u'
    character(*), parameter, public :: SDL_PROP_TEXTURE_D3D11_TEXTURE_V_POINTER         = 'SDL.texture.d3d11.texture_v'
    character(*), parameter, public :: SDL_PROP_TEXTURE_D3D12_TEXTURE_POINTER           = 'SDL.texture.d3d12.texture'
    character(*), parameter, public :: SDL_PROP_TEXTURE_D3D12_TEXTURE_U_POINTER         = 'SDL.texture.d3d12.texture_u'
    character(*), parameter, public :: SDL_PROP_TEXTURE_D3D12_TEXTURE_V_POINTER         = 'SDL.texture.d3d12.texture_v'
    character(*), parameter, public :: SDL_PROP_TEXTURE_METAL_TEXTURE_POINTER           = 'SDL.texture.metal.texture'
    character(*), parameter, public :: SDL_PROP_TEXTURE_METAL_TEXTURE_UV_POINTER        = 'SDL.texture.metal.texture_uv'
    character(*), parameter, public :: SDL_PROP_TEXTURE_METAL_TEXTURE_U_POINTER         = 'SDL.texture.metal.texture_u'
    character(*), parameter, public :: SDL_PROP_TEXTURE_METAL_TEXTURE_V_POINTER         = 'SDL.texture.metal.texture_v'
    character(*), parameter, public :: SDL_PROP_TEXTURE_OPENGL_TEXTURE_NUMBER           = 'SDL.texture.opengl.texture'
    character(*), parameter, public :: SDL_PROP_TEXTURE_OPENGL_TEXTURE_UV_NUMBER        = 'SDL.texture.opengl.texture_uv'
    character(*), parameter, public :: SDL_PROP_TEXTURE_OPENGL_TEXTURE_U_NUMBER         = 'SDL.texture.opengl.texture_u'
    character(*), parameter, public :: SDL_PROP_TEXTURE_OPENGL_TEXTURE_V_NUMBER         = 'SDL.texture.opengl.texture_v'
    character(*), parameter, public :: SDL_PROP_TEXTURE_OPENGL_TEXTURE_TARGET_NUMBER    = 'SDL.texture.opengl.target'
    character(*), parameter, public :: SDL_PROP_TEXTURE_OPENGL_TEX_W_FLOAT              = 'SDL.texture.opengl.tex_w'
    character(*), parameter, public :: SDL_PROP_TEXTURE_OPENGL_TEX_H_FLOAT              = 'SDL.texture.opengl.tex_h'
    character(*), parameter, public :: SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_NUMBER        = 'SDL.texture.opengles2.texture'
    character(*), parameter, public :: SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_UV_NUMBER     = 'SDL.texture.opengles2.texture_uv'
    character(*), parameter, public :: SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_U_NUMBER      = 'SDL.texture.opengles2.texture_u'
    character(*), parameter, public :: SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_V_NUMBER      = 'SDL.texture.opengles2.texture_v'
    character(*), parameter, public :: SDL_PROP_TEXTURE_OPENGLES2_TEXTURE_TARGET_NUMBER = 'SDL.texture.opengles2.target'
    character(*), parameter, public :: SDL_PROP_TEXTURE_VULKAN_TEXTURE_NUMBER           = 'SDL.texture.vulkan.texture'
    character(*), parameter, public :: SDL_PROP_TEXTURE_GPU_TEXTURE_POINTER             = 'SDL.texture.gpu.texture'
    character(*), parameter, public :: SDL_PROP_TEXTURE_GPU_TEXTURE_UV_POINTER          = 'SDL.texture.gpu.texture_uv'
    character(*), parameter, public :: SDL_PROP_TEXTURE_GPU_TEXTURE_U_POINTER           = 'SDL.texture.gpu.texture_u'
    character(*), parameter, public :: SDL_PROP_TEXTURE_GPU_TEXTURE_V_POINTER           = 'SDL.texture.gpu.texture_v'

    integer(c_int), parameter, public :: SDL_RENDERER_VSYNC_DISABLED =  0
    integer(c_int), parameter, public :: SDL_RENDERER_VSYNC_ADAPTIVE = -1

    integer(c_int), parameter, public :: SDL_DEBUG_TEXT_FONT_CHARACTER_SIZE = 8

    ! enum SDL_TextureAccess
    integer(c_int), parameter, public :: SDL_TEXTUREACCESS_STATIC    = 0 !! Changes rarely, not lockable.
    integer(c_int), parameter, public :: SDL_TEXTUREACCESS_STREAMING = 1 !! Changes frequently, lockable.
    integer(c_int), parameter, public :: SDL_TEXTUREACCESS_TARGET    = 2 !! Texture can be used as a render target.

    ! enum SDL_TextureAddressMode
    integer(c_int), parameter, public :: SDL_TEXTURE_ADDRESS_INVALID = -1
    integer(c_int), parameter, public :: SDL_TEXTURE_ADDRESS_AUTO    =  0 !! Wrapping is enabled if texture coordinates are outside [0, 1], this is the default.
    integer(c_int), parameter, public :: SDL_TEXTURE_ADDRESS_CLAMP   =  1 !! Texture coordinates are clamped to the [0, 1] range.
    integer(c_int), parameter, public :: SDL_TEXTURE_ADDRESS_WRAP    =  2 !! The texture is repeated (tiled).

    ! enum SDL_RendererLogicalPresentation
    integer(c_int), parameter, public :: SDL_LOGICAL_PRESENTATION_DISABLED      = 0 !! There is no logical size in effect.
    integer(c_int), parameter, public :: SDL_LOGICAL_PRESENTATION_STRETCH       = 1 !! The rendered content is stretched to the output resolution.
    integer(c_int), parameter, public :: SDL_LOGICAL_PRESENTATION_LETTERBOX     = 2 !! The rendered content is fit to the largest dimension and the other dimension is letterboxed with the clear color.
    integer(c_int), parameter, public :: SDL_LOGICAL_PRESENTATION_OVERSCAN      = 3 !! The rendered content is fit to the smallest dimension and the other dimension extends beyond the output bounds.
    integer(c_int), parameter, public :: SDL_LOGICAL_PRESENTATION_INTEGER_SCALE = 4 !! The rendered content is scaled up by integer multiples to fit the output resolution.

    ! struct SDL_Vertex
    type, bind(c), public :: sdl_vertex
        type(sdl_fpoint) :: position  = sdl_fpoint() !! Vertex position, in SDL_Renderer coordinates.
        type(sdl_fcolor) :: color     = sdl_fcolor() !! Vertex color.
        type(sdl_fpoint) :: tex_coord = sdl_fpoint() !! Normalized texture coordinates, if needed.
    end type sdl_vertex

    ! struct SDL_Renderer SDL_Renderer
    ! struct SDL_GPURenderState SDL_GPURenderState

    ! struct SDL_Texture
    type, bind(c), public :: sdl_texture
        integer(c_int) :: format    = 0 !! The format of the texture, read-only.
        integer(c_int) :: w         = 0 !! The width of the texture, read-only.
        integer(c_int) :: h         = 0 !! The height of the texture, read-only.
        integer(c_int) :: ref_count = 0 !! Application reference count, used when freeing texture.
    end type sdl_texture

    ! struct SDL_GPURenderStateCreateInfo
    type, bind(c), public :: sdl_gpu_render_state_create_info
        type(c_ptr)                :: fragment_shader      = c_null_ptr !! The fragment shader to use when this render state is active.
        integer(sint32)            :: num_sampler_bindings = 0          !! The number of additional fragment samplers to bind when this render state is active.
        type(c_ptr)                :: sampler_bindings     = c_null_ptr !! Additional fragment samplers to bind when this render state is active.
        integer(sint32)            :: num_storage_textures = 0          !! The number of storage textures to bind when this render state is active.
        type(c_ptr)                :: storage_textures     = c_null_ptr !! Storage textures to bind when this render state is active.
        integer(sint32)            :: num_storage_buffers  = 0          !! The number of storage buffers to bind when this render state is active.
        type(c_ptr)                :: storage_buffers      = c_null_ptr !! Storage buffers to bind when this render state is active.
        integer(sdl_properties_id) :: props                = 0          !! A properties ID for extensions. Should be 0 if no extensions are needed.
    end type sdl_gpu_render_state_create_info

    public :: sdl_add_vulkan_render_semaphores
    public :: sdl_convert_event_to_render_coordinates
    public :: sdl_create_gpu_render_state
    public :: sdl_create_gpu_renderer
    public :: sdl_create_renderer
    public :: sdl_create_renderer_with_properties
    public :: sdl_create_software_renderer
    public :: sdl_create_texture
    public :: sdl_create_texture_from_surface
    public :: sdl_create_texture_with_properties
    public :: sdl_create_window_and_renderer
    public :: sdl_destroy_gpu_render_state
    public :: sdl_destroy_renderer
    public :: sdl_destroy_texture
    public :: sdl_flush_renderer
    public :: sdl_get_current_render_output_size
    public :: sdl_get_default_texture_scale_mode
    public :: sdl_get_gpu_renderer_device
    public :: sdl_get_num_render_drivers
    public :: sdl_get_render_clip_rect
    public :: sdl_get_render_color_scale
    public :: sdl_get_render_draw_blend_mode
    public :: sdl_get_render_draw_color
    public :: sdl_get_render_draw_color_float
    public :: sdl_get_render_driver
    public :: sdl_get_render_logical_presentation
    public :: sdl_get_render_logical_presentation_rect
    public :: sdl_get_render_metal_command_encoder
    public :: sdl_get_render_metal_layer
    public :: sdl_get_render_output_size
    public :: sdl_get_render_safe_area
    public :: sdl_get_render_scale
    public :: sdl_get_render_target
    public :: sdl_get_render_texture_address_mode
    public :: sdl_get_render_vsync
    public :: sdl_get_render_viewport
    public :: sdl_get_render_window
    public :: sdl_get_renderer
    public :: sdl_get_renderer_from_texture
    public :: sdl_get_renderer_name
    public :: sdl_get_renderer_properties
    public :: sdl_get_texture_alpha_mod
    public :: sdl_get_texture_alpha_mod_float
    public :: sdl_get_texture_blend_mode
    public :: sdl_get_texture_color_mod
    public :: sdl_get_texture_color_mod_float
    public :: sdl_get_texture_palette
    public :: sdl_get_texture_properties
    public :: sdl_get_texture_scale_mode
    public :: sdl_get_texture_size
    public :: sdl_lock_texture
    public :: sdl_lock_texture_to_surface
    public :: sdl_render_clear
    public :: sdl_render_clip_enabled
    public :: sdl_render_coordinates_from_window
    public :: sdl_render_coordinates_to_window
    public :: sdl_render_debug_text
    public :: sdl_render_fill_rect
    public :: sdl_render_fill_rects
    public :: sdl_render_geometry
    public :: sdl_render_geometry_raw
    public :: sdl_render_line
    public :: sdl_render_lines
    public :: sdl_render_point
    public :: sdl_render_points
    public :: sdl_render_present
    public :: sdl_render_read_pixels
    public :: sdl_render_rect
    public :: sdl_render_rects
    public :: sdl_render_texture
    public :: sdl_render_texture9_grid
    public :: sdl_render_texture9_grid_tiled
    public :: sdl_render_texture_affine
    public :: sdl_render_texture_rotated
    public :: sdl_render_texture_tiled
    public :: sdl_render_viewport_set
    public :: sdl_set_default_texture_scale_mode
    public :: sdl_set_gpu_render_state
    public :: sdl_set_gpu_render_state_fragment_uniforms
    public :: sdl_set_gpu_render_state_sampler_bindings
    public :: sdl_set_gpu_render_state_storage_buffers
    public :: sdl_set_gpu_render_state_storage_textures
    public :: sdl_set_render_clip_rect
    public :: sdl_set_render_color_scale
    public :: sdl_set_render_draw_blend_mode
    public :: sdl_set_render_draw_color
    public :: sdl_set_render_draw_color_float
    public :: sdl_set_render_logical_presentation
    public :: sdl_set_render_scale
    public :: sdl_set_render_target
    public :: sdl_set_render_texture_address_mode
    public :: sdl_set_render_vsync
    public :: sdl_set_render_viewport
    public :: sdl_set_texture_alpha_mod
    public :: sdl_set_texture_alpha_mod_float
    public :: sdl_set_texture_blend_mode
    public :: sdl_set_texture_color_mod
    public :: sdl_set_texture_color_mod_float
    public :: sdl_set_texture_palette
    public :: sdl_set_texture_scale_mode
    public :: sdl_unlock_texture
    public :: sdl_update_nv_texture
    public :: sdl_update_texture
    public :: sdl_update_yuv_texture

    interface
        ! bool SDL_AddVulkanRenderSemaphores(SDL_Renderer *renderer, Uint32 wait_stage_mask, Sint64 wait_semaphore, Sint64 signal_semaphore)
        function sdl_add_vulkan_render_semaphores(renderer, wait_stage_mask, wait_semaphore, signal_semaphore) bind(c, name='SDL_AddVulkanRenderSemaphores')
            import :: c_bool, c_ptr, sint64, uint32
            implicit none
            type(c_ptr),     intent(in), value :: renderer
            integer(uint32), intent(in), value :: wait_stage_mask
            integer(sint64), intent(in), value :: wait_semaphore
            integer(sint64), intent(in), value :: signal_semaphore
            logical(c_bool)                    :: sdl_add_vulkan_render_semaphores
        end function sdl_add_vulkan_render_semaphores

        ! bool SDL_ConvertEventToRenderCoordinates(SDL_Renderer *renderer, SDL_Event *event)
        function sdl_convert_event_to_render_coordinates(renderer, event) bind(c, name='SDL_ConvertEventToRenderCoordinates')
            import :: c_bool, c_ptr, sdl_event
            implicit none
            type(c_ptr),     intent(in), value :: renderer
            type(sdl_event), intent(in)        :: event
            logical(c_bool)                    :: sdl_convert_event_to_render_coordinates
        end function sdl_convert_event_to_render_coordinates

        ! SDL_GPURenderState *SDL_CreateGPURenderState(SDL_Renderer *renderer, const SDL_GPURenderStateCreateInfo *createinfo)
        function sdl_create_gpu_render_state(renderer, createinfo) bind(c, name='SDL_CreateGPURenderState')
            import :: c_ptr, sdl_gpu_render_state_create_info
            implicit none
            type(c_ptr),                            intent(in), value :: renderer
            type(sdl_gpu_render_state_create_info), intent(in)        :: createinfo
            type(c_ptr)                                               :: sdl_create_gpu_render_state
        end function sdl_create_gpu_render_state

        ! SDL_Renderer *SDL_CreateGPURenderer(SDL_GPUDevice *device, SDL_Window *window)
        function sdl_create_gpu_renderer(device, window) bind(c, name='SDL_CreateGPURenderer')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: device
            type(c_ptr), intent(in), value :: window
            type(c_ptr)                    :: sdl_create_gpu_renderer
        end function sdl_create_gpu_renderer

        ! SDL_Renderer *SDL_CreateRenderer(SDL_Window *window, const char *name)
        function sdl_create_renderer(window, name) bind(c, name='SDL_CreateRenderer')
            import :: c_char, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: window
            character(c_char), intent(in)        :: name
            type(c_ptr)                          :: sdl_create_renderer
        end function sdl_create_renderer

        ! SDL_Renderer *SDL_CreateRendererWithProperties(SDL_PropertiesID props)
        function sdl_create_renderer_with_properties(props) bind(c, name='SDL_CreateRendererWithProperties')
            import :: c_ptr, sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
            type(c_ptr)                                   :: sdl_create_renderer_with_properties
        end function sdl_create_renderer_with_properties

        ! SDL_Renderer *SDL_CreateSoftwareRenderer(SDL_Surface *surface)
        function sdl_create_software_renderer(surface) bind(c, name='SDL_CreateSoftwareRenderer')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: surface
            type(c_ptr)                    :: sdl_create_software_renderer
        end function sdl_create_software_renderer

        ! SDL_Texture *SDL_CreateTexture(SDL_Renderer *renderer, SDL_PixelFormat format, SDL_TextureAccess access, int w, int h)
        function sdl_create_texture(renderer, format, access, w, h) bind(c, name='SDL_CreateTexture')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: renderer
            integer(c_int), intent(in), value :: format
            integer(c_int), intent(in), value :: access
            integer(c_int), intent(in), value :: w
            integer(c_int), intent(in), value :: h
            type(c_ptr)                       :: sdl_create_texture
        end function sdl_create_texture

        ! SDL_Texture *SDL_CreateTextureFromSurface(SDL_Renderer *renderer, SDL_Surface *surface)
        function sdl_create_texture_from_surface(renderer, surface) bind(c, name='SDL_CreateTextureFromSurface')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: renderer
            type(c_ptr), intent(in), value :: surface
            type(c_ptr)                    :: sdl_create_texture_from_surface
        end function sdl_create_texture_from_surface

        ! SDL_Texture *SDL_CreateTextureWithProperties(SDL_Renderer *renderer, SDL_PropertiesID props)
        function sdl_create_texture_with_properties(renderer, props) bind(c, name='SDL_CreateTextureWithProperties')
            import :: c_ptr, sdl_properties_id
            implicit none
            type(c_ptr),                intent(in), value :: renderer
            integer(sdl_properties_id), intent(in), value :: props
            type(c_ptr)                                   :: sdl_create_texture_with_properties
        end function sdl_create_texture_with_properties

        ! bool SDL_CreateWindowAndRenderer(const char *title, int width, int height, SDL_WindowFlags window_flags, SDL_Window **window, SDL_Renderer **renderer)
        function sdl_create_window_and_renderer(title, width, height, window_flags, window, renderer) bind(c, name='SDL_CreateWindowAndRenderer')
            import :: c_bool, c_char, c_int, c_ptr, sdl_window_flags
            implicit none
            character(c_char),         intent(in)        :: title
            integer(c_int),            intent(in), value :: width
            integer(c_int),            intent(in), value :: height
            integer(sdl_window_flags), intent(in), value :: window_flags
            type(c_ptr),               intent(out)       :: window
            type(c_ptr),               intent(out)       :: renderer
            logical(c_bool)                              :: sdl_create_window_and_renderer
        end function sdl_create_window_and_renderer

        ! void SDL_DestroyGPURenderState(SDL_GPURenderState *state)
        subroutine sdl_destroy_gpu_render_state(state) bind(c, name='SDL_DestroyGPURenderState')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: state
        end subroutine sdl_destroy_gpu_render_state

        ! void SDL_DestroyRenderer(SDL_Renderer *renderer)
        subroutine sdl_destroy_renderer(renderer) bind(c, name='SDL_DestroyRenderer')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: renderer
        end subroutine sdl_destroy_renderer

        ! void SDL_DestroyTexture(SDL_Texture *texture)
        subroutine sdl_destroy_texture(texture) bind(c, name='SDL_DestroyTexture')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: texture
        end subroutine sdl_destroy_texture

        ! bool SDL_FlushRenderer(SDL_Renderer *renderer)
        function sdl_flush_renderer(renderer) bind(c, name='SDL_FlushRenderer')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: renderer
            logical(c_bool)                :: sdl_flush_renderer
        end function sdl_flush_renderer

        ! bool SDL_GetCurrentRenderOutputSize(SDL_Renderer *renderer, int *w, int *h)
        function sdl_get_current_render_output_size(renderer, w, h) bind(c, name='SDL_GetCurrentRenderOutputSize')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: renderer
            integer(c_int), intent(out)       :: w
            integer(c_int), intent(out)       :: h
            logical(c_bool)                   :: sdl_get_current_render_output_size
        end function sdl_get_current_render_output_size

        ! bool SDL_GetDefaultTextureScaleMode(SDL_Renderer *renderer, SDL_ScaleMode *scale_mode)
        function sdl_get_default_texture_scale_mode(renderer, scale_mode) bind(c, name='SDL_GetDefaultTextureScaleMode')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: renderer
            integer(c_int), intent(out)       :: scale_mode
            logical(c_bool)                   :: sdl_get_default_texture_scale_mode
        end function sdl_get_default_texture_scale_mode

        ! SDL_GPUDevice *SDL_GetGPURendererDevice(SDL_Renderer *renderer)
        function sdl_get_gpu_renderer_device(renderer) bind(c, name='SDL_GetGPURendererDevice')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: renderer
            type(c_ptr)                    :: sdl_get_gpu_renderer_device
        end function sdl_get_gpu_renderer_device

        ! int SDL_GetNumRenderDrivers(void)
        function sdl_get_num_render_drivers() bind(c, name='SDL_GetNumRenderDrivers')
            import :: c_int
            implicit none
            integer(c_int) :: sdl_get_num_render_drivers
        end function sdl_get_num_render_drivers

        ! bool SDL_GetRenderClipRect(SDL_Renderer *renderer, SDL_Rect *rect)
        function sdl_get_render_clip_rect(renderer, rect) bind(c, name='SDL_GetRenderClipRect')
            import :: c_bool, c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value :: renderer
            type(sdl_rect), intent(out)       :: rect
            logical(c_bool)                   :: sdl_get_render_clip_rect
        end function sdl_get_render_clip_rect

        ! bool SDL_GetRenderColorScale(SDL_Renderer *renderer, float *scale)
        function sdl_get_render_color_scale(renderer, scale) bind(c, name='SDL_GetRenderColorScale')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: renderer
            real(c_float), intent(out)       :: scale
            logical(c_bool)                  :: sdl_get_render_color_scale
        end function sdl_get_render_color_scale

        ! bool SDL_GetRenderDrawBlendMode(SDL_Renderer *renderer, SDL_BlendMode *blendMode)
        function sdl_get_render_draw_blend_mode(renderer, blend_mode) bind(c, name='SDL_GetRenderDrawBlendMode')
            import :: c_bool, c_ptr, sdl_blend_mode
            implicit none
            type(c_ptr),             intent(in), value :: renderer
            integer(sdl_blend_mode), intent(out)       :: blend_mode
            logical(c_bool)                            :: sdl_get_render_draw_blend_mode
        end function sdl_get_render_draw_blend_mode

        ! bool SDL_GetRenderDrawColor(SDL_Renderer *renderer, Uint8 *r, Uint8 *g, Uint8 *b, Uint8 *a)
        function sdl_get_render_draw_color(renderer, r, g, b, a) bind(c, name='SDL_GetRenderDrawColor')
            import :: c_bool, c_ptr, uint8
            implicit none
            type(c_ptr),    intent(in), value :: renderer
            integer(uint8), intent(out)       :: r
            integer(uint8), intent(out)       :: g
            integer(uint8), intent(out)       :: b
            integer(uint8), intent(out)       :: a
            logical(c_bool)                   :: sdl_get_render_draw_color
        end function sdl_get_render_draw_color

        ! bool SDL_GetRenderDrawColorFloat(SDL_Renderer *renderer, float *r, float *g, float *b, float *a)
        function sdl_get_render_draw_color_float(renderer, r, g, b, a) bind(c, name='SDL_GetRenderDrawColorFloat')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: renderer
            real(c_float), intent(out)       :: r
            real(c_float), intent(out)       :: g
            real(c_float), intent(out)       :: b
            real(c_float), intent(out)       :: a
            logical(c_bool)                  :: sdl_get_render_draw_color_float
        end function sdl_get_render_draw_color_float

        ! const char *SDL_GetRenderDriver(int index)
        function sdl_get_render_driver(index) bind(c, name='SDL_GetRenderDriver')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(in), value :: index
            type(c_ptr)                       :: sdl_get_render_driver
        end function sdl_get_render_driver

        ! bool SDL_GetRenderLogicalPresentation(SDL_Renderer *renderer, int *w, int *h, SDL_RendererLogicalPresentation *mode)
        function sdl_get_render_logical_presentation(renderer, w, h, mode) bind(c, name='SDL_GetRenderLogicalPresentation')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: renderer
            integer(c_int), intent(out)       :: w
            integer(c_int), intent(out)       :: h
            integer(c_int), intent(out)       :: mode
            logical(c_bool)                   :: sdl_get_render_logical_presentation
        end function sdl_get_render_logical_presentation

        ! bool SDL_GetRenderLogicalPresentationRect(SDL_Renderer *renderer, SDL_FRect *rect)
        function sdl_get_render_logical_presentation_rect(renderer, rect) bind(c, name='SDL_GetRenderLogicalPresentationRect')
            import :: c_bool, c_ptr, sdl_frect
            implicit none
            type(c_ptr),     intent(in), value :: renderer
            type(sdl_frect), intent(out)       :: rect
            logical(c_bool)                    :: sdl_get_render_logical_presentation_rect
        end function sdl_get_render_logical_presentation_rect

        ! void *SDL_GetRenderMetalCommandEncoder(SDL_Renderer *renderer)
        function sdl_get_render_metal_command_encoder(renderer) bind(c, name='SDL_GetRenderMetalCommandEncoder')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: renderer
            type(c_ptr)                    :: sdl_get_render_metal_command_encoder
        end function sdl_get_render_metal_command_encoder

        ! void *SDL_GetRenderMetalLayer(SDL_Renderer *renderer)
        function sdl_get_render_metal_layer(renderer) bind(c, name='SDL_GetRenderMetalLayer')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: renderer
            type(c_ptr)                    :: sdl_get_render_metal_layer
        end function sdl_get_render_metal_layer

        ! bool SDL_GetRenderOutputSize(SDL_Renderer *renderer, int *w, int *h)
        function sdl_get_render_output_size(renderer, w, h) bind(c, name='SDL_GetRenderOutputSize')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: renderer
            integer(c_int), intent(out)       :: w
            integer(c_int), intent(out)       :: h
            logical(c_bool)                   :: sdl_get_render_output_size
        end function sdl_get_render_output_size

        ! bool SDL_GetRenderSafeArea(SDL_Renderer *renderer, SDL_Rect *rect)
        function sdl_get_render_safe_area(renderer, rect) bind(c, name='SDL_GetRenderSafeArea')
            import :: c_bool, c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value :: renderer
            type(sdl_rect), intent(out)       :: rect
            logical(c_bool)                   :: sdl_get_render_safe_area
        end function sdl_get_render_safe_area

        ! bool SDL_GetRenderScale(SDL_Renderer *renderer, float *scaleX, float *scaleY)
        function sdl_get_render_scale(renderer, scale_x, scale_y) bind(c, name='SDL_GetRenderScale')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: renderer
            real(c_float), intent(out)       :: scale_x
            real(c_float), intent(out)       :: scale_y
            logical(c_bool)                  :: sdl_get_render_scale
        end function sdl_get_render_scale

        ! SDL_Texture *SDL_GetRenderTarget(SDL_Renderer *renderer)
        function sdl_get_render_target(renderer) bind(c, name='SDL_GetRenderTarget')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: renderer
            type(c_ptr)                    :: sdl_get_render_target
        end function sdl_get_render_target

        ! bool SDL_GetRenderTextureAddressMode(SDL_Renderer *renderer, SDL_TextureAddressMode *u_mode, SDL_TextureAddressMode *v_mode)
        function sdl_get_render_texture_address_mode(renderer, u_mode, v_mode) bind(c, name='SDL_GetRenderTextureAddressMode')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: renderer
            integer(c_int), intent(out)       :: u_mode
            integer(c_int), intent(out)       :: v_mode
            logical(c_bool)                   :: sdl_get_render_texture_address_mode
        end function sdl_get_render_texture_address_mode

        ! bool SDL_GetRenderVSync(SDL_Renderer *renderer, int *vsync)
        function sdl_get_render_vsync(renderer, vsync) bind(c, name='SDL_GetRenderVSync')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: renderer
            integer(c_int), intent(out)       :: vsync
            logical(c_bool)                   :: sdl_get_render_vsync
        end function sdl_get_render_vsync

        ! bool SDL_GetRenderViewport(SDL_Renderer *renderer, SDL_Rect *rect)
        function sdl_get_render_viewport(renderer, rect) bind(c, name='SDL_GetRenderViewport')
            import :: c_bool, c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value :: renderer
            type(sdl_rect), intent(out)       :: rect
            logical(c_bool)                   :: sdl_get_render_viewport
        end function sdl_get_render_viewport

        ! SDL_Window *SDL_GetRenderWindow(SDL_Renderer *renderer)
        function sdl_get_render_window(renderer) bind(c, name='SDL_GetRenderWindow')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: renderer
            type(c_ptr)                    :: sdl_get_render_window
        end function sdl_get_render_window

        ! SDL_Renderer *SDL_GetRenderer(SDL_Window *window)
        function sdl_get_renderer(window) bind(c, name='SDL_GetRenderer')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            type(c_ptr)                    :: sdl_get_renderer
        end function sdl_get_renderer

        ! SDL_Renderer *SDL_GetRendererFromTexture(SDL_Texture *texture)
        function sdl_get_renderer_from_texture(texture) bind(c, name='SDL_GetRendererFromTexture')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: texture
            type(c_ptr)                    :: sdl_get_renderer_from_texture
        end function sdl_get_renderer_from_texture

        ! const char *SDL_GetRendererName(SDL_Renderer *renderer)
        function sdl_get_renderer_name(renderer) bind(c, name='SDL_GetRendererName')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: renderer
            type(c_ptr)                    :: sdl_get_renderer_name
        end function sdl_get_renderer_name

        ! SDL_PropertiesID SDL_GetRendererProperties(SDL_Renderer *renderer)
        function sdl_get_renderer_properties(renderer) bind(c, name='SDL_GetRendererProperties')
            import :: c_ptr, sdl_properties_id
            implicit none
            type(c_ptr), intent(in), value :: renderer
            integer(sdl_properties_id)     :: sdl_get_renderer_properties
        end function sdl_get_renderer_properties

        ! bool SDL_GetTextureAlphaMod(SDL_Texture *texture, Uint8 *alpha)
        function sdl_get_texture_alpha_mod(texture, alpha) bind(c, name='SDL_GetTextureAlphaMod')
            import :: c_bool, c_ptr, uint8
            implicit none
            type(c_ptr),    intent(in), value :: texture
            integer(uint8), intent(out)       :: alpha
            logical(c_bool)                   :: sdl_get_texture_alpha_mod
        end function sdl_get_texture_alpha_mod

        ! bool SDL_GetTextureAlphaModFloat(SDL_Texture *texture, float *alpha)
        function sdl_get_texture_alpha_mod_float(texture, alpha) bind(c, name='SDL_GetTextureAlphaModFloat')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: texture
            real(c_float), intent(out)       :: alpha
            logical(c_bool)                  :: sdl_get_texture_alpha_mod_float
        end function sdl_get_texture_alpha_mod_float

        ! bool SDL_GetTextureBlendMode(SDL_Texture *texture, SDL_BlendMode *blendMode)
        function sdl_get_texture_blend_mode(texture, blend_mode) bind(c, name='SDL_GetTextureBlendMode')
            import :: c_bool, c_ptr, sdl_blend_mode
            implicit none
            type(c_ptr),             intent(in), value :: texture
            integer(sdl_blend_mode), intent(out)       :: blend_mode
            logical(c_bool)                            :: sdl_get_texture_blend_mode
        end function sdl_get_texture_blend_mode

        ! bool SDL_GetTextureColorMod(SDL_Texture *texture, Uint8 *r, Uint8 *g, Uint8 *b)
        function sdl_get_texture_color_mod(texture, r, g, b) bind(c, name='SDL_GetTextureColorMod')
            import :: c_bool, c_ptr, uint8
            implicit none
            type(c_ptr),    intent(in), value :: texture
            integer(uint8), intent(out)       :: r
            integer(uint8), intent(out)       :: g
            integer(uint8), intent(out)       :: b
            logical(c_bool)                   :: sdl_get_texture_color_mod
        end function sdl_get_texture_color_mod

        ! bool SDL_GetTextureColorModFloat(SDL_Texture *texture, float *r, float *g, float *b)
        function sdl_get_texture_color_mod_float(texture, r, g, b) bind(c, name='SDL_GetTextureColorModFloat')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: texture
            real(c_float), intent(out)       :: r
            real(c_float), intent(out)       :: g
            real(c_float), intent(out)       :: b
            logical(c_bool)                 :: sdl_get_texture_color_mod_float
        end function sdl_get_texture_color_mod_float

        ! SDL_Palette *SDL_GetTexturePalette(SDL_Texture *texture)
        function sdl_get_texture_palette(texture) bind(c, name='SDL_GetTexturePalette')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: texture
            type(c_ptr)                    :: sdl_get_texture_palette
        end function sdl_get_texture_palette

        ! SDL_PropertiesID SDL_GetTextureProperties(SDL_Texture *texture)
        function sdl_get_texture_properties(texture) bind(c, name='SDL_GetTextureProperties')
            import :: c_ptr, sdl_properties_id
            implicit none
            type(c_ptr), intent(in), value :: texture
            integer(sdl_properties_id)     :: sdl_get_texture_properties
        end function sdl_get_texture_properties

        ! bool SDL_GetTextureScaleMode(SDL_Texture *texture, SDL_ScaleMode *scaleMode)
        function sdl_get_texture_scale_mode(texture, scale_mode) bind(c, name='SDL_GetTextureScaleMode')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value  :: texture
            integer(c_int), intent(out)        :: scale_mode
            logical(c_bool)                    :: sdl_get_texture_scale_mode
        end function sdl_get_texture_scale_mode

        ! bool SDL_GetTextureSize(SDL_Texture *texture, float *w, float *h)
        function sdl_get_texture_size(texture, w, h) bind(c, name='SDL_GetTextureSize')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: texture
            real(c_float), intent(out)       :: w
            real(c_float), intent(out)       :: h
            logical(c_bool)                  :: sdl_get_texture_size
        end function sdl_get_texture_size

        ! bool SDL_LockTexture(SDL_Texture *texture, const SDL_Rect *rect, void **pixels, int *pitch)
        function sdl_lock_texture(texture, rect, pixels, pitch) bind(c, name='SDL_LockTexture')
            import :: c_bool, c_int, c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value    :: texture
            type(sdl_rect), intent(in), optional :: rect
            type(c_ptr),    intent(out)          :: pixels
            integer(c_int), intent(out)          :: pitch
            logical(c_bool)                      :: sdl_lock_texture
        end function sdl_lock_texture

        ! bool SDL_LockTextureToSurface(SDL_Texture *texture, const SDL_Rect *rect, SDL_Surface **surface)
        function sdl_lock_texture_to_surface(texture, rect, surface) bind(c, name='SDL_LockTextureToSurface')
            import :: c_bool, c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value :: texture
            type(sdl_rect), intent(in)        :: rect
            type(c_ptr),    intent(out)       :: surface
            logical(c_bool)                   :: sdl_lock_texture_to_surface
        end function sdl_lock_texture_to_surface

        ! bool SDL_RenderClear(SDL_Renderer *renderer)
        function sdl_render_clear(renderer) bind(c, name='SDL_RenderClear')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: renderer
            logical(c_bool)                :: sdl_render_clear
        end function sdl_render_clear

        ! bool SDL_RenderClipEnabled(SDL_Renderer *renderer)
        function sdl_render_clip_enabled(renderer) bind(c, name='SDL_RenderClipEnabled')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: renderer
            logical(c_bool)                :: sdl_render_clip_enabled
        end function sdl_render_clip_enabled

        ! bool SDL_RenderCoordinatesFromWindow(SDL_Renderer *renderer, float window_x, float window_y, float *x, float *y)
        function sdl_render_coordinates_from_window(renderer, window_x, window_y, x, y) bind(c, name='SDL_RenderCoordinatesFromWindow')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: renderer
            real(c_float), intent(in), value :: window_x
            real(c_float), intent(in), value :: window_y
            real(c_float), intent(out)       :: x
            real(c_float), intent(out)       :: y
            logical(c_bool)                  :: sdl_render_coordinates_from_window
        end function sdl_render_coordinates_from_window

        ! bool SDL_RenderCoordinatesToWindow(SDL_Renderer *renderer, float x, float y, float *window_x, float *window_y)
        function sdl_render_coordinates_to_window(renderer, x, y, window_x, window_y) bind(c, name='SDL_RenderCoordinatesToWindow')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: renderer
            real(c_float), intent(in), value :: x
            real(c_float), intent(in), value :: y
            real(c_float), intent(out)       :: window_x
            real(c_float), intent(out)       :: window_y
            logical(c_bool)                  :: sdl_render_coordinates_to_window
        end function sdl_render_coordinates_to_window

        ! bool SDL_RenderDebugText(SDL_Renderer *renderer, float x, float y, const char *str)
        function sdl_render_debug_text(renderer, x, y, str) bind(c, name='SDL_RenderDebugText')
            import :: c_bool, c_char, c_float, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: renderer
            real(c_float),     intent(in), value :: x
            real(c_float),     intent(in), value :: y
            character(c_char), intent(in)        :: str
            logical(c_bool)                      :: sdl_render_debug_text
        end function sdl_render_debug_text

        ! bool SDL_RenderFillRect(SDL_Renderer *renderer, const SDL_FRect *rect)
        function sdl_render_fill_rect(renderer, rect) bind(c, name='SDL_RenderFillRect')
            import :: c_bool, c_ptr, sdl_frect
            implicit none
            type(c_ptr),     intent(in), value :: renderer
            type(sdl_frect), intent(in)        :: rect
            logical(c_bool)                    :: sdl_render_fill_rect
        end function sdl_render_fill_rect

        ! bool SDL_RenderFillRects(SDL_Renderer *renderer, const SDL_FRect *rects, int count)
        function sdl_render_fill_rects(renderer, rects, count) bind(c, name='SDL_RenderFillRects')
            import :: c_bool, c_int, c_ptr, sdl_frect
            implicit none
            type(c_ptr),     intent(in), value :: renderer
            type(sdl_frect), intent(in)        :: rects
            integer(c_int),  intent(in), value :: count
            logical(c_bool)                    :: sdl_render_fill_rects
        end function sdl_render_fill_rects

        ! bool SDL_RenderGeometry(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_Vertex *vertices, int num_vertices, const int *indices, int num_indices)
        function sdl_render_geometry(renderer, texture, vertices, num_vertices, indices, num_indices) bind(c, name='SDL_RenderGeometry')
            import :: c_bool, c_int, c_ptr, sdl_vertex
            implicit none
            type(c_ptr),      intent(in), value :: renderer
            type(c_ptr),      intent(in), value :: texture
            type(sdl_vertex), intent(in)        :: vertices
            integer(c_int),   intent(in), value :: num_vertices
            integer(c_int),   intent(out)       :: indices
            integer(c_int),   intent(in), value :: num_indices
            logical(c_bool)                     :: sdl_render_geometry
        end function sdl_render_geometry

        ! bool SDL_RenderGeometryRaw(SDL_Renderer *renderer, SDL_Texture *texture, const float *xy, int xy_stride, const SDL_FColor *color, int color_stride, const float *uv, int uv_stride, int num_vertices, const void *indices, int num_indices, int size_indices)
        function sdl_render_geometry_raw(renderer, texture, xy, xy_stride, color, color_stride, uv, uv_stride, num_vertices, indices, num_indices, size_indices) bind(c, name='SDL_RenderGeometryRaw')
            import :: c_bool, c_float, c_int, c_ptr, sdl_fcolor
            implicit none
            type(c_ptr),      intent(in), value :: renderer
            type(c_ptr),      intent(in), value :: texture
            real(c_float),    intent(in)        :: xy
            integer(c_int),   intent(in), value :: xy_stride
            type(sdl_fcolor), intent(in)        :: color
            integer(c_int),   intent(in), value :: color_stride
            real(c_float),    intent(in)        :: uv
            integer(c_int),   intent(in), value :: uv_stride
            integer(c_int),   intent(in), value :: num_vertices
            type(c_ptr),      intent(in), value :: indices
            integer(c_int),   intent(in), value :: num_indices
            integer(c_int),   intent(in), value :: size_indices
            logical(c_bool)                     :: sdl_render_geometry_raw
        end function sdl_render_geometry_raw

        ! bool SDL_RenderLine(SDL_Renderer *renderer, float x1, float y1, float x2, float y2)
        function sdl_render_line(renderer, x1, y1, x2, y2) bind(c, name='SDL_RenderLine')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: renderer
            real(c_float), intent(in), value :: x1
            real(c_float), intent(in), value :: y1
            real(c_float), intent(in), value :: x2
            real(c_float), intent(in), value :: y2
            logical(c_bool)                  :: sdl_render_line
        end function sdl_render_line

        ! bool SDL_RenderLines(SDL_Renderer *renderer, const SDL_FPoint *points, int count)
        function sdl_render_lines(renderer, points, count) bind(c, name='SDL_RenderLines')
            import :: c_bool, c_int, c_ptr, sdl_fpoint
            implicit none
            type(c_ptr),      intent(in), value :: renderer
            type(sdl_fpoint), intent(in)        :: points
            integer(c_int),   intent(in), value :: count
            logical(c_bool)                     :: sdl_render_lines
        end function sdl_render_lines

        ! bool SDL_RenderPoint(SDL_Renderer *renderer, float x, float y)
        function sdl_render_point(renderer, x, y) bind(c, name='SDL_RenderPoint')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: renderer
            real(c_float), intent(in), value :: x
            real(c_float), intent(in), value :: y
            logical(c_bool)                  :: sdl_render_point
        end function sdl_render_point

        ! bool SDL_RenderPoints(SDL_Renderer *renderer, const SDL_FPoint *points, int count)
        function sdl_render_points(renderer, points, count) bind(c, name='SDL_RenderPoints')
            import :: c_bool, c_int, c_ptr, sdl_fpoint
            implicit none
            type(c_ptr),      intent(in), value :: renderer
            type(sdl_fpoint), intent(in)        :: points
            integer(c_int),   intent(in), value :: count
            logical(c_bool)                     :: sdl_render_points
        end function sdl_render_points

        ! bool SDL_RenderPresent(SDL_Renderer *renderer)
        function sdl_render_present(renderer) bind(c, name='SDL_RenderPresent')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: renderer
            logical(c_bool)                :: sdl_render_present
        end function sdl_render_present

        ! SDL_Surface *SDL_RenderReadPixels(SDL_Renderer *renderer, const SDL_Rect *rect)
        function sdl_render_read_pixels(renderer, rect) bind(c, name='SDL_RenderReadPixels')
            import :: c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value :: renderer
            type(sdl_rect), intent(in)        :: rect
            type(c_ptr)                       :: sdl_render_read_pixels
        end function sdl_render_read_pixels

        ! bool SDL_RenderRect(SDL_Renderer *renderer, const SDL_FRect *rect)
        function sdl_render_rect(renderer, rect) bind(c, name='SDL_RenderRect')
            import :: c_bool, c_ptr, sdl_frect
            implicit none
            type(c_ptr),     intent(in), value :: renderer
            type(sdl_frect), intent(in)        :: rect
            logical(c_bool)                    :: sdl_render_rect
        end function sdl_render_rect

        ! bool SDL_RenderRects(SDL_Renderer *renderer, const SDL_FRect *rects, int count)
        function sdl_render_rects(renderer, rects, count) bind(c, name='SDL_RenderRects')
            import :: c_bool, c_int, c_ptr, sdl_frect
            implicit none
            type(c_ptr),     intent(in), value :: renderer
            type(sdl_frect), intent(in)        :: rects
            integer(c_int),  intent(in), value :: count
            logical(c_bool)                    :: sdl_render_rects
        end function sdl_render_rects

        ! bool SDL_RenderTexture(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, const SDL_FRect *dstrect)
        function sdl_render_texture(renderer, texture, src_rect, dst_rect) bind(c, name='SDL_RenderTexture')
            import :: c_bool, c_ptr, sdl_frect
            implicit none
            type(c_ptr),     intent(in), value    :: renderer
            type(c_ptr),     intent(in), value    :: texture
            type(sdl_frect), intent(in), optional :: src_rect
            type(sdl_frect), intent(in), optional :: dst_rect
            logical(c_bool)                       :: sdl_render_texture
        end function sdl_render_texture

        ! bool SDL_RenderTexture9Grid(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, float left_width, float right_width, float top_height, float bottom_height, float scale, const SDL_FRect *dstrect)
        function sdl_render_texture9_grid(renderer, texture, src_rect, left_width, right_width, top_height, bottom_height, scale, dst_rect) bind(c, name='SDL_RenderTexture9Grid')
            import :: c_bool, c_float, c_ptr, sdl_frect
            implicit none
            type(c_ptr),     intent(in), value :: renderer
            type(c_ptr),     intent(in), value :: texture
            type(sdl_frect), intent(in)        :: src_rect
            real(c_float),   intent(in), value :: left_width
            real(c_float),   intent(in), value :: right_width
            real(c_float),   intent(in), value :: top_height
            real(c_float),   intent(in), value :: bottom_height
            real(c_float),   intent(in), value :: scale
            type(sdl_frect), intent(in)        :: dst_rect
            logical(c_bool)                    :: sdl_render_texture9_grid
        end function sdl_render_texture9_grid

        ! bool SDL_RenderTexture9GridTiled(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, float left_width, float right_width, float top_height, float bottom_height, float scale, const SDL_FRect *dstrect, float tileScale)
        function sdl_render_texture9_grid_tiled(renderer, texture, src_rect, left_width, right_width, top_height, bottom_height, scale, dst_rect, tile_scale) bind(c, name='SDL_RenderTexture9GridTiled')
            import :: c_bool, c_float, c_ptr, sdl_frect
            implicit none
            type(c_ptr),     intent(in), value :: renderer
            type(c_ptr),     intent(in), value :: texture
            type(sdl_frect), intent(in)        :: src_rect
            real(c_float),   intent(in), value :: left_width
            real(c_float),   intent(in), value :: right_width
            real(c_float),   intent(in), value :: top_height
            real(c_float),   intent(in), value :: bottom_height
            real(c_float),   intent(in), value :: scale
            type(sdl_frect), intent(in)        :: dst_rect
            real(c_float),   intent(in), value :: tile_scale
            logical(c_bool)                    :: sdl_render_texture9_grid_tiled
        end function sdl_render_texture9_grid_tiled

        ! bool SDL_RenderTextureAffine(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, const SDL_FPoint *origin, const SDL_FPoint *right, const SDL_FPoint *down)
        function sdl_render_texture_affine(renderer, texture, src_rect, origin, right, down) bind(c, name='SDL_RenderTextureAffine')
            import :: c_bool, c_ptr, sdl_fpoint, sdl_frect
            implicit none
            type(c_ptr),      intent(in), value :: renderer
            type(c_ptr),      intent(in), value :: texture
            type(sdl_frect),  intent(in)        :: src_rect
            type(sdl_fpoint), intent(in)        :: origin
            type(sdl_fpoint), intent(in)        :: right
            type(sdl_fpoint), intent(in)        :: down
            logical(c_bool)                     :: sdl_render_texture_affine
        end function sdl_render_texture_affine

        ! bool SDL_RenderTextureRotated(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, const SDL_FRect *dstrect, double angle, const SDL_FPoint *center, SDL_FlipMode flip)
        function sdl_render_texture_rotated(renderer, texture, src_rect, dst_rect, angle, center, flip) bind(c, name='SDL_RenderTextureRotated')
            import :: c_bool, c_double, c_int, c_ptr, sdl_fpoint, sdl_frect
            implicit none
            type(c_ptr),      intent(in), value :: renderer
            type(c_ptr),      intent(in), value :: texture
            type(sdl_frect),  intent(in)        :: src_rect
            type(sdl_frect),  intent(in)        :: dst_rect
            real(c_double),   intent(in), value :: angle
            type(sdl_fpoint), intent(in)        :: center
            integer(c_int),   intent(in), value :: flip
            logical(c_bool)                     :: sdl_render_texture_rotated
        end function sdl_render_texture_rotated

        ! bool SDL_RenderTextureTiled(SDL_Renderer *renderer, SDL_Texture *texture, const SDL_FRect *srcrect, float scale, const SDL_FRect *dstrect)
        function sdl_render_texture_tiled(renderer, texture, src_rect, scale, dst_rect) bind(c, name='SDL_RenderTextureTiled')
            import :: c_bool, c_float, c_ptr, sdl_frect
            implicit none
            type(c_ptr),     intent(in), value :: renderer
            type(c_ptr),     intent(in), value :: texture
            type(sdl_frect), intent(in)        :: src_rect
            real(c_float),   intent(in), value :: scale
            type(sdl_frect), intent(in)        :: dst_rect
            logical(c_bool)                    :: sdl_render_texture_tiled
        end function sdl_render_texture_tiled

        ! bool SDL_RenderViewportSet(SDL_Renderer *renderer)
        function sdl_render_viewport_set(renderer) bind(c, name='SDL_RenderViewportSet')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: renderer
            logical(c_bool)                :: sdl_render_viewport_set
        end function sdl_render_viewport_set

        ! bool SDL_SetDefaultTextureScaleMode(SDL_Renderer *renderer, SDL_ScaleMode scale_mode)
        function sdl_set_default_texture_scale_mode(renderer, scale_mode) bind(c, name='SDL_SetDefaultTextureScaleMode')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: renderer
            integer(c_int), intent(in), value :: scale_mode
            logical(c_bool)                   :: sdl_set_default_texture_scale_mode
        end function sdl_set_default_texture_scale_mode

        ! bool SDL_SetGPURenderState(SDL_Renderer *renderer, SDL_GPURenderState *state)
        function sdl_set_gpu_render_state(renderer, state) bind(c, name='SDL_SetGPURenderState')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: renderer
            type(c_ptr), intent(in), value :: state
            logical(c_bool)                :: sdl_set_gpu_render_state
        end function sdl_set_gpu_render_state

        ! bool SDL_SetGPURenderStateFragmentUniforms(SDL_GPURenderState *state, Uint32 slot_index, const void *data, Uint32 length)
        function sdl_set_gpu_render_state_fragment_uniforms(state, slot_index, data, length) bind(c, name='SDL_SetGPURenderStateFragmentUniforms')
            import :: c_bool, c_ptr, uint32
            implicit none
            type(c_ptr),     intent(in), value :: state
            integer(uint32), intent(in), value :: slot_index
            type(c_ptr),     intent(in), value :: data
            integer(uint32), intent(in), value :: length
            logical(c_bool)                    :: sdl_set_gpu_render_state_fragment_uniforms
        end function sdl_set_gpu_render_state_fragment_uniforms

        ! bool SDL_SetGPURenderStateSamplerBindings(SDL_GPURenderState *state, int num_sampler_bindings, const SDL_GPUTextureSamplerBinding *sampler_bindings)
        function sdl_set_gpu_render_state_sampler_bindings(state, num_sampler_bindings, sampler_bindings) bind(c, name='SDL_SetGPURenderStateSamplerBindings')
            import :: c_bool, c_int, c_ptr, sdl_gpu_texture_sampler_binding
            implicit none
            type(c_ptr),                           intent(in), value :: state
            integer(c_int),                        intent(in), value :: num_sampler_bindings
            type(sdl_gpu_texture_sampler_binding), intent(in)        :: sampler_bindings
            logical(c_bool)                                          :: sdl_set_gpu_render_state_sampler_bindings
        end function sdl_set_gpu_render_state_sampler_bindings

        ! bool SDL_SetGPURenderStateStorageBuffers(SDL_GPURenderState *state, int num_storage_buffers, SDL_GPUBuffer *const *storage_buffers)
        function sdl_set_gpu_render_state_storage_buffers(state, num_storage_buffers) bind(c, name='SDL_SetGPURenderStateStorageBuffers')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: state
            integer(c_int), intent(in), value :: num_storage_buffers
            logical(c_bool)                   :: sdl_set_gpu_render_state_storage_buffers
        end function sdl_set_gpu_render_state_storage_buffers

        ! bool SDL_SetGPURenderStateStorageTextures(SDL_GPURenderState *state, int num_storage_textures, SDL_GPUTexture *const *storage_textures)
        function sdl_set_gpu_render_state_storage_textures(state, num_storage_textures) bind(c, name='SDL_SetGPURenderStateStorageTextures')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: state
            integer(c_int), intent(in), value :: num_storage_textures
            logical(c_bool)                   :: sdl_set_gpu_render_state_storage_textures
        end function sdl_set_gpu_render_state_storage_textures

        ! bool SDL_SetRenderClipRect(SDL_Renderer *renderer, const SDL_Rect *rect)
        function sdl_set_render_clip_rect(renderer, rect) bind(c, name='SDL_SetRenderClipRect')
            import :: c_bool, c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value :: renderer
            type(sdl_rect), intent(in)        :: rect
            logical(c_bool)                   :: sdl_set_render_clip_rect
        end function sdl_set_render_clip_rect

        ! bool SDL_SetRenderColorScale(SDL_Renderer *renderer, float scale)
        function sdl_set_render_color_scale(renderer, scale) bind(c, name='SDL_SetRenderColorScale')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: renderer
            real(c_float), intent(in), value :: scale
            logical(c_bool)                  :: sdl_set_render_color_scale
        end function sdl_set_render_color_scale

        ! bool SDL_SetRenderDrawBlendMode(SDL_Renderer *renderer, SDL_BlendMode blendMode)
        function sdl_set_render_draw_blend_mode(renderer, blend_mode) bind(c, name='SDL_SetRenderDrawBlendMode')
            import :: c_bool, c_ptr, sdl_blend_mode
            implicit none
            type(c_ptr),             intent(in), value :: renderer
            integer(sdl_blend_mode), intent(in), value :: blend_mode
            logical(c_bool)                            :: sdl_set_render_draw_blend_mode
        end function sdl_set_render_draw_blend_mode

        ! bool SDL_SetRenderDrawColor(SDL_Renderer *renderer, Uint8 r, Uint8 g, Uint8 b, Uint8 a)
        function sdl_set_render_draw_color(renderer, r, g, b, a) bind(c, name='SDL_SetRenderDrawColor')
            import :: c_bool, c_ptr, uint8
            implicit none
            type(c_ptr),    intent(in), value :: renderer
            integer(uint8), intent(in), value :: r
            integer(uint8), intent(in), value :: g
            integer(uint8), intent(in), value :: b
            integer(uint8), intent(in), value :: a
            logical(c_bool)                   :: sdl_set_render_draw_color
        end function sdl_set_render_draw_color

        ! bool SDL_SetRenderDrawColorFloat(SDL_Renderer *renderer, float r, float g, float b, float a)
        function sdl_set_render_draw_color_float(renderer, r, g, b, a) bind(c, name='SDL_SetRenderDrawColorFloat')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: renderer
            real(c_float), intent(in), value :: r
            real(c_float), intent(in), value :: g
            real(c_float), intent(in), value :: b
            real(c_float), intent(in), value :: a
            logical(c_bool)                  :: sdl_set_render_draw_color_float
        end function sdl_set_render_draw_color_float

        ! bool SDL_SetRenderLogicalPresentation(SDL_Renderer *renderer, int w, int h, SDL_RendererLogicalPresentation mode)
        function sdl_set_render_logical_presentation(renderer, w, h, mode) bind(c, name='SDL_SetRenderLogicalPresentation')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: renderer
            integer(c_int), intent(in), value :: w
            integer(c_int), intent(in), value :: h
            integer(c_int), intent(in), value :: mode
            logical(c_bool)                   :: sdl_set_render_logical_presentation
        end function sdl_set_render_logical_presentation

        ! bool SDL_SetRenderScale(SDL_Renderer *renderer, float scaleX, float scaleY)
        function sdl_set_render_scale(renderer, scale_x, scale_y) bind(c, name='SDL_SetRenderScale')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: renderer
            real(c_float), intent(in), value :: scale_x
            real(c_float), intent(in), value :: scale_y
            logical(c_bool)                  :: sdl_set_render_scale
        end function sdl_set_render_scale

        ! bool SDL_SetRenderTarget(SDL_Renderer *renderer, SDL_Texture *texture)
        function sdl_set_render_target(renderer, texture) bind(c, name='SDL_SetRenderTarget')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: renderer
            type(c_ptr), intent(in), value :: texture
            logical(c_bool)                :: sdl_set_render_target
        end function sdl_set_render_target

        ! bool SDL_SetRenderTextureAddressMode(SDL_Renderer *renderer, SDL_TextureAddressMode u_mode, SDL_TextureAddressMode v_mode)
        function sdl_set_render_texture_address_mode(renderer, u_mode, v_mode) bind(c, name='SDL_SetRenderTextureAddressMode')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: renderer
            integer(c_int), intent(in), value :: u_mode
            integer(c_int), intent(in), value :: v_mode
            logical(c_bool)                   :: sdl_set_render_texture_address_mode
        end function sdl_set_render_texture_address_mode

        ! bool SDL_SetRenderVSync(SDL_Renderer *renderer, int vsync)
        function sdl_set_render_vsync(renderer, vsync) bind(c, name='SDL_SetRenderVSync')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: renderer
            integer(c_int), intent(in), value :: vsync
            logical(c_bool)                   :: sdl_set_render_vsync
        end function sdl_set_render_vsync

        ! bool SDL_SetRenderViewport(SDL_Renderer *renderer, const SDL_Rect *rect)
        function sdl_set_render_viewport(renderer, rect) bind(c, name='SDL_SetRenderViewport')
            import :: c_bool, c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value :: renderer
            type(sdl_rect), intent(in)        :: rect
            logical(c_bool)                   :: sdl_set_render_viewport
        end function sdl_set_render_viewport

        ! bool SDL_SetTextureAlphaMod(SDL_Texture *texture, Uint8 alpha)
        function sdl_set_texture_alpha_mod(texture, alpha) bind(c, name='SDL_SetTextureAlphaMod')
            import :: c_bool, c_ptr, uint8
            implicit none
            type(c_ptr),    intent(in), value :: texture
            integer(uint8), intent(in), value :: alpha
            logical(c_bool)                   :: sdl_set_texture_alpha_mod
        end function sdl_set_texture_alpha_mod

        ! bool SDL_SetTextureAlphaModFloat(SDL_Texture *texture, float alpha)
        function sdl_set_texture_alpha_mod_float(texture, alpha) bind(c, name='SDL_SetTextureAlphaModFloat')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: texture
            real(c_float), intent(in), value :: alpha
            logical(c_bool)                  :: sdl_set_texture_alpha_mod_float
        end function sdl_set_texture_alpha_mod_float

        ! bool SDL_SetTextureBlendMode(SDL_Texture *texture, SDL_BlendMode blendMode)
        function sdl_set_texture_blend_mode(texture, blend_mode) bind(c, name='SDL_SetTextureBlendMode')
            import :: c_bool, c_ptr, sdl_blend_mode
            implicit none
            type(c_ptr),             intent(in), value :: texture
            integer(sdl_blend_mode), intent(in), value :: blend_mode
            logical(c_bool)                            :: sdl_set_texture_blend_mode
        end function sdl_set_texture_blend_mode

        ! bool SDL_SetTextureColorMod(SDL_Texture *texture, Uint8 r, Uint8 g, Uint8 b)
        function sdl_set_texture_color_mod(texture, r, g, b) bind(c, name='SDL_SetTextureColorMod')
            import :: c_bool, c_ptr, uint8
            implicit none
            type(c_ptr),    intent(in), value :: texture
            integer(uint8), intent(in), value :: r
            integer(uint8), intent(in), value :: g
            integer(uint8), intent(in), value :: b
            logical(c_bool)                   :: sdl_set_texture_color_mod
        end function sdl_set_texture_color_mod

        ! bool SDL_SetTextureColorModFloat(SDL_Texture *texture, float r, float g, float b)
        function sdl_set_texture_color_mod_float(texture, r, g, b) bind(c, name='SDL_SetTextureColorModFloat')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: texture
            real(c_float), intent(in), value :: r
            real(c_float), intent(in), value :: g
            real(c_float), intent(in), value :: b
            logical(c_bool)                  :: sdl_set_texture_color_mod_float
        end function sdl_set_texture_color_mod_float

        ! bool SDL_SetTexturePalette(SDL_Texture *texture, SDL_Palette *palette)
        function sdl_set_texture_palette(texture, palette) bind(c, name='SDL_SetTexturePalette')
            import :: c_bool, c_ptr, sdl_palette
            implicit none
            type(c_ptr),       intent(in), value :: texture
            type(sdl_palette), intent(inout)     :: palette
            logical(c_bool)                      :: sdl_set_texture_palette
        end function sdl_set_texture_palette

        ! bool SDL_SetTextureScaleMode(SDL_Texture *texture, SDL_ScaleMode scaleMode)
        function sdl_set_texture_scale_mode(texture, scale_mode) bind(c, name='SDL_SetTextureScaleMode')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: texture
            integer(c_int), intent(in), value :: scale_mode
            logical(c_bool)                   :: sdl_set_texture_scale_mode
        end function sdl_set_texture_scale_mode

        ! void SDL_UnlockTexture(SDL_Texture *texture)
        subroutine sdl_unlock_texture(texture) bind(c, name='SDL_UnlockTexture')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: texture
        end subroutine sdl_unlock_texture

        ! bool SDL_UpdateNVTexture(SDL_Texture *texture, const SDL_Rect *rect, const Uint8 *Yplane, int Ypitch, const Uint8 *UVplane, int UVpitch)
        function sdl_update_nv_texture(texture, rect, yplane, ypitch, u_vplane, u_vpitch) bind(c, name='SDL_UpdateNVTexture')
            import :: c_bool, c_int, c_ptr, sdl_rect, uint8
            implicit none
            type(c_ptr),    intent(in), value :: texture
            type(sdl_rect), intent(in)        :: rect
            integer(uint8), intent(out)       :: yplane
            integer(c_int), intent(in), value :: ypitch
            integer(uint8), intent(out)       :: u_vplane
            integer(c_int), intent(in), value :: u_vpitch
            logical(c_bool)                   :: sdl_update_nv_texture
        end function sdl_update_nv_texture

        ! bool SDL_UpdateTexture(SDL_Texture *texture, const SDL_Rect *rect, const void *pixels, int pitch)
        function sdl_update_texture(texture, rect, pixels, pitch) bind(c, name='SDL_UpdateTexture')
            import :: c_bool, c_int, c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value :: texture
            type(sdl_rect), intent(in)        :: rect
            type(c_ptr),    intent(in), value :: pixels
            integer(c_int), intent(in), value :: pitch
            logical(c_bool)                   :: sdl_update_texture
        end function sdl_update_texture

        ! bool SDL_UpdateYUVTexture(SDL_Texture *texture, const SDL_Rect *rect, const Uint8 *Yplane, int Ypitch, const Uint8 *Uplane, int Upitch, const Uint8 *Vplane, int Vpitch)
        function sdl_update_yuv_texture(texture, rect, yplane, ypitch, uplane, upitch, vplane, vpitch) bind(c, name='SDL_UpdateYUVTexture')
            import :: c_bool, c_int, c_ptr, sdl_rect, uint8
            implicit none
            type(c_ptr),    intent(in), value :: texture
            type(sdl_rect), intent(in)        :: rect
            integer(uint8), intent(out)       :: yplane
            integer(c_int), intent(in), value :: ypitch
            integer(uint8), intent(out)       :: uplane
            integer(c_int), intent(in), value :: upitch
            integer(uint8), intent(out)       :: vplane
            integer(c_int), intent(in), value :: vpitch
            logical(c_bool)                   :: sdl_update_yuv_texture
        end function sdl_update_yuv_texture
    end interface
end module sdl3_render
