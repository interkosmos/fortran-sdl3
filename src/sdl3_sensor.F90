! Author:  Philipp Engel
! Licence: ISC
module sdl3_sensor
    use :: sdl3_properties
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    integer, parameter, public :: sdl_sensor_id = uint32 ! SDL_SensorID

    real(c_float), parameter, public :: SDL_STANDARD_GRAVITY = 9.80665

    ! enum SDL_SensorType
    integer(c_int), parameter, public :: SDL_SENSOR_INVALID = -1 !! Returned for an invalid sensor.
    integer(c_int), parameter, public :: SDL_SENSOR_UNKNOWN =  0 !! Unknown sensor type.
    integer(c_int), parameter, public :: SDL_SENSOR_ACCEL   =  1 !! Accelerometer.
    integer(c_int), parameter, public :: SDL_SENSOR_GYRO    =  2 !! Gyroscope.
    integer(c_int), parameter, public :: SDL_SENSOR_ACCEL_L =  3 !! Accelerometer for left Joy-Con controller and Wii nunchuk.
    integer(c_int), parameter, public :: SDL_SENSOR_GYRO_L  =  4 !! Gyroscope for left Joy-Con controller.
    integer(c_int), parameter, public :: SDL_SENSOR_ACCEL_R =  5 !! Accelerometer for right Joy-Con controller.
    integer(c_int), parameter, public :: SDL_SENSOR_GYRO_R  =  6 !! Gyroscope for right Joy-Con controller.
    integer(c_int), parameter, public :: SDL_SENSOR_COUNT   =  7

    public :: sdl_close_sensor
    public :: sdl_get_sensor_data
    public :: sdl_get_sensor_from_id
    public :: sdl_get_sensor_id
    public :: sdl_get_sensor_name_
    public :: sdl_get_sensor_name_for_id_
    public :: sdl_get_sensor_non_portable_type
    public :: sdl_get_sensor_non_portable_type_for_id
    public :: sdl_get_sensor_properties
    public :: sdl_get_sensor_type
    public :: sdl_get_sensor_type_for_id
    public :: sdl_get_sensors
    public :: sdl_open_sensor
    public :: sdl_update_sensors

    interface
        ! void SDL_CloseSensor(SDL_Sensor *sensor)
        subroutine sdl_close_sensor(sensor) bind(c, name='SDL_CloseSensor')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: sensor
        end subroutine sdl_close_sensor

        ! bool SDL_GetSensorData(SDL_Sensor *sensor, float *data, int num_values)
        function sdl_get_sensor_data(sensor, data, num_values) bind(c, name='SDL_GetSensorData')
            import :: c_bool, c_float, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: sensor
            real(c_float),  intent(inout)     :: data
            integer(c_int), intent(in), value :: num_values
            logical(c_bool)                   :: sdl_get_sensor_data
        end function sdl_get_sensor_data

        ! SDL_Sensor *SDL_GetSensorFromID(SDL_SensorID instance_id)
        function sdl_get_sensor_from_id(instance_id) bind(c, name='SDL_GetSensorFromID')
            import :: c_ptr, sdl_sensor_id
            implicit none
            integer(sdl_sensor_id), intent(in), value :: instance_id
            type(c_ptr)                               :: sdl_get_sensor_from_id
        end function sdl_get_sensor_from_id

        ! SDL_SensorID SDL_GetSensorID(SDL_Sensor *sensor)
        function sdl_get_sensor_id(sensor) bind(c, name='SDL_GetSensorID')
            import :: c_ptr, sdl_sensor_id
            implicit none
            type(c_ptr), intent(in), value :: sensor
            integer(sdl_sensor_id)         :: sdl_get_sensor_id
        end function sdl_get_sensor_id

        ! const char *SDL_GetSensorName(SDL_Sensor *sensor)
        function sdl_get_sensor_name_(sensor) bind(c, name='SDL_GetSensorName')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: sensor
            type(c_ptr)                    :: sdl_get_sensor_name_
        end function sdl_get_sensor_name_

        ! const char *SDL_GetSensorNameForID(SDL_SensorID instance_id)
        function sdl_get_sensor_name_for_id_(instance_id) bind(c, name='SDL_GetSensorNameForID')
            import :: c_ptr, sdl_sensor_id
            implicit none
            integer(sdl_sensor_id), intent(in), value :: instance_id
            type(c_ptr)                               :: sdl_get_sensor_name_for_id_
        end function sdl_get_sensor_name_for_id_

        ! int SDL_GetSensorNonPortableType(SDL_Sensor *sensor)
        function sdl_get_sensor_non_portable_type(sensor) bind(c, name='SDL_GetSensorNonPortableType')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: sensor
            integer(c_int)                 :: sdl_get_sensor_non_portable_type
        end function sdl_get_sensor_non_portable_type

        ! int SDL_GetSensorNonPortableTypeForID(SDL_SensorID instance_id)
        function sdl_get_sensor_non_portable_type_for_id(instance_id) bind(c, name='SDL_GetSensorNonPortableTypeForID')
            import :: c_int, sdl_sensor_id
            implicit none
            integer(sdl_sensor_id), intent(in), value :: instance_id
            integer(c_int)                            :: sdl_get_sensor_non_portable_type_for_id
        end function sdl_get_sensor_non_portable_type_for_id

        ! SDL_PropertiesID SDL_GetSensorProperties(SDL_Sensor *sensor)
        function sdl_get_sensor_properties(sensor) bind(c, name='SDL_GetSensorProperties')
            import :: c_ptr, sdl_properties_id
            implicit none
            type(c_ptr), intent(in), value :: sensor
            integer(sdl_properties_id)     :: sdl_get_sensor_properties
        end function sdl_get_sensor_properties

        ! SDL_SensorType SDL_GetSensorType(SDL_Sensor *sensor)
        function sdl_get_sensor_type(sensor) bind(c, name='SDL_GetSensorType')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: sensor
            integer(c_int)                 :: sdl_get_sensor_type
        end function sdl_get_sensor_type

        ! SDL_SensorType SDL_GetSensorTypeForID(SDL_SensorID instance_id)
        function sdl_get_sensor_type_for_id(instance_id) bind(c, name='SDL_GetSensorTypeForID')
            import :: c_int, sdl_sensor_id
            implicit none
            integer(sdl_sensor_id), intent(in), value :: instance_id
            integer(c_int)                            :: sdl_get_sensor_type_for_id
        end function sdl_get_sensor_type_for_id

        ! SDL_SensorID *SDL_GetSensors(int *count)
        function sdl_get_sensors(count) bind(c, name='SDL_GetSensors')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(out) :: count
            type(c_ptr)                 :: sdl_get_sensors
        end function sdl_get_sensors

        ! SDL_Sensor *SDL_OpenSensor(SDL_SensorID instance_id)
        function sdl_open_sensor(instance_id) bind(c, name='SDL_OpenSensor')
            import :: c_ptr, sdl_sensor_id
            implicit none
            integer(sdl_sensor_id), intent(in), value :: instance_id
            type(c_ptr)                               :: sdl_open_sensor
        end function sdl_open_sensor

        ! void SDL_UpdateSensors(void)
        subroutine sdl_update_sensors() bind(c, name='SDL_UpdateSensors')
        end subroutine sdl_update_sensors
    end interface

    public :: sdl_get_sensor_name
    public :: sdl_get_sensor_name_for_id
contains
    function sdl_get_sensor_name(sensor) result(str)
        type(c_ptr), intent(in)   :: sensor
        character(:), allocatable :: str

        type(c_ptr) :: ptr

        ptr = sdl_get_sensor_name_(sensor)
        call c_f_str_ptr(ptr, str)
    end function sdl_get_sensor_name

    function sdl_get_sensor_name_for_id(instance_id) result(str)
        integer(sdl_sensor_id), intent(in) :: instance_id
        character(:), allocatable          :: str

        type(c_ptr) :: ptr

        ptr = sdl_get_sensor_name_for_id_(instance_id)
        call c_f_str_ptr(ptr, str)
    end function sdl_get_sensor_name_for_id
end module sdl3_sensor
