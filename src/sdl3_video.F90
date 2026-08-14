! Author:  Philipp Engel
! Licence: ISC
module sdl3_video
    !! Auto-generated Fortran 2023 interface bindings to `SDL3/SDL_video.h`.
    use :: sdl3_properties
    use :: sdl3_rect
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    integer, parameter, public :: sdl_display_id   = uint32 ! SDL_DisplayID
    integer, parameter, public :: sdl_window_flags = uint64 ! SDL_WindowFlags
    integer, parameter, public :: sdl_window_id    = uint32 ! SDL_WindowID

    integer, parameter, public :: sdl_egl_attrib = c_intptr_t ! SDL_EGLAttrib
    integer, parameter, public :: sdl_egl_int    = c_int      ! SDL_EGLint

    integer, parameter, public :: sdl_gl_profile              = uint32 ! SDL_GLProfile
    integer, parameter, public :: sdl_gl_context_flag         = uint32 ! SDL_GLContextFlag
    integer, parameter, public :: sdl_gl_context_release_flag = uint32 ! SDL_GLContextReleaseFlag
    integer, parameter, public :: sdl_gl_context_reset        = uint32 ! SDL_GLContextResetNotification

    character(*), parameter, public :: SDL_PROP_GLOBAL_VIDEO_WAYLAND_WL_DISPLAY_POINTER = 'SDL.video.wayland.wl_display'
    character(*), parameter, public :: SDL_PROP_GLOBAL_VIDEO_WAYLAND_SESSION_ID_STRING  = 'SDL.video.wayland.session_id'

    ! enum SDL_SystemTheme
    integer(c_int), parameter, public :: SDL_SYSTEM_THEME_UNKNOWN = 0 !! Unknown system theme.
    integer(c_int), parameter, public :: SDL_SYSTEM_THEME_LIGHT   = 1 !! Light colored system theme.
    integer(c_int), parameter, public :: SDL_SYSTEM_THEME_DARK    = 2 !! Dark colored system theme.

    ! struct SDL_DisplayMode
    type, bind(c), public :: sdl_display_mode
        integer(sdl_display_id) :: display_id               = 0          !! The display this mode is associated with.
        integer(c_int)          :: format                   = 0          !! Pixel format.
        integer(c_int)          :: w                        = 0          !! Width.
        integer(c_int)          :: h                        = 0          !! Height.
        real(c_float)           :: pixel_density            = 0.0        !! Scale converting size to pixels (e.g. a 1920x1080 mode with 2.0 scale would have 3840x2160 pixels).
        real(c_float)           :: refresh_rate             = 0.0        !! Refresh rate (or 0.0f for unspecified).
        integer(c_int)          :: refresh_rate_numerator   = 0          !! Precise refresh rate numerator (or 0 for unspecified).
        integer(c_int)          :: refresh_rate_denominator = 0          !! Precise refresh rate denominator.
        type(c_ptr), private    :: internal                 = c_null_ptr !! Private.
    end type sdl_display_mode

    ! enum SDL_DisplayOrientation
    integer(c_int), parameter, public :: SDL_ORIENTATION_UNKNOWN           = 0 !! The display orientation can't be determined.
    integer(c_int), parameter, public :: SDL_ORIENTATION_LANDSCAPE         = 1 !! The display is in landscape mode, with the right side up, relative to portrait mode.
    integer(c_int), parameter, public :: SDL_ORIENTATION_LANDSCAPE_FLIPPED = 2 !! The display is in landscape mode, with the left side up, relative to portrait mode.
    integer(c_int), parameter, public :: SDL_ORIENTATION_PORTRAIT          = 3 !! The display is in portrait mode.
    integer(c_int), parameter, public :: SDL_ORIENTATION_PORTRAIT_FLIPPED  = 4 !! The display is in portrait mode, upside down.

    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_FULLSCREEN          = int(z'0000000000000001', sdl_window_flags) !! Window is in fullscreen mode.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_OPENGL              = int(z'0000000000000002', sdl_window_flags) !! Window usable with OpenGL context.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_OCCLUDED            = int(z'0000000000000004', sdl_window_flags) !! Window is occluded.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_HIDDEN              = int(z'0000000000000008', sdl_window_flags) !! Window is neither mapped onto the desktop nor shown in the taskbar/dock/window list; SDL_ShowWindow() is required for it to become visible.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_BORDERLESS          = int(z'0000000000000010', sdl_window_flags) !! No window decoration.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_RESIZABLE           = int(z'0000000000000020', sdl_window_flags) !! Window can be resized.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_MINIMIZED           = int(z'0000000000000040', sdl_window_flags) !! Window is minimized.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_MAXIMIZED           = int(z'0000000000000080', sdl_window_flags) !! Window is maximized.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_MOUSE_GRABBED       = int(z'0000000000000100', sdl_window_flags) !! Window has grabbed mouse input.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_INPUT_FOCUS         = int(z'0000000000000200', sdl_window_flags) !! Window has input focus.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_MOUSE_FOCUS         = int(z'0000000000000400', sdl_window_flags) !! Window has mouse focus.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_EXTERNAL            = int(z'0000000000000800', sdl_window_flags) !! Window not created by SDL.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_MODAL               = int(z'0000000000001000', sdl_window_flags) !! Window is modal.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_HIGH_PIXEL_DENSITY  = int(z'0000000000002000', sdl_window_flags) !! Window uses high pixel density back buffer if possible.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_MOUSE_CAPTURE       = int(z'0000000000004000', sdl_window_flags) !! Window has mouse captured (unrelated to MOUSE_GRABBED).
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_MOUSE_RELATIVE_MODE = int(z'0000000000008000', sdl_window_flags) !! Window has relative mode enabled.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_ALWAYS_ON_TOP       = int(z'0000000000010000', sdl_window_flags) !! Window should always be above others.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_UTILITY             = int(z'0000000000020000', sdl_window_flags) !! Window should be treated as a utility window, not showing in the task bar and window list.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_TOOLTIP             = int(z'0000000000040000', sdl_window_flags) !! Window should be treated as a tooltip and does not get mouse or keyboard focus, requires a parent window.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_POPUP_MENU          = int(z'0000000000080000', sdl_window_flags) !! Window should be treated as a popup menu, requires a parent window.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_KEYBOARD_GRABBED    = int(z'0000000000100000', sdl_window_flags) !! Window has grabbed keyboard input.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_FILL_DOCUMENT       = int(z'0000000000200000', sdl_window_flags) !! Window is in fill-document mode (Emscripten only), since SDL 3.4.0.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_VULKAN              = int(z'0000000010000000', sdl_window_flags) !! Window usable for Vulkan surface.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_METAL               = int(z'0000000020000000', sdl_window_flags) !! Window usable for Metal view.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_TRANSPARENT         = int(z'0000000040000000', sdl_window_flags) !! Window with transparent buffer.
    integer(sdl_window_flags), parameter, public :: SDL_WINDOW_NOT_FOCUSABLE       = int(z'0000000080000000', sdl_window_flags) !! Window should not be focusable.

    ! SDL_WINDOWPOS_UNDEFINED_DISPLAY(X) (SDL_WINDOWPOS_UNDEFINED_MASK|(X))
    ! SDL_WINDOWPOS_ISUNDEFINED(X)       (((X)&0xFFFF0000) == SDL_WINDOWPOS_UNDEFINED_MASK)
    ! SDL_WINDOWPOS_CENTERED_DISPLAY(X)  (SDL_WINDOWPOS_CENTERED_MASK|(X))
    ! SDL_WINDOWPOS_ISCENTERED(X)        (((X)&0xFFFF0000) == SDL_WINDOWPOS_CENTERED_MASK)

    integer(c_unsigned), parameter, public :: SDL_WINDOWPOS_UNDEFINED_MASK = int(z'1FFF0000', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_WINDOWPOS_UNDEFINED      = ior(SDL_WINDOWPOS_UNDEFINED_MASK, 0)
    integer(c_unsigned), parameter, public :: SDL_WINDOWPOS_CENTERED_MASK  = int(z'2FFF0000', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_WINDOWPOS_CENTERED       = ior(SDL_WINDOWPOS_CENTERED_MASK, 0)

    ! enum SDL_FlashOperation
    integer(c_int), parameter, public :: SDL_FLASH_CANCEL        = 0 !! Cancel any window flash state.
    integer(c_int), parameter, public :: SDL_FLASH_BRIEFLY       = 1 !! Flash the window briefly to get attention.
    integer(c_int), parameter, public :: SDL_FLASH_UNTIL_FOCUSED = 2 !! Flash the window until it gets focus.

    ! enum SDL_ProgressState
    integer(c_int), parameter, public :: SDL_PROGRESS_STATE_INVALID       = -1 !! An invalid progress state indicating an error; check `SDL_GetError()`.
    integer(c_int), parameter, public :: SDL_PROGRESS_STATE_NONE          =  0 !! No progress bar is shown.
    integer(c_int), parameter, public :: SDL_PROGRESS_STATE_INDETERMINATE =  1 !! The progress bar is shown in a indeterminate state.
    integer(c_int), parameter, public :: SDL_PROGRESS_STATE_NORMAL        =  2 !! The progress bar is shown in a normal state.
    integer(c_int), parameter, public :: SDL_PROGRESS_STATE_PAUSED        =  3 !! The progress bar is shown in a paused state.
    integer(c_int), parameter, public :: SDL_PROGRESS_STATE_ERROR         =  4 !! The progress bar is shown in a state indicating the application had an error.

    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_ALWAYS_ON_TOP_BOOLEAN               = 'SDL.window.create.always_on_top'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_BORDERLESS_BOOLEAN                  = 'SDL.window.create.borderless'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_CONSTRAIN_POPUP_BOOLEAN             = 'SDL.window.create.constrain_popup'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_FOCUSABLE_BOOLEAN                   = 'SDL.window.create.focusable'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_EXTERNAL_GRAPHICS_CONTEXT_BOOLEAN   = 'SDL.window.create.external_graphics_context'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_FLAGS_NUMBER                        = 'SDL.window.create.flags'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_FULLSCREEN_BOOLEAN                  = 'SDL.window.create.fullscreen'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_HEIGHT_NUMBER                       = 'SDL.window.create.height'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_HIDDEN_BOOLEAN                      = 'SDL.window.create.hidden'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_HIGH_PIXEL_DENSITY_BOOLEAN          = 'SDL.window.create.high_pixel_density'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_MAXIMIZED_BOOLEAN                   = 'SDL.window.create.maximized'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_MENU_BOOLEAN                        = 'SDL.window.create.menu'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_METAL_BOOLEAN                       = 'SDL.window.create.metal'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_MINIMIZED_BOOLEAN                   = 'SDL.window.create.minimized'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_MODAL_BOOLEAN                       = 'SDL.window.create.modal'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_MOUSE_GRABBED_BOOLEAN               = 'SDL.window.create.mouse_grabbed'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_OPENGL_BOOLEAN                      = 'SDL.window.create.opengl'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_PARENT_POINTER                      = 'SDL.window.create.parent'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_RESIZABLE_BOOLEAN                   = 'SDL.window.create.resizable'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_TITLE_STRING                        = 'SDL.window.create.title'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_TRANSPARENT_BOOLEAN                 = 'SDL.window.create.transparent'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_TOOLTIP_BOOLEAN                     = 'SDL.window.create.tooltip'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_UTILITY_BOOLEAN                     = 'SDL.window.create.utility'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_VULKAN_BOOLEAN                      = 'SDL.window.create.vulkan'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_WIDTH_NUMBER                        = 'SDL.window.create.width'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_X_NUMBER                            = 'SDL.window.create.x'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_Y_NUMBER                            = 'SDL.window.create.y'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_COCOA_WINDOW_POINTER                = 'SDL.window.create.cocoa.window'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_COCOA_VIEW_POINTER                  = 'SDL.window.create.cocoa.view'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_WINDOWSCENE_POINTER                 = 'SDL.window.create.uikit.windowscene'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_WAYLAND_SURFACE_ROLE_CUSTOM_BOOLEAN = 'SDL.window.create.wayland.surface_role_custom'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_WAYLAND_CREATE_EGL_WINDOW_BOOLEAN   = 'SDL.window.create.wayland.create_egl_window'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_WAYLAND_WINDOW_ID_STRING            = 'SDL.window.create.wayland.window_id'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_WAYLAND_WL_SURFACE_POINTER          = 'SDL.window.create.wayland.wl_surface'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_WIN32_HWND_POINTER                  = 'SDL.window.create.win32.hwnd'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_WIN32_PIXEL_FORMAT_HWND_POINTER     = 'SDL.window.create.win32.pixel_format_hwnd'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_X11_WINDOW_NUMBER                   = 'SDL.window.create.x11.window'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_EMSCRIPTEN_CANVAS_ID_STRING         = 'SDL.window.create.emscripten.canvas_id'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_EMSCRIPTEN_KEYBOARD_ELEMENT_STRING  = 'SDL.window.create.emscripten.keyboard_element'
    character(*), parameter, public :: SDL_PROP_WINDOW_CREATE_VISIONOS_SETTINGS_STRING            = 'SDL.window.create.visionos.settings'

    character(*), parameter, public :: SDL_PROP_DISPLAY_HDR_ENABLED_BOOLEAN             = 'SDL.display.HDR_enabled'
    character(*), parameter, public :: SDL_PROP_DISPLAY_KMSDRM_PANEL_ORIENTATION_NUMBER = 'SDL.display.KMSDRM.panel_orientation'
    character(*), parameter, public :: SDL_PROP_DISPLAY_WAYLAND_WL_OUTPUT_POINTER       = 'SDL.display.wayland.wl_output'
    character(*), parameter, public :: SDL_PROP_DISPLAY_WINDOWS_HMONITOR_POINTER        = 'SDL.display.windows.hmonitor'

    character(*), parameter, public :: SDL_PROP_WINDOW_SHAPE_POINTER                             = 'SDL.window.shape'
    character(*), parameter, public :: SDL_PROP_WINDOW_HDR_ENABLED_BOOLEAN                       = 'SDL.window.HDR_enabled'
    character(*), parameter, public :: SDL_PROP_WINDOW_SDR_WHITE_LEVEL_FLOAT                     = 'SDL.window.SDR_white_level'
    character(*), parameter, public :: SDL_PROP_WINDOW_HDR_HEADROOM_FLOAT                        = 'SDL.window.HDR_headroom'
    character(*), parameter, public :: SDL_PROP_WINDOW_ANDROID_WINDOW_POINTER                    = 'SDL.window.android.window'
    character(*), parameter, public :: SDL_PROP_WINDOW_ANDROID_SURFACE_POINTER                   = 'SDL.window.android.surface'
    character(*), parameter, public :: SDL_PROP_WINDOW_UIKIT_WINDOW_POINTER                      = 'SDL.window.uikit.window'
    character(*), parameter, public :: SDL_PROP_WINDOW_UIKIT_METAL_VIEW_TAG_NUMBER               = 'SDL.window.uikit.metal_view_tag'
    character(*), parameter, public :: SDL_PROP_WINDOW_UIKIT_OPENGL_FRAMEBUFFER_NUMBER           = 'SDL.window.uikit.opengl.framebuffer'
    character(*), parameter, public :: SDL_PROP_WINDOW_UIKIT_OPENGL_RENDERBUFFER_NUMBER          = 'SDL.window.uikit.opengl.renderbuffer'
    character(*), parameter, public :: SDL_PROP_WINDOW_UIKIT_OPENGL_RESOLVE_FRAMEBUFFER_NUMBER   = 'SDL.window.uikit.opengl.resolve_framebuffer'
    character(*), parameter, public :: SDL_PROP_WINDOW_KMSDRM_DEVICE_INDEX_NUMBER                = 'SDL.window.kmsdrm.dev_index'
    character(*), parameter, public :: SDL_PROP_WINDOW_KMSDRM_DRM_FD_NUMBER                      = 'SDL.window.kmsdrm.drm_fd'
    character(*), parameter, public :: SDL_PROP_WINDOW_KMSDRM_GBM_DEVICE_POINTER                 = 'SDL.window.kmsdrm.gbm_dev'
    character(*), parameter, public :: SDL_PROP_WINDOW_COCOA_WINDOW_POINTER                      = 'SDL.window.cocoa.window'
    character(*), parameter, public :: SDL_PROP_WINDOW_COCOA_METAL_VIEW_TAG_NUMBER               = 'SDL.window.cocoa.metal_view_tag'
    character(*), parameter, public :: SDL_PROP_WINDOW_OPENVR_OVERLAY_ID_NUMBER                  = 'SDL.window.openvr.overlay_id'
    character(*), parameter, public :: SDL_PROP_WINDOW_QNX_WINDOW_POINTER                        = 'SDL.window.qnx.window'
    character(*), parameter, public :: SDL_PROP_WINDOW_QNX_SURFACE_POINTER                       = 'SDL.window.qnx.surface'
    character(*), parameter, public :: SDL_PROP_WINDOW_VIVANTE_DISPLAY_POINTER                   = 'SDL.window.vivante.display'
    character(*), parameter, public :: SDL_PROP_WINDOW_VIVANTE_WINDOW_POINTER                    = 'SDL.window.vivante.window'
    character(*), parameter, public :: SDL_PROP_WINDOW_VIVANTE_SURFACE_POINTER                   = 'SDL.window.vivante.surface'
    character(*), parameter, public :: SDL_PROP_WINDOW_WIN32_HWND_POINTER                        = 'SDL.window.win32.hwnd'
    character(*), parameter, public :: SDL_PROP_WINDOW_WIN32_HDC_POINTER                         = 'SDL.window.win32.hdc'
    character(*), parameter, public :: SDL_PROP_WINDOW_WIN32_INSTANCE_POINTER                    = 'SDL.window.win32.instance'
    character(*), parameter, public :: SDL_PROP_WINDOW_WAYLAND_DISPLAY_POINTER                   = 'SDL.window.wayland.display'
    character(*), parameter, public :: SDL_PROP_WINDOW_WAYLAND_SURFACE_POINTER                   = 'SDL.window.wayland.surface'
    character(*), parameter, public :: SDL_PROP_WINDOW_WAYLAND_VIEWPORT_POINTER                  = 'SDL.window.wayland.viewport'
    character(*), parameter, public :: SDL_PROP_WINDOW_WAYLAND_EGL_WINDOW_POINTER                = 'SDL.window.wayland.egl_window'
    character(*), parameter, public :: SDL_PROP_WINDOW_WAYLAND_WINDOW_ID_STRING                  = 'SDL.window.wayland.window_id'
    character(*), parameter, public :: SDL_PROP_WINDOW_WAYLAND_XDG_SURFACE_POINTER               = 'SDL.window.wayland.xdg_surface'
    character(*), parameter, public :: SDL_PROP_WINDOW_WAYLAND_XDG_TOPLEVEL_POINTER              = 'SDL.window.wayland.xdg_toplevel'
    character(*), parameter, public :: SDL_PROP_WINDOW_WAYLAND_XDG_TOPLEVEL_EXPORT_HANDLE_STRING = 'SDL.window.wayland.xdg_toplevel_export_handle'
    character(*), parameter, public :: SDL_PROP_WINDOW_WAYLAND_XDG_POPUP_POINTER                 = 'SDL.window.wayland.xdg_popup'
    character(*), parameter, public :: SDL_PROP_WINDOW_WAYLAND_XDG_POSITIONER_POINTER            = 'SDL.window.wayland.xdg_positioner'
    character(*), parameter, public :: SDL_PROP_WINDOW_X11_DISPLAY_POINTER                       = 'SDL.window.x11.display'
    character(*), parameter, public :: SDL_PROP_WINDOW_X11_SCREEN_NUMBER                         = 'SDL.window.x11.screen'
    character(*), parameter, public :: SDL_PROP_WINDOW_X11_WINDOW_NUMBER                         = 'SDL.window.x11.window'
    character(*), parameter, public :: SDL_PROP_WINDOW_EMSCRIPTEN_CANVAS_ID_STRING               = 'SDL.window.emscripten.canvas_id'
    character(*), parameter, public :: SDL_PROP_WINDOW_EMSCRIPTEN_KEYBOARD_ELEMENT_STRING        = 'SDL.window.emscripten.keyboard_element'
    character(*), parameter, public :: SDL_PROP_WINDOW_VISIONOS_SETTINGS_STRING                  = 'SDL.window.visionos.settings'

    integer(c_int), parameter, public :: SDL_WINDOW_SURFACE_VSYNC_DISABLED = 0
    integer(c_int), parameter, public :: SDL_WINDOW_SURFACE_VSYNC_ADAPTIVE = -1

    ! enum SDL_GLAttr
    integer(c_int), parameter, public :: SDL_GL_RED_SIZE                   =  0 !! The minimum number of bits for the red channel of the color buffer; defaults to 8.
    integer(c_int), parameter, public :: SDL_GL_GREEN_SIZE                 =  1 !! The minimum number of bits for the green channel of the color buffer; defaults to 8.
    integer(c_int), parameter, public :: SDL_GL_BLUE_SIZE                  =  2 !! The minimum number of bits for the blue channel of the color buffer; defaults to 8.
    integer(c_int), parameter, public :: SDL_GL_ALPHA_SIZE                 =  3 !! The minimum number of bits for the alpha channel of the color buffer; defaults to 8.
    integer(c_int), parameter, public :: SDL_GL_BUFFER_SIZE                =  4 !! The minimum number of bits for frame buffer size; defaults to 0.
    integer(c_int), parameter, public :: SDL_GL_DOUBLEBUFFER               =  5 !! Whether the output is single or double buffered; defaults to double buffering on.
    integer(c_int), parameter, public :: SDL_GL_DEPTH_SIZE                 =  6 !! The minimum number of bits in the depth buffer; defaults to 16.
    integer(c_int), parameter, public :: SDL_GL_STENCIL_SIZE               =  7 !! The minimum number of bits in the stencil buffer; defaults to 0.
    integer(c_int), parameter, public :: SDL_GL_ACCUM_RED_SIZE             =  8 !! The minimum number of bits for the red channel of the accumulation buffer; defaults to 0.
    integer(c_int), parameter, public :: SDL_GL_ACCUM_GREEN_SIZE           =  9 !! The minimum number of bits for the green channel of the accumulation buffer; defaults to 0.
    integer(c_int), parameter, public :: SDL_GL_ACCUM_BLUE_SIZE            = 10 !! The minimum number of bits for the blue channel of the accumulation buffer; defaults to 0.
    integer(c_int), parameter, public :: SDL_GL_ACCUM_ALPHA_SIZE           = 11 !! The minimum number of bits for the alpha channel of the accumulation buffer; defaults to 0.
    integer(c_int), parameter, public :: SDL_GL_STEREO                     = 12 !! Whether the output is stereo 3D; defaults to off.
    integer(c_int), parameter, public :: SDL_GL_MULTISAMPLEBUFFERS         = 13 !! The number of buffers used for multisample anti-aliasing; defaults to 0.
    integer(c_int), parameter, public :: SDL_GL_MULTISAMPLESAMPLES         = 14 !! The number of samples used around the current pixel used for multisample anti-aliasing.
    integer(c_int), parameter, public :: SDL_GL_ACCELERATED_VISUAL         = 15 !! Set to 1 to require hardware acceleration, set to 0 to force software rendering; defaults to allow either.
    integer(c_int), parameter, public :: SDL_GL_RETAINED_BACKING           = 16 !! Not used (deprecated).
    integer(c_int), parameter, public :: SDL_GL_CONTEXT_MAJOR_VERSION      = 17 !! OpenGL context major version.
    integer(c_int), parameter, public :: SDL_GL_CONTEXT_MINOR_VERSION      = 18 !! OpenGL context minor version.
    integer(c_int), parameter, public :: SDL_GL_CONTEXT_FLAGS              = 19 !! Some combination of 0 or more of elements of the SDL_GLContextFlag enumeration; defaults to 0.
    integer(c_int), parameter, public :: SDL_GL_CONTEXT_PROFILE_MASK       = 20 !! Type of GL context (Core, Compatibility, ES). See SDL_GLProfile; default value depends on platform.
    integer(c_int), parameter, public :: SDL_GL_SHARE_WITH_CURRENT_CONTEXT = 21 !! OpenGL context sharing; defaults to 0.
    integer(c_int), parameter, public :: SDL_GL_FRAMEBUFFER_SRGB_CAPABLE   = 22 !! Requests sRGB capable visual; defaults to 0.
    integer(c_int), parameter, public :: SDL_GL_CONTEXT_RELEASE_BEHAVIOR   = 23 !! Sets context the release behavior. See SDL_GLContextReleaseFlag; defaults to FLUSH.
    integer(c_int), parameter, public :: SDL_GL_CONTEXT_RESET_NOTIFICATION = 24 !! Set context reset notification. See SDL_GLContextResetNotification; defaults to NO_NOTIFICATION.
    integer(c_int), parameter, public :: SDL_GL_CONTEXT_NO_ERROR           = 25
    integer(c_int), parameter, public :: SDL_GL_FLOATBUFFERS               = 26
    integer(c_int), parameter, public :: SDL_GL_EGL_PLATFORM               = 27

    integer(c_int), parameter, public :: SDL_GL_CONTEXT_PROFILE_CORE            = int(z'0001') !! OpenGL Core Profile context.
    integer(c_int), parameter, public :: SDL_GL_CONTEXT_PROFILE_COMPATIBILITY   = int(z'0002') !! OpenGL Compatibility Profile context.
    integer(c_int), parameter, public :: SDL_GL_CONTEXT_PROFILE_ES              = int(z'0004') !! GLX_CONTEXT_ES2_PROFILE_BIT_EXT.

    integer(c_int), parameter, public :: SDL_GL_CONTEXT_DEBUG_FLAG              = int(z'0001')
    integer(c_int), parameter, public :: SDL_GL_CONTEXT_FORWARD_COMPATIBLE_FLAG = int(z'0002')
    integer(c_int), parameter, public :: SDL_GL_CONTEXT_ROBUST_ACCESS_FLAG      = int(z'0004')
    integer(c_int), parameter, public :: SDL_GL_CONTEXT_RESET_ISOLATION_FLAG    = int(z'0008')

    integer(c_int), parameter, public :: SDL_GL_CONTEXT_RELEASE_BEHAVIOR_NONE   = int(z'0000')
    integer(c_int), parameter, public :: SDL_GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH  = int(z'0001')

    integer(c_int), parameter, public :: SDL_GL_CONTEXT_RESET_NO_NOTIFICATION   = int(z'0000')
    integer(c_int), parameter, public :: SDL_GL_CONTEXT_RESET_LOSE_CONTEXT      = int(z'0001')

    ! enum SDL_HitTestResult
    integer(c_int), parameter, public :: SDL_HITTEST_NORMAL             = 0 !! Region is normal. No special properties.
    integer(c_int), parameter, public :: SDL_HITTEST_DRAGGABLE          = 1 !! Region can drag entire window.
    integer(c_int), parameter, public :: SDL_HITTEST_RESIZE_TOPLEFT     = 2 !! Region is the resizable top-left corner border.
    integer(c_int), parameter, public :: SDL_HITTEST_RESIZE_TOP         = 3 !! Region is the resizable top border.
    integer(c_int), parameter, public :: SDL_HITTEST_RESIZE_TOPRIGHT    = 4 !! Region is the resizable top-right corner border.
    integer(c_int), parameter, public :: SDL_HITTEST_RESIZE_RIGHT       = 5 !! Region is the resizable right border.
    integer(c_int), parameter, public :: SDL_HITTEST_RESIZE_BOTTOMRIGHT = 6 !! Region is the resizable bottom-right corner border.
    integer(c_int), parameter, public :: SDL_HITTEST_RESIZE_BOTTOM      = 7 !! Region is the resizable bottom border.
    integer(c_int), parameter, public :: SDL_HITTEST_RESIZE_BOTTOMLEFT  = 8 !! Region is the resizable bottom-left corner border.
    integer(c_int), parameter, public :: SDL_HITTEST_RESIZE_LEFT        = 9 !! Region is the resizable left border.

    public :: sdl_egl_attrib_array_callback
    public :: sdl_egl_int_array_callback
    public :: sdl_hit_test

    abstract interface
        ! SDL_EGLAttrib *SDL_EGLAttribArrayCallback(void *userdata)
        function sdl_egl_attrib_array_callback(user_data) bind(c)
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: user_data
            type(c_ptr)                    :: sdl_egl_attrib_array_callback
        end function sdl_egl_attrib_array_callback

        ! SDL_EGLint *SDL_EGLIntArrayCallback(void *userdata, SDL_EGLDisplay display, SDL_EGLConfig config)
        function sdl_egl_int_array_callback(user_data, display, config) bind(c)
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: user_data
            type(c_ptr), intent(in), value :: display
            type(c_ptr), intent(in), value :: config
            type(c_ptr)                    :: sdl_egl_int_array_callback
        end function sdl_egl_int_array_callback

        ! SDL_HitTestResult SDL_HitTest(SDL_Window *win, const SDL_Point *area, void *data)
        function sdl_hit_test(win, area, data) bind(c)
            import :: c_int, c_ptr, sdl_point
            implicit none
            type(c_ptr),     intent(in), value :: win
            type(sdl_point), intent(in)        :: area
            type(c_ptr),     intent(in), value :: data
            integer(c_int)                     :: sdl_hit_test
        end function sdl_hit_test
    end interface

    public :: sdl_create_popup_window
    public :: sdl_create_window
    public :: sdl_create_window_with_properties
    public :: sdl_destroy_window
    public :: sdl_destroy_window_surface
    public :: sdl_disable_screen_saver
    public :: sdl_egl_get_current_config
    public :: sdl_egl_get_current_display
    public :: sdl_egl_get_proc_address
    public :: sdl_egl_get_window_surface
    public :: sdl_egl_set_attribute_callbacks
    public :: sdl_enable_screen_saver
    public :: sdl_flash_window
    public :: sdl_get_closest_fullscreen_display_mode
    public :: sdl_get_current_display_mode
    public :: sdl_get_current_display_orientation
    public :: sdl_get_current_video_driver
    public :: sdl_get_desktop_display_mode
    public :: sdl_get_display_bounds
    public :: sdl_get_display_content_scale
    public :: sdl_get_display_for_point
    public :: sdl_get_display_for_rect
    public :: sdl_get_display_for_window
    public :: sdl_get_display_name
    public :: sdl_get_display_properties
    public :: sdl_get_display_usable_bounds
    public :: sdl_get_displays
    public :: sdl_get_fullscreen_display_modes
    public :: sdl_get_grabbed_window
    public :: sdl_get_natural_display_orientation
    public :: sdl_get_num_video_drivers
    public :: sdl_get_primary_display
    public :: sdl_get_system_theme
    public :: sdl_get_video_driver
    public :: sdl_get_window_aspect_ratio
    public :: sdl_get_window_borders_size
    public :: sdl_get_window_display_scale
    public :: sdl_get_window_flags
    public :: sdl_get_window_from_id
    public :: sdl_get_window_fullscreen_mode
    public :: sdl_get_window_icc_profile
    public :: sdl_get_window_id
    public :: sdl_get_window_keyboard_grab
    public :: sdl_get_window_maximum_size
    public :: sdl_get_window_minimum_size
    public :: sdl_get_window_mouse_grab
    public :: sdl_get_window_mouse_rect
    public :: sdl_get_window_opacity
    public :: sdl_get_window_parent
    public :: sdl_get_window_pixel_density
    public :: sdl_get_window_pixel_format
    public :: sdl_get_window_position
    public :: sdl_get_window_progress_state
    public :: sdl_get_window_progress_value
    public :: sdl_get_window_properties
    public :: sdl_get_window_safe_area
    public :: sdl_get_window_size
    public :: sdl_get_window_size_in_pixels
    public :: sdl_get_window_surface
    public :: sdl_get_window_surface_vsync
    public :: sdl_get_window_title
    public :: sdl_get_windows
    public :: sdl_gl_create_context
    public :: sdl_gl_destroy_context
    public :: sdl_gl_extension_supported
    public :: sdl_gl_get_attribute
    public :: sdl_gl_get_current_context
    public :: sdl_gl_get_current_window
    public :: sdl_gl_get_proc_address
    public :: sdl_gl_get_swap_interval
    public :: sdl_gl_load_library
    public :: sdl_gl_make_current
    public :: sdl_gl_reset_attributes
    public :: sdl_gl_set_attribute
    public :: sdl_gl_set_swap_interval
    public :: sdl_gl_swap_window
    public :: sdl_gl_unload_library
    public :: sdl_hide_window
    public :: sdl_maximize_window
    public :: sdl_minimize_window
    public :: sdl_raise_window
    public :: sdl_restore_window
    public :: sdl_screen_saver_enabled
    public :: sdl_set_window_always_on_top
    public :: sdl_set_window_aspect_ratio
    public :: sdl_set_window_bordered
    public :: sdl_set_window_fill_document
    public :: sdl_set_window_focusable
    public :: sdl_set_window_fullscreen
    public :: sdl_set_window_fullscreen_mode
    public :: sdl_set_window_hit_test
    public :: sdl_set_window_icon
    public :: sdl_set_window_keyboard_grab
    public :: sdl_set_window_maximum_size
    public :: sdl_set_window_minimum_size
    public :: sdl_set_window_modal
    public :: sdl_set_window_mouse_grab
    public :: sdl_set_window_mouse_rect
    public :: sdl_set_window_opacity
    public :: sdl_set_window_parent
    public :: sdl_set_window_position
    public :: sdl_set_window_progress_state
    public :: sdl_set_window_progress_value
    public :: sdl_set_window_resizable
    public :: sdl_set_window_shape
    public :: sdl_set_window_size
    public :: sdl_set_window_surface_vsync
    public :: sdl_set_window_title
    public :: sdl_show_window
    public :: sdl_show_window_system_menu
    public :: sdl_sync_window
    public :: sdl_update_window_surface
    public :: sdl_update_window_surface_rects
    public :: sdl_window_has_surface

    interface
        ! SDL_Window *SDL_CreatePopupWindow(SDL_Window *parent, int offset_x, int offset_y, int w, int h, SDL_WindowFlags flags)
        function sdl_create_popup_window(parent, offset_x, offset_y, w, h, flags) bind(c, name='SDL_CreatePopupWindow')
            import :: c_int, c_ptr, sdl_window_flags
            implicit none
            type(c_ptr),               intent(in), value :: parent
            integer(c_int),            intent(in), value :: offset_x
            integer(c_int),            intent(in), value :: offset_y
            integer(c_int),            intent(in), value :: w
            integer(c_int),            intent(in), value :: h
            integer(sdl_window_flags), intent(in), value :: flags
            type(c_ptr)                                  :: sdl_create_popup_window
        end function sdl_create_popup_window

        ! SDL_Window *SDL_CreateWindow(const char *title, int w, int h, SDL_WindowFlags flags)
        function sdl_create_window(title, w, h, flags) bind(c, name='SDL_CreateWindow')
            import :: c_char, c_int, c_ptr, sdl_window_flags
            implicit none
            character(c_char),         intent(in)        :: title
            integer(c_int),            intent(in), value :: w
            integer(c_int),            intent(in), value :: h
            integer(sdl_window_flags), intent(in), value :: flags
            type(c_ptr)                                  :: sdl_create_window
        end function sdl_create_window

        ! SDL_Window *SDL_CreateWindowWithProperties(SDL_PropertiesID props)
        function sdl_create_window_with_properties(props) bind(c, name='SDL_CreateWindowWithProperties')
            import :: c_ptr, sdl_properties_id
            implicit none
            integer(sdl_properties_id), intent(in), value :: props
            type(c_ptr)                                   :: sdl_create_window_with_properties
        end function sdl_create_window_with_properties

        ! void SDL_DestroyWindow(SDL_Window *window)
        subroutine sdl_destroy_window(window) bind(c, name='SDL_DestroyWindow')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
        end subroutine sdl_destroy_window

        ! bool SDL_DestroyWindowSurface(SDL_Window *window)
        function sdl_destroy_window_surface(window) bind(c, name='SDL_DestroyWindowSurface')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            logical(c_bool)                :: sdl_destroy_window_surface
        end function sdl_destroy_window_surface

        ! bool SDL_DisableScreenSaver(void)
        function sdl_disable_screen_saver() bind(c, name='SDL_DisableScreenSaver')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_disable_screen_saver
        end function sdl_disable_screen_saver

        ! SDL_EGLConfig SDL_EGL_GetCurrentConfig(void)
        function sdl_egl_get_current_config() bind(c, name='SDL_EGL_GetCurrentConfig')
            import :: c_ptr
            implicit none
            type(c_ptr) :: sdl_egl_get_current_config
        end function sdl_egl_get_current_config

        ! SDL_EGLDisplay SDL_EGL_GetCurrentDisplay(void)
        function sdl_egl_get_current_display() bind(c, name='SDL_EGL_GetCurrentDisplay')
            import :: c_ptr
            implicit none
            type(c_ptr) :: sdl_egl_get_current_display
        end function sdl_egl_get_current_display

        ! SDL_FunctionPointer SDL_EGL_GetProcAddress(const char *proc)
        function sdl_egl_get_proc_address(proc) bind(c, name='SDL_EGL_GetProcAddress')
            import :: c_char, c_funptr
            implicit none
            character(c_char), intent(in) :: proc
            type(c_funptr)                :: sdl_egl_get_proc_address
        end function sdl_egl_get_proc_address

        ! SDL_EGLSurface SDL_EGL_GetWindowSurface(SDL_Window *window)
        function sdl_egl_get_window_surface(window) bind(c, name='SDL_EGL_GetWindowSurface')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            type(c_ptr)                    :: sdl_egl_get_window_surface
        end function sdl_egl_get_window_surface

        ! void SDL_EGL_SetAttributeCallbacks(SDL_EGLAttribArrayCallback platformAttribCallback, SDL_EGLIntArrayCallback surfaceAttribCallback, SDL_EGLIntArrayCallback contextAttribCallback, void *userdata)
        subroutine sdl_egl_set_attribute_callbacks(platform_attrib_callback, surface_attrib_callback, context_attrib_callback, user_data) bind(c, name='SDL_EGL_SetAttributeCallbacks')
            import :: c_ptr, sdl_egl_attrib_array_callback, sdl_egl_int_array_callback
            implicit none
            procedure(sdl_egl_attrib_array_callback), bind(c) :: platform_attrib_callback
            procedure(sdl_egl_int_array_callback),    bind(c) :: surface_attrib_callback
            procedure(sdl_egl_int_array_callback),    bind(c) :: context_attrib_callback
            type(c_ptr), intent(in), value                    :: user_data
        end subroutine sdl_egl_set_attribute_callbacks

        ! bool SDL_EnableScreenSaver(void)
        function sdl_enable_screen_saver() bind(c, name='SDL_EnableScreenSaver')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_enable_screen_saver
        end function sdl_enable_screen_saver

        ! bool SDL_FlashWindow(SDL_Window *window, SDL_FlashOperation operation)
        function sdl_flash_window(window, operation) bind(c, name='SDL_FlashWindow')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: window
            integer(c_int), intent(in), value :: operation
            logical(c_bool)                   :: sdl_flash_window
        end function sdl_flash_window

        ! SDL_GLContext SDL_GL_CreateContext(SDL_Window *window)
        function sdl_gl_create_context(window) bind(c, name='SDL_GL_CreateContext')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            type(c_ptr)                    :: sdl_gl_create_context
        end function sdl_gl_create_context

        ! bool SDL_GL_DestroyContext(SDL_GLContext context)
        function sdl_gl_destroy_context(context) bind(c, name='SDL_GL_DestroyContext')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: context
            logical(c_bool)                :: sdl_gl_destroy_context
        end function sdl_gl_destroy_context

        ! bool SDL_GL_ExtensionSupported(const char *extension)
        function sdl_gl_extension_supported(extension) bind(c, name='SDL_GL_ExtensionSupported')
            import :: c_bool, c_char
            implicit none
            character(c_char), intent(in) :: extension
            logical(c_bool)               :: sdl_gl_extension_supported
        end function sdl_gl_extension_supported

        ! bool SDL_GL_GetAttribute(SDL_GLAttr attr, int *value)
        function sdl_gl_get_attribute(attr, value) bind(c, name='SDL_GL_GetAttribute')
            import :: c_bool, c_int
            implicit none
            integer(c_int), intent(in), value :: attr
            integer(c_int), intent(out)       :: value
            logical(c_bool)                   :: sdl_gl_get_attribute
        end function sdl_gl_get_attribute

        ! SDL_GLContext SDL_GL_GetCurrentContext(void)
        function sdl_gl_get_current_context() bind(c, name='SDL_GL_GetCurrentContext')
            import :: c_ptr
            implicit none
            type(c_ptr) :: sdl_gl_get_current_context
        end function sdl_gl_get_current_context

        ! SDL_Window *SDL_GL_GetCurrentWindow(void)
        function sdl_gl_get_current_window() bind(c, name='SDL_GL_GetCurrentWindow')
            import :: c_ptr
            implicit none
            type(c_ptr) :: sdl_gl_get_current_window
        end function sdl_gl_get_current_window

        ! SDL_FunctionPointer SDL_GL_GetProcAddress(const char *proc)
        function sdl_gl_get_proc_address(proc) bind(c, name='SDL_GL_GetProcAddress')
            import :: c_char, c_funptr
            implicit none
            character(c_char), intent(in) :: proc
            type(c_funptr)                :: sdl_gl_get_proc_address
        end function sdl_gl_get_proc_address

        ! bool SDL_GL_GetSwapInterval(int *interval)
        function sdl_gl_get_swap_interval(interval) bind(c, name='SDL_GL_GetSwapInterval')
            import :: c_bool, c_int
            implicit none
            integer(c_int), intent(out) :: interval
            logical(c_bool)             :: sdl_gl_get_swap_interval
        end function sdl_gl_get_swap_interval

        ! bool SDL_GL_LoadLibrary(const char *path)
        function sdl_gl_load_library(path) bind(c, name='SDL_GL_LoadLibrary')
            import :: c_bool, c_char
            implicit none
            character(c_char), intent(in) :: path
            logical(c_bool)               :: sdl_gl_load_library
        end function sdl_gl_load_library

        ! bool SDL_GL_MakeCurrent(SDL_Window *window, SDL_GLContext context)
        function sdl_gl_make_current(window, context) bind(c, name='SDL_GL_MakeCurrent')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            type(c_ptr), intent(in), value :: context
            logical(c_bool)                :: sdl_gl_make_current
        end function sdl_gl_make_current

        ! void SDL_GL_ResetAttributes(void)
        subroutine sdl_gl_reset_attributes() bind(c, name='SDL_GL_ResetAttributes')
        end subroutine sdl_gl_reset_attributes

        ! bool SDL_GL_SetAttribute(SDL_GLAttr attr, int value)
        function sdl_gl_set_attribute(attr, value) bind(c, name='SDL_GL_SetAttribute')
            import :: c_bool, c_int
            implicit none
            integer(c_int), intent(in), value :: attr
            integer(c_int), intent(in), value :: value
            logical(c_bool)                   :: sdl_gl_set_attribute
        end function sdl_gl_set_attribute

        ! bool SDL_GL_SetSwapInterval(int interval)
        function sdl_gl_set_swap_interval(interval) bind(c, name='SDL_GL_SetSwapInterval')
            import :: c_bool, c_int
            implicit none
            integer(c_int), intent(in), value :: interval
            logical(c_bool)                   :: sdl_gl_set_swap_interval
        end function sdl_gl_set_swap_interval

        ! bool SDL_GL_SwapWindow(SDL_Window *window)
        function sdl_gl_swap_window(window) bind(c, name='SDL_GL_SwapWindow')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            logical(c_bool)                :: sdl_gl_swap_window
        end function sdl_gl_swap_window

        ! void SDL_GL_UnloadLibrary(void)
        subroutine sdl_gl_unload_library() bind(c, name='SDL_GL_UnloadLibrary')
        end subroutine sdl_gl_unload_library

        ! bool SDL_GetClosestFullscreenDisplayMode(SDL_DisplayID displayID, int w, int h, float refresh_rate, bool include_high_density_modes, SDL_DisplayMode *closest)
        function sdl_get_closest_fullscreen_display_mode(display_id, w, h, refresh_rate, include_high_density_modes, closest) bind(c, name='SDL_GetClosestFullscreenDisplayMode')
            import :: c_bool, c_float, c_int, sdl_display_id, sdl_display_mode
            implicit none
            integer(sdl_display_id), intent(in), value :: display_id
            integer(c_int),          intent(in), value :: w
            integer(c_int),          intent(in), value :: h
            real(c_float),           intent(in), value :: refresh_rate
            logical(c_bool),         intent(in), value :: include_high_density_modes
            type(sdl_display_mode),  intent(out)       :: closest
            logical(c_bool)                            :: sdl_get_closest_fullscreen_display_mode
        end function sdl_get_closest_fullscreen_display_mode

        ! const SDL_DisplayMode *SDL_GetCurrentDisplayMode(SDL_DisplayID displayID)
        function sdl_get_current_display_mode(display_id) bind(c, name='SDL_GetCurrentDisplayMode')
            import :: c_ptr, sdl_display_id
            implicit none
            integer(sdl_display_id), intent(in), value :: display_id
            type(c_ptr)                                :: sdl_get_current_display_mode
        end function sdl_get_current_display_mode

        ! SDL_DisplayOrientation SDL_GetCurrentDisplayOrientation(SDL_DisplayID displayID)
        function sdl_get_current_display_orientation(display_id) bind(c, name='SDL_GetCurrentDisplayOrientation')
            import :: c_int, sdl_display_id
            implicit none
            integer(sdl_display_id), intent(in), value :: display_id
            integer(c_int)                             :: sdl_get_current_display_orientation
        end function sdl_get_current_display_orientation

        ! const char *SDL_GetCurrentVideoDriver(void)
        function sdl_get_current_video_driver() bind(c, name='SDL_GetCurrentVideoDriver')
            import :: c_ptr
            implicit none
            type(c_ptr) :: sdl_get_current_video_driver
        end function sdl_get_current_video_driver

        ! const SDL_DisplayMode *SDL_GetDesktopDisplayMode(SDL_DisplayID displayID)
        function sdl_get_desktop_display_mode(display_id) bind(c, name='SDL_GetDesktopDisplayMode')
            import :: c_ptr, sdl_display_id
            implicit none
            integer(sdl_display_id), intent(in), value :: display_id
            type(c_ptr)                                :: sdl_get_desktop_display_mode
        end function sdl_get_desktop_display_mode

        ! bool SDL_GetDisplayBounds(SDL_DisplayID displayID, SDL_Rect *rect)
        function sdl_get_display_bounds(display_id, rect) bind(c, name='SDL_GetDisplayBounds')
            import :: c_bool, sdl_display_id, sdl_rect
            implicit none
            integer(sdl_display_id), intent(in), value :: display_id
            type(sdl_rect),          intent(in)        :: rect
            logical(c_bool)                            :: sdl_get_display_bounds
        end function sdl_get_display_bounds

        ! float SDL_GetDisplayContentScale(SDL_DisplayID displayID)
        function sdl_get_display_content_scale(display_id) bind(c, name='SDL_GetDisplayContentScale')
            import :: c_float, sdl_display_id
            implicit none
            integer(sdl_display_id), intent(in), value :: display_id
            real(c_float)                              :: sdl_get_display_content_scale
        end function sdl_get_display_content_scale

        ! SDL_DisplayID SDL_GetDisplayForPoint(const SDL_Point *point)
        function sdl_get_display_for_point(point) bind(c, name='SDL_GetDisplayForPoint')
            import :: sdl_display_id, sdl_point
            implicit none
            type(sdl_point), intent(in) :: point
            integer(sdl_display_id)     :: sdl_get_display_for_point
        end function sdl_get_display_for_point

        ! SDL_DisplayID SDL_GetDisplayForRect(const SDL_Rect *rect)
        function sdl_get_display_for_rect(rect) bind(c, name='SDL_GetDisplayForRect')
            import :: sdl_display_id, sdl_rect
            implicit none
            type(sdl_rect), intent(in) :: rect
            integer(sdl_display_id)    :: sdl_get_display_for_rect
        end function sdl_get_display_for_rect

        ! SDL_DisplayID SDL_GetDisplayForWindow(SDL_Window *window)
        function sdl_get_display_for_window(window) bind(c, name='SDL_GetDisplayForWindow')
            import :: c_ptr, sdl_display_id
            implicit none
            type(c_ptr), intent(in), value :: window
            integer(sdl_display_id)        :: sdl_get_display_for_window
        end function sdl_get_display_for_window

        ! const char *SDL_GetDisplayName(SDL_DisplayID displayID)
        function sdl_get_display_name(display_id) bind(c, name='SDL_GetDisplayName')
            import :: c_ptr, sdl_display_id
            implicit none
            integer(sdl_display_id), intent(in), value :: display_id
            type(c_ptr)                                :: sdl_get_display_name
        end function sdl_get_display_name

        ! SDL_PropertiesID SDL_GetDisplayProperties(SDL_DisplayID displayID)
        function sdl_get_display_properties(display_id) bind(c, name='SDL_GetDisplayProperties')
            import :: sdl_display_id, sdl_properties_id
            implicit none
            integer(sdl_display_id), intent(in), value :: display_id
            integer(sdl_properties_id)                 :: sdl_get_display_properties
        end function sdl_get_display_properties

        ! bool SDL_GetDisplayUsableBounds(SDL_DisplayID displayID, SDL_Rect *rect)
        function sdl_get_display_usable_bounds(display_id, rect) bind(c, name='SDL_GetDisplayUsableBounds')
            import :: c_bool, sdl_display_id, sdl_rect
            implicit none
            integer(sdl_display_id), intent(in), value :: display_id
            type(sdl_rect),          intent(out)       :: rect
            logical(c_bool)                            :: sdl_get_display_usable_bounds
        end function sdl_get_display_usable_bounds

        ! SDL_DisplayID *SDL_GetDisplays(int *count)
        function sdl_get_displays(count) bind(c, name='SDL_GetDisplays')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(out) :: count
            type(c_ptr)                 :: sdl_get_displays
        end function sdl_get_displays

        ! SDL_DisplayMode **SDL_GetFullscreenDisplayModes(SDL_DisplayID displayID, int *count)
        function sdl_get_fullscreen_display_modes(display_id, count) bind(c, name='SDL_GetFullscreenDisplayModes')
            import :: c_int, c_ptr, sdl_display_id
            implicit none
            integer(sdl_display_id), intent(in), value :: display_id
            integer(c_int),          intent(out)       :: count
            type(c_ptr)                                :: sdl_get_fullscreen_display_modes
        end function sdl_get_fullscreen_display_modes

        ! SDL_Window *SDL_GetGrabbedWindow(void)
        function sdl_get_grabbed_window() bind(c, name='SDL_GetGrabbedWindow')
            import :: c_ptr
            implicit none
            type(c_ptr) :: sdl_get_grabbed_window
        end function sdl_get_grabbed_window

        ! SDL_DisplayOrientation SDL_GetNaturalDisplayOrientation(SDL_DisplayID displayID)
        function sdl_get_natural_display_orientation(display_id) bind(c, name='SDL_GetNaturalDisplayOrientation')
            import :: c_int, sdl_display_id
            implicit none
            integer(sdl_display_id), intent(in), value :: display_id
            integer(c_int)                             :: sdl_get_natural_display_orientation
        end function sdl_get_natural_display_orientation

        ! int SDL_GetNumVideoDrivers(void)
        function sdl_get_num_video_drivers() bind(c, name='SDL_GetNumVideoDrivers')
            import :: c_int
            implicit none
            integer(c_int) :: sdl_get_num_video_drivers
        end function sdl_get_num_video_drivers

        ! SDL_DisplayID SDL_GetPrimaryDisplay(void)
        function sdl_get_primary_display() bind(c, name='SDL_GetPrimaryDisplay')
            import :: sdl_display_id
            implicit none
            integer(sdl_display_id) :: sdl_get_primary_display
        end function sdl_get_primary_display

        ! SDL_SystemTheme SDL_GetSystemTheme(void)
        function sdl_get_system_theme() bind(c, name='SDL_GetSystemTheme')
            import :: c_int
            implicit none
            integer(c_int) :: sdl_get_system_theme
        end function sdl_get_system_theme

        ! const char *SDL_GetVideoDriver(int index)
        function sdl_get_video_driver(index) bind(c, name='SDL_GetVideoDriver')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(in), value :: index
            type(c_ptr)                       :: sdl_get_video_driver
        end function sdl_get_video_driver

        ! bool SDL_GetWindowAspectRatio(SDL_Window *window, float *min_aspect, float *max_aspect)
        function sdl_get_window_aspect_ratio(window, min_aspect, max_aspect) bind(c, name='SDL_GetWindowAspectRatio')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: window
            real(c_float), intent(out)       :: min_aspect
            real(c_float), intent(out)       :: max_aspect
            logical(c_bool)                  :: sdl_get_window_aspect_ratio
        end function sdl_get_window_aspect_ratio

        ! bool SDL_GetWindowBordersSize(SDL_Window *window, int *top, int *left, int *bottom, int *right)
        function sdl_get_window_borders_size(window, top, left, bottom, right) bind(c, name='SDL_GetWindowBordersSize')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: window
            integer(c_int), intent(out)       :: top
            integer(c_int), intent(out)       :: left
            integer(c_int), intent(out)       :: bottom
            integer(c_int), intent(out)       :: right
            logical(c_bool)                   :: sdl_get_window_borders_size
        end function sdl_get_window_borders_size

        ! float SDL_GetWindowDisplayScale(SDL_Window *window)
        function sdl_get_window_display_scale(window) bind(c, name='SDL_GetWindowDisplayScale')
            import :: c_float, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            real(c_float)                  :: sdl_get_window_display_scale
        end function sdl_get_window_display_scale

        ! SDL_WindowFlags SDL_GetWindowFlags(SDL_Window *window)
        function sdl_get_window_flags(window) bind(c, name='SDL_GetWindowFlags')
            import :: c_ptr, sdl_window_flags
            implicit none
            type(c_ptr), intent(in), value :: window
            integer(sdl_window_flags)      :: sdl_get_window_flags
        end function sdl_get_window_flags

        ! SDL_Window *SDL_GetWindowFromID(SDL_WindowID id)
        function sdl_get_window_from_id(id) bind(c, name='SDL_GetWindowFromID')
            import :: c_ptr, sdl_window_id
            implicit none
            integer(sdl_window_id), intent(in), value :: id
            type(c_ptr)                               :: sdl_get_window_from_id
        end function sdl_get_window_from_id

        ! const SDL_DisplayMode *SDL_GetWindowFullscreenMode(SDL_Window *window)
        function sdl_get_window_fullscreen_mode(window) bind(c, name='SDL_GetWindowFullscreenMode')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            type(c_ptr)                    :: sdl_get_window_fullscreen_mode
        end function sdl_get_window_fullscreen_mode

        ! void *SDL_GetWindowICCProfile(SDL_Window *window, size_t *size)
        function sdl_get_window_icc_profile(window, size) bind(c, name='SDL_GetWindowICCProfile')
            import :: c_ptr, c_size_t
            implicit none
            type(c_ptr), intent(in), value :: window
            integer(c_size_t), intent(out) :: size
            type(c_ptr)                    :: sdl_get_window_icc_profile
        end function sdl_get_window_icc_profile

        ! SDL_WindowID SDL_GetWindowID(SDL_Window *window)
        function sdl_get_window_id(window) bind(c, name='SDL_GetWindowID')
            import :: c_ptr, sdl_window_id
            implicit none
            type(c_ptr), intent(in), value :: window
            integer(sdl_window_id)         :: sdl_get_window_id
        end function sdl_get_window_id

        ! bool SDL_GetWindowKeyboardGrab(SDL_Window *window)
        function sdl_get_window_keyboard_grab(window) bind(c, name='SDL_GetWindowKeyboardGrab')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            logical(c_bool)                :: sdl_get_window_keyboard_grab
        end function sdl_get_window_keyboard_grab

        ! bool SDL_GetWindowMaximumSize(SDL_Window *window, int *w, int *h)
        function sdl_get_window_maximum_size(window, w, h) bind(c, name='SDL_GetWindowMaximumSize')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: window
            integer(c_int), intent(out)       :: w
            integer(c_int), intent(out)       :: h
            logical(c_bool)                   :: sdl_get_window_maximum_size
        end function sdl_get_window_maximum_size

        ! bool SDL_GetWindowMinimumSize(SDL_Window *window, int *w, int *h)
        function sdl_get_window_minimum_size(window, w, h) bind(c, name='SDL_GetWindowMinimumSize')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: window
            integer(c_int), intent(out)       :: w
            integer(c_int), intent(out)       :: h
            logical(c_bool)                   :: sdl_get_window_minimum_size
        end function sdl_get_window_minimum_size

        ! bool SDL_GetWindowMouseGrab(SDL_Window *window)
        function sdl_get_window_mouse_grab(window) bind(c, name='SDL_GetWindowMouseGrab')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            logical(c_bool)                :: sdl_get_window_mouse_grab
        end function sdl_get_window_mouse_grab

        ! const SDL_Rect *SDL_GetWindowMouseRect(SDL_Window *window)
        function sdl_get_window_mouse_rect(window) bind(c, name='SDL_GetWindowMouseRect')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            type(c_ptr)                    :: sdl_get_window_mouse_rect
        end function sdl_get_window_mouse_rect

        ! float SDL_GetWindowOpacity(SDL_Window *window)
        function sdl_get_window_opacity(window) bind(c, name='SDL_GetWindowOpacity')
            import :: c_float, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            real(c_float)                  :: sdl_get_window_opacity
        end function sdl_get_window_opacity

        ! SDL_Window *SDL_GetWindowParent(SDL_Window *window)
        function sdl_get_window_parent(window) bind(c, name='SDL_GetWindowParent')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            type(c_ptr)                    :: sdl_get_window_parent
        end function sdl_get_window_parent

        ! float SDL_GetWindowPixelDensity(SDL_Window *window)
        function sdl_get_window_pixel_density(window) bind(c, name='SDL_GetWindowPixelDensity')
            import :: c_float, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            real(c_float)                  :: sdl_get_window_pixel_density
        end function sdl_get_window_pixel_density

        ! SDL_PixelFormat SDL_GetWindowPixelFormat(SDL_Window *window)
        function sdl_get_window_pixel_format(window) bind(c, name='SDL_GetWindowPixelFormat')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            integer(c_int)                 :: sdl_get_window_pixel_format
        end function sdl_get_window_pixel_format

        ! bool SDL_GetWindowPosition(SDL_Window *window, int *x, int *y)
        function sdl_get_window_position(window, x, y) bind(c, name='SDL_GetWindowPosition')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: window
            integer(c_int), intent(out)       :: x
            integer(c_int), intent(out)       :: y
            logical(c_bool)                   :: sdl_get_window_position
        end function sdl_get_window_position

        ! SDL_ProgressState SDL_GetWindowProgressState(SDL_Window *window)
        function sdl_get_window_progress_state(window) bind(c, name='SDL_GetWindowProgressState')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            integer(c_int)                 :: sdl_get_window_progress_state
        end function sdl_get_window_progress_state

        ! float SDL_GetWindowProgressValue(SDL_Window *window)
        function sdl_get_window_progress_value(window) bind(c, name='SDL_GetWindowProgressValue')
            import :: c_float, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            real(c_float)                  :: sdl_get_window_progress_value
        end function sdl_get_window_progress_value

        ! SDL_PropertiesID SDL_GetWindowProperties(SDL_Window *window)
        function sdl_get_window_properties(window) bind(c, name='SDL_GetWindowProperties')
            import :: c_ptr, sdl_properties_id
            implicit none
            type(c_ptr), intent(in), value :: window
            integer(sdl_properties_id)     :: sdl_get_window_properties
        end function sdl_get_window_properties


        ! bool SDL_GetWindowSafeArea(SDL_Window *window, SDL_Rect *rect)
        function sdl_get_window_safe_area(window, rect) bind(c, name='SDL_GetWindowSafeArea')
            import :: c_bool, c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value :: window
            type(sdl_rect), intent(in)        :: rect
            logical(c_bool)                   :: sdl_get_window_safe_area
        end function sdl_get_window_safe_area

        ! bool SDL_GetWindowSize(SDL_Window *window, int *w, int *h)
        function sdl_get_window_size(window, w, h) bind(c, name='SDL_GetWindowSize')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: window
            integer(c_int), intent(out)       :: w
            integer(c_int), intent(out)       :: h
            logical(c_bool)                   :: sdl_get_window_size
        end function sdl_get_window_size

        ! bool SDL_GetWindowSizeInPixels(SDL_Window *window, int *w, int *h)
        function sdl_get_window_size_in_pixels(window, w, h) bind(c, name='SDL_GetWindowSizeInPixels')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: window
            integer(c_int), intent(out)       :: w
            integer(c_int), intent(out)       :: h
            logical(c_bool)                   :: sdl_get_window_size_in_pixels
        end function sdl_get_window_size_in_pixels

        ! SDL_Surface *SDL_GetWindowSurface(SDL_Window *window)
        function sdl_get_window_surface(window) bind(c, name='SDL_GetWindowSurface')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            type(c_ptr)                    :: sdl_get_window_surface
        end function sdl_get_window_surface

        ! bool SDL_GetWindowSurfaceVSync(SDL_Window *window, int *vsync)
        function sdl_get_window_surface_vsync(window, vsync) bind(c, name='SDL_GetWindowSurfaceVSync')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: window
            integer(c_int), intent(out)       :: vsync
            logical(c_bool)                   :: sdl_get_window_surface_vsync
        end function sdl_get_window_surface_vsync

        ! const char *SDL_GetWindowTitle(SDL_Window *window)
        function sdl_get_window_title(window) bind(c, name='SDL_GetWindowTitle')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            type(c_ptr)                    :: sdl_get_window_title
        end function sdl_get_window_title

        ! SDL_Window **SDL_GetWindows(int *count)
        function sdl_get_windows(count) bind(c, name='SDL_GetWindows')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(out) :: count
            type(c_ptr)                 :: sdl_get_windows
        end function sdl_get_windows

        ! bool SDL_HideWindow(SDL_Window *window)
        function sdl_hide_window(window) bind(c, name='SDL_HideWindow')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            logical(c_bool)                :: sdl_hide_window
        end function sdl_hide_window

        ! bool SDL_MaximizeWindow(SDL_Window *window)
        function sdl_maximize_window(window) bind(c, name='SDL_MaximizeWindow')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            logical(c_bool)                :: sdl_maximize_window
        end function sdl_maximize_window

        ! bool SDL_MinimizeWindow(SDL_Window *window)
        function sdl_minimize_window(window) bind(c, name='SDL_MinimizeWindow')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            logical(c_bool)                :: sdl_minimize_window
        end function sdl_minimize_window

        ! bool SDL_RaiseWindow(SDL_Window *window)
        function sdl_raise_window(window) bind(c, name='SDL_RaiseWindow')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            logical(c_bool)                :: sdl_raise_window
        end function sdl_raise_window

        ! bool SDL_RestoreWindow(SDL_Window *window)
        function sdl_restore_window(window) bind(c, name='SDL_RestoreWindow')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            logical(c_bool)                :: sdl_restore_window
        end function sdl_restore_window

        ! bool SDL_ScreenSaverEnabled(void)
        function sdl_screen_saver_enabled() bind(c, name='SDL_ScreenSaverEnabled')
            import :: c_bool
            implicit none
            logical(c_bool) :: sdl_screen_saver_enabled
        end function sdl_screen_saver_enabled

        ! bool SDL_SetWindowAlwaysOnTop(SDL_Window *window, bool on_top)
        function sdl_set_window_always_on_top(window, on_top) bind(c, name='SDL_SetWindowAlwaysOnTop')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: window
            logical(c_bool), intent(in), value :: on_top
            logical(c_bool)                    :: sdl_set_window_always_on_top
        end function sdl_set_window_always_on_top

        ! bool SDL_SetWindowAspectRatio(SDL_Window *window, float min_aspect, float max_aspect)
        function sdl_set_window_aspect_ratio(window, min_aspect, max_aspect) bind(c, name='SDL_SetWindowAspectRatio')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: window
            real(c_float), intent(in), value :: min_aspect
            real(c_float), intent(in), value :: max_aspect
            logical(c_bool)                  :: sdl_set_window_aspect_ratio
        end function sdl_set_window_aspect_ratio

        ! bool SDL_SetWindowBordered(SDL_Window *window, bool bordered)
        function sdl_set_window_bordered(window, bordered) bind(c, name='SDL_SetWindowBordered')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: window
            logical(c_bool), intent(in), value :: bordered
            logical(c_bool)                    :: sdl_set_window_bordered
        end function sdl_set_window_bordered

        ! bool SDL_SetWindowFillDocument(SDL_Window *window, bool fill)
        function sdl_set_window_fill_document(window, fill) bind(c, name='SDL_SetWindowFillDocument')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: window
            logical(c_bool), intent(in), value :: fill
            logical(c_bool)                    :: sdl_set_window_fill_document
        end function sdl_set_window_fill_document

        ! bool SDL_SetWindowFocusable(SDL_Window *window, bool focusable)
        function sdl_set_window_focusable(window, focusable) bind(c, name='SDL_SetWindowFocusable')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: window
            logical(c_bool), intent(in), value :: focusable
            logical(c_bool)                    :: sdl_set_window_focusable
        end function sdl_set_window_focusable

        ! bool SDL_SetWindowFullscreen(SDL_Window *window, bool fullscreen)
        function sdl_set_window_fullscreen(window, fullscreen) bind(c, name='SDL_SetWindowFullscreen')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: window
            logical(c_bool), intent(in), value :: fullscreen
            logical(c_bool)                    :: sdl_set_window_fullscreen
        end function sdl_set_window_fullscreen

        ! bool SDL_SetWindowFullscreenMode(SDL_Window *window, const SDL_DisplayMode *mode)
        function sdl_set_window_fullscreen_mode(window, mode) bind(c, name='SDL_SetWindowFullscreenMode')
            import :: c_bool, c_ptr, sdl_display_mode
            implicit none
            type(c_ptr),            intent(in), value :: window
            type(sdl_display_mode), intent(in)        :: mode
            logical(c_bool)                           :: sdl_set_window_fullscreen_mode
        end function sdl_set_window_fullscreen_mode

        ! bool SDL_SetWindowHitTest(SDL_Window *window, SDL_HitTest callback, void *callback_data)
        function sdl_set_window_hit_test(window, callback, callback_data) bind(c, name='SDL_SetWindowHitTest')
            import :: c_bool, c_ptr, sdl_hit_test
            implicit none
            type(c_ptr), intent(in), value   :: window
            procedure(sdl_hit_test), bind(c) :: callback
            type(c_ptr), intent(in), value   :: callback_data
            logical(c_bool)                  :: sdl_set_window_hit_test
        end function sdl_set_window_hit_test

        ! bool SDL_SetWindowIcon(SDL_Window *window, SDL_Surface *icon)
        function sdl_set_window_icon(window, icon) bind(c, name='SDL_SetWindowIcon')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            type(c_ptr), intent(in), value :: icon
            logical(c_bool)                :: sdl_set_window_icon
        end function sdl_set_window_icon

        ! bool SDL_SetWindowKeyboardGrab(SDL_Window *window, bool grabbed)
        function sdl_set_window_keyboard_grab(window, grabbed) bind(c, name='SDL_SetWindowKeyboardGrab')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: window
            logical(c_bool), intent(in), value :: grabbed
            logical(c_bool)                    :: sdl_set_window_keyboard_grab
        end function sdl_set_window_keyboard_grab

        ! bool SDL_SetWindowMaximumSize(SDL_Window *window, int max_w, int max_h)
        function sdl_set_window_maximum_size(window, max_w, max_h) bind(c, name='SDL_SetWindowMaximumSize')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: window
            integer(c_int), intent(in), value :: max_w
            integer(c_int), intent(in), value :: max_h
            logical(c_bool)                   :: sdl_set_window_maximum_size
        end function sdl_set_window_maximum_size

        ! bool SDL_SetWindowMinimumSize(SDL_Window *window, int min_w, int min_h)
        function sdl_set_window_minimum_size(window, min_w, min_h) bind(c, name='SDL_SetWindowMinimumSize')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: window
            integer(c_int), intent(in), value :: min_w
            integer(c_int), intent(in), value :: min_h
            logical(c_bool)                   :: sdl_set_window_minimum_size
        end function sdl_set_window_minimum_size

        ! bool SDL_SetWindowModal(SDL_Window *window, bool modal)
        function sdl_set_window_modal(window, modal) bind(c, name='SDL_SetWindowModal')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: window
            logical(c_bool), intent(in), value :: modal
            logical(c_bool)                    :: sdl_set_window_modal
        end function sdl_set_window_modal

        ! bool SDL_SetWindowMouseGrab(SDL_Window *window, bool grabbed)
        function sdl_set_window_mouse_grab(window, grabbed) bind(c, name='SDL_SetWindowMouseGrab')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: window
            logical(c_bool), intent(in), value :: grabbed
            logical(c_bool)                    :: sdl_set_window_mouse_grab
        end function sdl_set_window_mouse_grab

        ! bool SDL_SetWindowMouseRect(SDL_Window *window, const SDL_Rect *rect)
        function sdl_set_window_mouse_rect(window, rect) bind(c, name='SDL_SetWindowMouseRect')
            import :: c_bool, c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value :: window
            type(sdl_rect), intent(in)        :: rect
            logical(c_bool)                   :: sdl_set_window_mouse_rect
        end function sdl_set_window_mouse_rect

        ! bool SDL_SetWindowOpacity(SDL_Window *window, float opacity)
        function sdl_set_window_opacity(window, opacity) bind(c, name='SDL_SetWindowOpacity')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: window
            real(c_float), intent(in), value :: opacity
            logical(c_bool)                  :: sdl_set_window_opacity
        end function sdl_set_window_opacity

        ! bool SDL_SetWindowParent(SDL_Window *window, SDL_Window *parent)
        function sdl_set_window_parent(window, parent) bind(c, name='SDL_SetWindowParent')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            type(c_ptr), intent(in), value :: parent
            logical(c_bool)                :: sdl_set_window_parent
        end function sdl_set_window_parent

        ! bool SDL_SetWindowPosition(SDL_Window *window, int x, int y)
        function sdl_set_window_position(window, x, y) bind(c, name='SDL_SetWindowPosition')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: window
            integer(c_int), intent(in), value :: x
            integer(c_int), intent(in), value :: y
            logical(c_bool)                   :: sdl_set_window_position
        end function sdl_set_window_position

        ! bool SDL_SetWindowProgressState(SDL_Window *window, SDL_ProgressState state)
        function sdl_set_window_progress_state(window, state) bind(c, name='SDL_SetWindowProgressState')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: window
            integer(c_int), intent(in), value :: state
            logical(c_bool)                   :: sdl_set_window_progress_state
        end function sdl_set_window_progress_state

        ! bool SDL_SetWindowProgressValue(SDL_Window *window, float value)
        function sdl_set_window_progress_value(window, value) bind(c, name='SDL_SetWindowProgressValue')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: window
            real(c_float), intent(in), value :: value
            logical(c_bool)                  :: sdl_set_window_progress_value
        end function sdl_set_window_progress_value

        ! bool SDL_SetWindowResizable(SDL_Window *window, bool resizable)
        function sdl_set_window_resizable(window, resizable) bind(c, name='SDL_SetWindowResizable')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr),     intent(in), value :: window
            logical(c_bool), intent(in), value :: resizable
            logical(c_bool)                    :: sdl_set_window_resizable
        end function sdl_set_window_resizable

        ! bool SDL_SetWindowShape(SDL_Window *window, SDL_Surface *shape)
        function sdl_set_window_shape(window, shape) bind(c, name='SDL_SetWindowShape')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            type(c_ptr), intent(in), value :: shape
            logical(c_bool)                :: sdl_set_window_shape
        end function sdl_set_window_shape

        ! bool SDL_SetWindowSize(SDL_Window *window, int w, int h)
        function sdl_set_window_size(window, w, h) bind(c, name='SDL_SetWindowSize')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: window
            integer(c_int), intent(in), value :: w
            integer(c_int), intent(in), value :: h
            logical(c_bool)                   :: sdl_set_window_size
        end function sdl_set_window_size

        ! bool SDL_SetWindowSurfaceVSync(SDL_Window *window, int vsync)
        function sdl_set_window_surface_vsync(window, vsync) bind(c, name='SDL_SetWindowSurfaceVSync')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: window
            integer(c_int), intent(in), value :: vsync
            logical(c_bool)                   :: sdl_set_window_surface_vsync
        end function sdl_set_window_surface_vsync

        ! bool SDL_SetWindowTitle(SDL_Window *window, const char *title)
        function sdl_set_window_title(window, title) bind(c, name='SDL_SetWindowTitle')
            import :: c_bool, c_char, c_ptr
            implicit none
            type(c_ptr),       intent(in), value :: window
            character(c_char), intent(in)        :: title
            logical(c_bool)                      :: sdl_set_window_title
        end function sdl_set_window_title

        ! bool SDL_ShowWindow(SDL_Window *window)
        function sdl_show_window(window) bind(c, name='SDL_ShowWindow')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            logical(c_bool)                :: sdl_show_window
        end function sdl_show_window

        ! bool SDL_ShowWindowSystemMenu(SDL_Window *window, int x, int y)
        function sdl_show_window_system_menu(window, x, y) bind(c, name='SDL_ShowWindowSystemMenu')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: window
            integer(c_int), intent(in), value :: x
            integer(c_int), intent(in), value :: y
            logical(c_bool)                   :: sdl_show_window_system_menu
        end function sdl_show_window_system_menu

        ! bool SDL_SyncWindow(SDL_Window *window)
        function sdl_sync_window(window) bind(c, name='SDL_SyncWindow')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            logical(c_bool)                :: sdl_sync_window
        end function sdl_sync_window

        ! bool SDL_UpdateWindowSurface(SDL_Window *window)
        function sdl_update_window_surface(window) bind(c, name='SDL_UpdateWindowSurface')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            logical(c_bool)                :: sdl_update_window_surface
        end function sdl_update_window_surface

        ! bool SDL_UpdateWindowSurfaceRects(SDL_Window *window, const SDL_Rect *rects, int numrects)
        function sdl_update_window_surface_rects(window, rects, numrects) bind(c, name='SDL_UpdateWindowSurfaceRects')
            import :: c_bool, c_int, c_ptr, sdl_rect
            implicit none
            type(c_ptr),    intent(in), value :: window
            type(sdl_rect), intent(in)        :: rects
            integer(c_int), intent(in), value :: numrects
            logical(c_bool)                   :: sdl_update_window_surface_rects
        end function sdl_update_window_surface_rects

        ! bool SDL_WindowHasSurface(SDL_Window *window)
        function sdl_window_has_surface(window) bind(c, name='SDL_WindowHasSurface')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: window
            logical(c_bool)                :: sdl_window_has_surface
        end function sdl_window_has_surface
    end interface
end module sdl3_video
