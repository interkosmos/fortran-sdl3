! Author:  Philipp Engel
! Licence: ISC
module sdl3_camera
    !! Auto-generated Fortran 2023 interface bindings to `SDL3/SDL_camera.h`.
    use :: sdl3_properties
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    integer, parameter, public :: sdl_camera_id = uint32 !! SDL_CameraID

    ! struct SDL_CameraSpec
    type, bind(c), public :: sdl_camera_spec
        integer(c_unsigned) :: format                = 0 !! Frame format.
        integer(c_unsigned) :: colorspace            = 0 !! Frame colorspace.
        integer(c_int)      :: width                 = 0 !! Frame width.
        integer(c_int)      :: height                = 0 !! Frame height.
        integer(c_int)      :: framerate_numerator   = 0 !! Frame rate numerator ((num / denom) == FPS, (denom / num) == duration in seconds).
        integer(c_int)      :: framerate_denominator = 0 !! Frame rate denominator ((num / denom) == FPS, (denom / num) == duration in seconds).
    end type sdl_camera_spec

    ! enum SDL_CameraPosition
    integer(c_int), parameter, public :: SDL_CAMERA_POSITION_UNKNOWN      = 0
    integer(c_int), parameter, public :: SDL_CAMERA_POSITION_FRONT_FACING = 1
    integer(c_int), parameter, public :: SDL_CAMERA_POSITION_BACK_FACING  = 2

    ! enum SDL_CameraPermissionState
    integer(c_int), parameter, public :: SDL_CAMERA_PERMISSION_STATE_DENIED   = -1
    integer(c_int), parameter, public :: SDL_CAMERA_PERMISSION_STATE_PENDING  =  0
    integer(c_int), parameter, public :: SDL_CAMERA_PERMISSION_STATE_APPROVED =  1

    public :: sdl_acquire_camera_frame
    public :: sdl_close_camera
    public :: sdl_get_camera_driver_
    public :: sdl_get_camera_format
    public :: sdl_get_camera_id
    public :: sdl_get_camera_name
    public :: sdl_get_camera_permission_state
    public :: sdl_get_camera_position
    public :: sdl_get_camera_properties
    public :: sdl_get_camera_supported_formats
    public :: sdl_get_cameras
    public :: sdl_get_current_camera_driver_
    public :: sdl_get_num_camera_drivers
    public :: sdl_open_camera
    public :: sdl_release_camera_frame

    interface
        ! SDL_Surface *SDL_AcquireCameraFrame(SDL_Camera *camera, Uint64 *timestampNS)
        function sdl_acquire_camera_frame(camera, timestamp_ns) bind(c, name='SDL_AcquireCameraFrame')
            import :: c_ptr, uint64
            implicit none
            type(c_ptr),     intent(in), value :: camera
            integer(uint64), intent(out)       :: timestamp_ns
            type(c_ptr)                        :: sdl_acquire_camera_frame
        end function sdl_acquire_camera_frame

        ! void SDL_CloseCamera(SDL_Camera *camera)
        subroutine sdl_close_camera(camera) bind(c, name='SDL_CloseCamera')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: camera
        end subroutine sdl_close_camera

        ! const char *SDL_GetCameraDriver(int index)
        function sdl_get_camera_driver_(index) bind(c, name='SDL_GetCameraDriver')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(in), value :: index
            type(c_ptr)                       :: sdl_get_camera_driver_
        end function sdl_get_camera_driver_

        ! bool SDL_GetCameraFormat(SDL_Camera *camera, SDL_CameraSpec *spec)
        function sdl_get_camera_format(camera, spec) bind(c, name='SDL_GetCameraFormat')
            import :: c_bool, c_ptr, sdl_camera_spec
            implicit none
            type(c_ptr),           intent(in), value :: camera
            type(sdl_camera_spec), intent(out)       :: spec
            logical(c_bool)                          :: sdl_get_camera_format
        end function sdl_get_camera_format

        ! SDL_CameraID SDL_GetCameraID(SDL_Camera *camera)
        function sdl_get_camera_id(camera) bind(c, name='SDL_GetCameraID')
            import :: c_ptr, sdl_camera_id
            implicit none
            type(c_ptr), intent(in), value :: camera
            integer(sdl_camera_id)         :: sdl_get_camera_id
        end function sdl_get_camera_id

        ! const char *SDL_GetCameraName(SDL_CameraID instance_id)
        function sdl_get_camera_name(instance_id) bind(c, name='SDL_GetCameraName')
            import :: c_ptr, sdl_camera_id
            implicit none
            integer(sdl_camera_id), intent(in), value :: instance_id
            type(c_ptr)                               :: sdl_get_camera_name
        end function sdl_get_camera_name

        ! SDL_CameraPermissionState SDL_GetCameraPermissionState(SDL_Camera *camera)
        function sdl_get_camera_permission_state(camera) bind(c, name='SDL_GetCameraPermissionState')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: camera
            integer(c_int)                 :: sdl_get_camera_permission_state
        end function sdl_get_camera_permission_state

        ! SDL_CameraPosition SDL_GetCameraPosition(SDL_CameraID instance_id)
        function sdl_get_camera_position(instance_id) bind(c, name='SDL_GetCameraPosition')
            import :: c_int, sdl_camera_id
            implicit none
            integer(sdl_camera_id), intent(in), value :: instance_id
            integer(c_int)                            :: sdl_get_camera_position
        end function sdl_get_camera_position

        ! SDL_PropertiesID SDL_GetCameraProperties(SDL_Camera *camera)
        function sdl_get_camera_properties(camera) bind(c, name='SDL_GetCameraProperties')
            import :: c_ptr, sdl_properties_id
            implicit none
            type(c_ptr), intent(in), value :: camera
            integer(sdl_properties_id)     :: sdl_get_camera_properties
        end function sdl_get_camera_properties

        ! SDL_CameraSpec **SDL_GetCameraSupportedFormats(SDL_CameraID instance_id, int *count)
        function sdl_get_camera_supported_formats(instance_id, count) bind(c, name='SDL_GetCameraSupportedFormats')
            import :: c_int, c_ptr, sdl_camera_id
            implicit none
            integer(sdl_camera_id), intent(in), value :: instance_id
            integer(c_int),         intent(out)       :: count
            type(c_ptr)                               :: sdl_get_camera_supported_formats
        end function sdl_get_camera_supported_formats

        ! SDL_CameraID *SDL_GetCameras(int *count)
        function sdl_get_cameras(count) bind(c, name='SDL_GetCameras')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(out) :: count
            type(c_ptr)                 :: sdl_get_cameras
        end function sdl_get_cameras

        ! const char *SDL_GetCurrentCameraDriver(void)
        function sdl_get_current_camera_driver_() bind(c, name='SDL_GetCurrentCameraDriver')
            import :: c_ptr
            implicit none
            type(c_ptr) :: sdl_get_current_camera_driver_
        end function sdl_get_current_camera_driver_

        ! int SDL_GetNumCameraDrivers(void)
        function sdl_get_num_camera_drivers() bind(c, name='SDL_GetNumCameraDrivers')
            import :: c_int
            implicit none
            integer(c_int) :: sdl_get_num_camera_drivers
        end function sdl_get_num_camera_drivers

        ! SDL_Camera *SDL_OpenCamera(SDL_CameraID instance_id, const SDL_CameraSpec *spec)
        function sdl_open_camera(instance_id, spec) bind(c, name='SDL_OpenCamera')
            import :: c_ptr, sdl_camera_id, sdl_camera_spec
            implicit none
            integer(sdl_camera_id), intent(in), value    :: instance_id
            type(sdl_camera_spec),  intent(in), optional :: spec
            type(c_ptr)                                  :: sdl_open_camera
        end function sdl_open_camera

        ! void SDL_ReleaseCameraFrame(SDL_Camera *camera, SDL_Surface *frame)
        subroutine sdl_release_camera_frame(camera, frame) bind(c, name='SDL_ReleaseCameraFrame')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: camera
            type(c_ptr), intent(in), value :: frame
        end subroutine sdl_release_camera_frame
    end interface

    public :: sdl_get_camera_driver
    public :: sdl_get_current_camera_driver
contains
    function sdl_get_camera_driver(index) result(str)
        integer, intent(in)       :: index
        character(:), allocatable :: str

        type(c_ptr) :: ptr

        ptr = sdl_get_camera_driver_(index)
        call c_f_str_ptr(ptr, str)
    end function sdl_get_camera_driver

    function sdl_get_current_camera_driver() result(str)
        character(:), allocatable :: str

        type(c_ptr) :: ptr

        ptr = sdl_get_current_camera_driver_()
        call c_f_str_ptr(ptr, str)
    end function sdl_get_current_camera_driver
end module sdl3_camera
