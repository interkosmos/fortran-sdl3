! Author:  Philipp Engel
! Licence: ISC
module sdl3_audio
    use :: sdl3_properties
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    integer, parameter, public :: sdl_audio_device_id = uint32 ! SDL_AudioDeviceID

    integer(c_unsigned), parameter, public :: SDL_AUDIO_MASK_BITSIZE    = int(z'FF', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_AUDIO_MASK_FLOAT      = shiftl(1_c_unsigned,  8)
    integer(c_unsigned), parameter, public :: SDL_AUDIO_MASK_BIG_ENDIAN = shiftl(1_c_unsigned, 12)
    integer(c_unsigned), parameter, public :: SDL_AUDIO_MASK_SIGNED     = shiftl(1_c_unsigned, 15)

    ! enum SDL_AudioFormat
    integer(c_unsigned), parameter, public :: SDL_AUDIO_UNKNOWN = int(z'0000', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_AUDIO_U8      = int(z'0008', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_AUDIO_S8      = int(z'8008', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_AUDIO_S16LE   = int(z'8010', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_AUDIO_S16BE   = int(z'9010', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_AUDIO_S32LE   = int(z'8020', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_AUDIO_S32BE   = int(z'9020', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_AUDIO_F32LE   = int(z'8120', c_unsigned)
    integer(c_unsigned), parameter, public :: SDL_AUDIO_F32BE   = int(z'9120', c_unsigned)

#if SDL_BYTEORDER == SDL_BIG_ENDIAN

    integer(c_unsigned), parameter, public :: SDL_AUDIO_S16     = SDL_AUDIO_S16BE
    integer(c_unsigned), parameter, public :: SDL_AUDIO_S32     = SDL_AUDIO_S32BE
    integer(c_unsigned), parameter, public :: SDL_AUDIO_F32     = SDL_AUDIO_F32BE

#else

    integer(c_unsigned), parameter, public :: SDL_AUDIO_S16     = SDL_AUDIO_S16LE
    integer(c_unsigned), parameter, public :: SDL_AUDIO_S32     = SDL_AUDIO_S32LE
    integer(c_unsigned), parameter, public :: SDL_AUDIO_F32     = SDL_AUDIO_F32LE

#endif

    integer(sdl_audio_device_id), parameter, public :: SDL_AUDIO_DEVICE_DEFAULT_PLAYBACK  = int(z'FFFFFFFF', sdl_audio_device_id)
    integer(sdl_audio_device_id), parameter, public :: SDL_AUDIO_DEVICE_DEFAULT_RECORDING = int(z'FFFFFFFE', sdl_audio_device_id)

    character(*), parameter, public :: SDL_PROP_AUDIOSTREAM_AUTO_CLEANUP_BOOLEAN = 'SDL.audiostream.auto_cleanup'

    ! struct SDL_AudioSpec
    type, bind(c), public :: sdl_audio_spec
        integer(c_int) :: format   = 0 !! Audio data format.
        integer(c_int) :: channels = 0 !! Number of channels: 1 mono, 2 stereo, etc.
        integer(c_int) :: freq     = 0 !! sample rate: sample frames per second.
    end type sdl_audio_spec

    abstract interface
        ! void SDL_AudioPostmixCallback(void *userdata, const SDL_AudioSpec *spec, float *buffer, int buflen)
        subroutine sdl_audio_postmix_callback(user_data, spec, buffer, buf_len) bind(c)
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: user_data
            type(c_ptr),    intent(in), value :: spec
            type(c_ptr),    intent(in), value :: buffer
            integer(c_int), intent(in), value :: buf_len
        end subroutine sdl_audio_postmix_callback

        ! void SDL_AudioStreamCallback(void *userdata, SDL_AudioStream *stream, int additional_amount, int total_amount)
        subroutine sdl_audio_stream_callback(user_data, stream, additional_amount, total_amount) bind(c)
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: user_data
            type(c_ptr),    intent(in), value :: stream
            integer(c_int), intent(in), value :: additional_amount
            integer(c_int), intent(in), value :: total_amount
        end subroutine sdl_audio_stream_callback

        ! void SDL_AudioStreamDataCompleteCallback(void *userdata, const void *buf, int buflen)
        subroutine sdl_audio_stream_data_complete_callback(user_data, buf, buf_len) bind(c)
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: user_data
            type(c_ptr),    intent(in), value :: buf
            integer(c_int), intent(in), value :: buf_len
        end subroutine sdl_audio_stream_data_complete_callback
    end interface

    public :: sdl_audio_device_paused
    public :: sdl_audio_stream_device_paused
    public :: sdl_bind_audio_stream
    public :: sdl_bind_audio_streams
    public :: sdl_clear_audio_stream
    public :: sdl_close_audio_device
    public :: sdl_convert_audio_samples
    public :: sdl_create_audio_stream
    public :: sdl_destroy_audio_stream
    public :: sdl_flush_audio_stream
    public :: sdl_get_audio_device_channel_map
    public :: sdl_get_audio_device_format
    public :: sdl_get_audio_device_gain
    public :: sdl_get_audio_device_name_
    public :: sdl_get_audio_driver_
    public :: sdl_get_audio_format_name_
    public :: sdl_get_audio_playback_devices
    public :: sdl_get_audio_recording_devices
    public :: sdl_get_audio_stream_available
    public :: sdl_get_audio_stream_data
    public :: sdl_get_audio_stream_device
    public :: sdl_get_audio_stream_format
    public :: sdl_get_audio_stream_frequency_ratio
    public :: sdl_get_audio_stream_gain
    public :: sdl_get_audio_stream_input_channel_map
    public :: sdl_get_audio_stream_output_channel_map
    public :: sdl_get_audio_stream_properties
    public :: sdl_get_audio_stream_queued
    public :: sdl_get_current_audio_driver_
    public :: sdl_get_num_audio_drivers
    public :: sdl_get_silence_value_for_format
    public :: sdl_is_audio_device_physical
    public :: sdl_is_audio_device_playback
    public :: sdl_load_wav
    public :: sdl_load_wav_io
    public :: sdl_lock_audio_stream
    public :: sdl_mix_audio
    public :: sdl_open_audio_device
    public :: sdl_open_audio_device_stream
    public :: sdl_pause_audio_device
    public :: sdl_pause_audio_stream_device
    public :: sdl_put_audio_stream_data
    public :: sdl_put_audio_stream_data_no_copy
    public :: sdl_put_audio_stream_planar_data
    public :: sdl_resume_audio_device
    public :: sdl_resume_audio_stream_device
    public :: sdl_set_audio_device_gain
    public :: sdl_set_audio_postmix_callback
    public :: sdl_set_audio_stream_format
    public :: sdl_set_audio_stream_frequency_ratio
    public :: sdl_set_audio_stream_gain
    public :: sdl_set_audio_stream_get_callback
    public :: sdl_set_audio_stream_input_channel_map
    public :: sdl_set_audio_stream_output_channel_map
    public :: sdl_set_audio_stream_put_callback
    public :: sdl_unbind_audio_stream
    public :: sdl_unbind_audio_streams
    public :: sdl_unlock_audio_stream

    interface
        ! bool SDL_AudioDevicePaused(SDL_AudioDeviceID devid)
        function sdl_audio_device_paused(dev_id) bind(c, name='SDL_AudioDevicePaused')
            import :: c_bool, sdl_audio_device_id
            implicit none
            integer(sdl_audio_device_id), intent(in), value :: dev_id
            logical(c_bool)                                 :: sdl_audio_device_paused
        end function sdl_audio_device_paused

        ! bool SDL_AudioStreamDevicePaused(SDL_AudioStream *stream)
        function sdl_audio_stream_device_paused(stream) bind(c, name='SDL_AudioStreamDevicePaused')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: stream
            logical(c_bool)                :: sdl_audio_stream_device_paused
        end function sdl_audio_stream_device_paused

        ! bool SDL_BindAudioStream(SDL_AudioDeviceID devid, SDL_AudioStream *stream)
        function sdl_bind_audio_stream(dev_id, stream) bind(c, name='SDL_BindAudioStream')
            import :: c_bool, c_ptr, sdl_audio_device_id
            implicit none
            integer(sdl_audio_device_id), intent(in), value :: dev_id
            type(c_ptr),                  intent(in), value :: stream
            logical(c_bool) :: sdl_bind_audio_stream
        end function sdl_bind_audio_stream

        ! bool SDL_BindAudioStreams(SDL_AudioDeviceID devid, SDL_AudioStream *const *streams, int num_streams)
        function sdl_bind_audio_streams(dev_id, num_streams) bind(c, name='SDL_BindAudioStreams')
            import :: c_bool, c_int, sdl_audio_device_id
            implicit none
            integer(sdl_audio_device_id), intent(in), value :: dev_id
            integer(c_int),               intent(in), value :: num_streams
            logical(c_bool)                                 :: sdl_bind_audio_streams
        end function sdl_bind_audio_streams

        ! bool SDL_ClearAudioStream(SDL_AudioStream *stream)
        function sdl_clear_audio_stream(stream) bind(c, name='SDL_ClearAudioStream')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: stream
            logical(c_bool)                :: sdl_clear_audio_stream
        end function sdl_clear_audio_stream

        ! void SDL_CloseAudioDevice(SDL_AudioDeviceID devid)
        subroutine sdl_close_audio_device(dev_id) bind(c, name='SDL_CloseAudioDevice')
            import :: sdl_audio_device_id
            implicit none
            integer(sdl_audio_device_id), intent(in), value :: dev_id
        end subroutine sdl_close_audio_device

        ! bool SDL_ConvertAudioSamples(const SDL_AudioSpec *src_spec, const Uint8 *src_data, int src_len, const SDL_AudioSpec *dst_spec, Uint8 **dst_data, int *dst_len)
        function sdl_convert_audio_samples(src_spec, src_data, src_len, dst_spec, dst_data, dst_len) bind(c, name='SDL_ConvertAudioSamples')
            import :: c_bool, c_int, c_ptr, sdl_audio_spec, uint8
            implicit none
            type(sdl_audio_spec), intent(in)        :: src_spec
            integer(uint8),       intent(out)       :: src_data
            integer(c_int),       intent(in), value :: src_len
            type(sdl_audio_spec), intent(in)        :: dst_spec
            type(c_ptr),          intent(out)       :: dst_data
            integer(c_int),       intent(out)       :: dst_len
            logical(c_bool)                         :: sdl_convert_audio_samples
        end function sdl_convert_audio_samples

        ! SDL_AudioStream *SDL_CreateAudioStream(const SDL_AudioSpec *src_spec, const SDL_AudioSpec *dst_spec)
        function sdl_create_audio_stream(src_spec, dst_spec) bind(c, name='SDL_CreateAudioStream')
            import :: c_ptr, sdl_audio_spec
            implicit none
            type(sdl_audio_spec), intent(in) :: src_spec
            type(sdl_audio_spec), intent(in) :: dst_spec
            type(c_ptr)                      :: sdl_create_audio_stream
        end function sdl_create_audio_stream

        ! void SDL_DestroyAudioStream(SDL_AudioStream *stream)
        subroutine sdl_destroy_audio_stream(stream) bind(c, name='SDL_DestroyAudioStream')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: stream
        end subroutine sdl_destroy_audio_stream

        ! bool SDL_FlushAudioStream(SDL_AudioStream *stream)
        function sdl_flush_audio_stream(stream) bind(c, name='SDL_FlushAudioStream')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: stream
            logical(c_bool)                :: sdl_flush_audio_stream
        end function sdl_flush_audio_stream

        ! int *SDL_GetAudioDeviceChannelMap(SDL_AudioDeviceID devid, int *count)
        function sdl_get_audio_device_channel_map(dev_id, count) bind(c, name='SDL_GetAudioDeviceChannelMap')
            import :: c_int, c_ptr, sdl_audio_device_id
            implicit none
            integer(sdl_audio_device_id), intent(in), value :: dev_id
            integer(c_int),               intent(out)       :: count
            type(c_ptr)                                     :: sdl_get_audio_device_channel_map
        end function sdl_get_audio_device_channel_map

        ! bool SDL_GetAudioDeviceFormat(SDL_AudioDeviceID devid, SDL_AudioSpec *spec, int *sample_frames)
        function sdl_get_audio_device_format(dev_id, spec, sample_frames) bind(c, name='SDL_GetAudioDeviceFormat')
            import :: c_bool, c_int, sdl_audio_device_id, sdl_audio_spec
            implicit none
            integer(sdl_audio_device_id), intent(in), value :: dev_id
            type(sdl_audio_spec),         intent(out)       :: spec
            integer(c_int),               intent(out)       :: sample_frames
            logical(c_bool)                                 :: sdl_get_audio_device_format
        end function sdl_get_audio_device_format

        ! float SDL_GetAudioDeviceGain(SDL_AudioDeviceID devid)
        function sdl_get_audio_device_gain(dev_id) bind(c, name='SDL_GetAudioDeviceGain')
            import :: c_float, sdl_audio_device_id
            implicit none
            integer(sdl_audio_device_id), intent(in), value :: dev_id
            real(c_float)                                   :: sdl_get_audio_device_gain
        end function sdl_get_audio_device_gain

        ! const char *SDL_GetAudioDeviceName(SDL_AudioDeviceID devid)
        function sdl_get_audio_device_name_(dev_id) bind(c, name='SDL_GetAudioDeviceName')
            import :: c_ptr, sdl_audio_device_id
            implicit none
            integer(sdl_audio_device_id), intent(in), value :: dev_id
            type(c_ptr)                                     :: sdl_get_audio_device_name_
        end function sdl_get_audio_device_name_

        ! const char *SDL_GetAudioDriver(int index)
        function sdl_get_audio_driver_(index) bind(c, name='SDL_GetAudioDriver')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(in), value :: index
            type(c_ptr)                       :: sdl_get_audio_driver_
        end function sdl_get_audio_driver_

        ! const char *SDL_GetAudioFormatName(SDL_AudioFormat format)
        function sdl_get_audio_format_name_(format) bind(c, name='SDL_GetAudioFormatName')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(in), value :: format
            type(c_ptr)                       :: sdl_get_audio_format_name_
        end function sdl_get_audio_format_name_

        ! SDL_AudioDeviceID *SDL_GetAudioPlaybackDevices(int *count)
        function sdl_get_audio_playback_devices(count) bind(c, name='SDL_GetAudioPlaybackDevices')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(out) :: count
            type(c_ptr)                 :: sdl_get_audio_playback_devices
        end function sdl_get_audio_playback_devices

        ! SDL_AudioDeviceID *SDL_GetAudioRecordingDevices(int *count)
        function sdl_get_audio_recording_devices(count) bind(c, name='SDL_GetAudioRecordingDevices')
            import :: c_int, c_ptr
            implicit none
            integer(c_int), intent(out) :: count
            type(c_ptr)                 :: sdl_get_audio_recording_devices
        end function sdl_get_audio_recording_devices

        ! int SDL_GetAudioStreamAvailable(SDL_AudioStream *stream)
        function sdl_get_audio_stream_available(stream) bind(c, name='SDL_GetAudioStreamAvailable')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: stream
            integer(c_int)                 :: sdl_get_audio_stream_available
        end function sdl_get_audio_stream_available

        ! int SDL_GetAudioStreamData(SDL_AudioStream *stream, void *buf, int len)
        function sdl_get_audio_stream_data(stream, buf, len) bind(c, name='SDL_GetAudioStreamData')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: stream
            type(c_ptr),    intent(in), value :: buf
            integer(c_int), intent(in), value :: len
            integer(c_int)                    :: sdl_get_audio_stream_data
        end function sdl_get_audio_stream_data

        ! SDL_AudioDeviceID SDL_GetAudioStreamDevice(SDL_AudioStream *stream)
        function sdl_get_audio_stream_device(stream) bind(c, name='SDL_GetAudioStreamDevice')
            import :: c_ptr, sdl_audio_device_id
            implicit none
            type(c_ptr), intent(in), value :: stream
            integer(sdl_audio_device_id)   :: sdl_get_audio_stream_device
        end function sdl_get_audio_stream_device

        ! bool SDL_GetAudioStreamFormat(SDL_AudioStream *stream, SDL_AudioSpec *src_spec, SDL_AudioSpec *dst_spec)
        function sdl_get_audio_stream_format(stream, src_spec, dst_spec) bind(c, name='SDL_GetAudioStreamFormat')
            import :: c_bool, c_ptr, sdl_audio_spec
            implicit none
            type(c_ptr),          intent(in), value :: stream
            type(sdl_audio_spec), intent(out)       :: src_spec
            type(sdl_audio_spec), intent(out)       :: dst_spec
            logical(c_bool)                         :: sdl_get_audio_stream_format
        end function sdl_get_audio_stream_format

        ! float SDL_GetAudioStreamFrequencyRatio(SDL_AudioStream *stream)
        function sdl_get_audio_stream_frequency_ratio(stream) bind(c, name='SDL_GetAudioStreamFrequencyRatio')
            import :: c_float, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: stream
            real(c_float)                  :: sdl_get_audio_stream_frequency_ratio
        end function sdl_get_audio_stream_frequency_ratio

        ! float SDL_GetAudioStreamGain(SDL_AudioStream *stream)
        function sdl_get_audio_stream_gain(stream) bind(c, name='SDL_GetAudioStreamGain')
            import :: c_float, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: stream
            real(c_float)                  :: sdl_get_audio_stream_gain
        end function sdl_get_audio_stream_gain

        ! int *SDL_GetAudioStreamInputChannelMap(SDL_AudioStream *stream, int *count)
        function sdl_get_audio_stream_input_channel_map(stream, count) bind(c, name='SDL_GetAudioStreamInputChannelMap')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: stream
            integer(c_int), intent(out)       :: count
            type(c_ptr)                       :: sdl_get_audio_stream_input_channel_map
        end function sdl_get_audio_stream_input_channel_map

        ! int *SDL_GetAudioStreamOutputChannelMap(SDL_AudioStream *stream, int *count)
        function sdl_get_audio_stream_output_channel_map(stream, count) bind(c, name='SDL_GetAudioStreamOutputChannelMap')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: stream
            integer(c_int), intent(out)       :: count
            type(c_ptr)                       :: sdl_get_audio_stream_output_channel_map
        end function sdl_get_audio_stream_output_channel_map

        ! SDL_PropertiesID SDL_GetAudioStreamProperties(SDL_AudioStream *stream)
        function sdl_get_audio_stream_properties(stream) bind(c, name='SDL_GetAudioStreamProperties')
            import :: c_ptr, sdl_properties_id
            implicit none
            type(c_ptr), intent(in), value :: stream
            integer(sdl_properties_id)     :: sdl_get_audio_stream_properties
        end function sdl_get_audio_stream_properties

        ! int SDL_GetAudioStreamQueued(SDL_AudioStream *stream)
        function sdl_get_audio_stream_queued(stream) bind(c, name='SDL_GetAudioStreamQueued')
            import :: c_int, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: stream
            integer(c_int)                 :: sdl_get_audio_stream_queued
        end function sdl_get_audio_stream_queued

        ! const char *SDL_GetCurrentAudioDriver(void)
        function sdl_get_current_audio_driver_() bind(c, name='SDL_GetCurrentAudioDriver')
            import :: c_ptr
            implicit none
            type(c_ptr) :: sdl_get_current_audio_driver_
        end function sdl_get_current_audio_driver_

        ! int SDL_GetNumAudioDrivers(void)
        function sdl_get_num_audio_drivers() bind(c, name='SDL_GetNumAudioDrivers')
            import :: c_int
            implicit none
            integer(c_int) :: sdl_get_num_audio_drivers
        end function sdl_get_num_audio_drivers

        ! int SDL_GetSilenceValueForFormat(SDL_AudioFormat format)
        function sdl_get_silence_value_for_format(format) bind(c, name='SDL_GetSilenceValueForFormat')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: format
            integer(c_int)                    :: sdl_get_silence_value_for_format
        end function sdl_get_silence_value_for_format

        ! bool SDL_IsAudioDevicePhysical(SDL_AudioDeviceID devid)
        function sdl_is_audio_device_physical(dev_id) bind(c, name='SDL_IsAudioDevicePhysical')
            import :: c_bool, sdl_audio_device_id
            implicit none
            integer(sdl_audio_device_id), intent(in), value :: dev_id
            logical(c_bool)                                 :: sdl_is_audio_device_physical
        end function sdl_is_audio_device_physical

        ! bool SDL_IsAudioDevicePlayback(SDL_AudioDeviceID devid)
        function sdl_is_audio_device_playback(dev_id) bind(c, name='SDL_IsAudioDevicePlayback')
            import :: c_bool, sdl_audio_device_id
            implicit none
            integer(sdl_audio_device_id), intent(in), value :: dev_id
            logical(c_bool)                                 :: sdl_is_audio_device_playback
        end function sdl_is_audio_device_playback

        ! bool SDL_LoadWAV(const char *path, SDL_AudioSpec *spec, Uint8 **audio_buf, Uint32 *audio_len)
        function sdl_load_wav(path, spec, audio_buf, audio_len) bind(c, name='SDL_LoadWAV')
            import :: c_bool, c_char, c_ptr, sdl_audio_spec, uint32
            implicit none
            character(c_char),    intent(in)  :: path
            type(sdl_audio_spec), intent(out) :: spec
            type(c_ptr),          intent(out) :: audio_buf
            integer(uint32),      intent(out) :: audio_len
            logical(c_bool)                   :: sdl_load_wav
        end function sdl_load_wav

        ! bool SDL_LoadWAV_IO(SDL_IOStream *src, bool closeio, SDL_AudioSpec *spec, Uint8 **audio_buf, Uint32 *audio_len)
        function sdl_load_wav_io(src, closeio, spec, audio_buf, audio_len) bind(c, name='SDL_LoadWAV_IO')
            import :: c_bool, c_ptr, sdl_audio_spec, uint32
            implicit none
            type(c_ptr),          intent(in), value :: src
            logical(c_bool),      intent(in), value :: closeio
            type(sdl_audio_spec), intent(out)       :: spec
            type(c_ptr),          intent(out)       :: audio_buf
            integer(uint32),      intent(out)       :: audio_len
            logical(c_bool)                         :: sdl_load_wav_io
        end function sdl_load_wav_io

        ! bool SDL_LockAudioStream(SDL_AudioStream *stream)
        function sdl_lock_audio_stream(stream) bind(c, name='SDL_LockAudioStream')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: stream
            logical(c_bool)                :: sdl_lock_audio_stream
        end function sdl_lock_audio_stream

        ! bool SDL_MixAudio(Uint8 *dst, const Uint8 *src, SDL_AudioFormat format, Uint32 len, float volume)
        function sdl_mix_audio(dst, src, format, len, volume) bind(c, name='SDL_MixAudio')
            import :: c_bool, c_float, c_int, uint32, uint8
            implicit none
            integer(uint8),  intent(out)       :: dst
            integer(uint8),  intent(out)       :: src
            integer(c_int),  intent(in), value :: format
            integer(uint32), intent(in), value :: len
            real(c_float),   intent(in), value :: volume
            logical(c_bool)                    :: sdl_mix_audio
        end function sdl_mix_audio

        ! SDL_AudioDeviceID SDL_OpenAudioDevice(SDL_AudioDeviceID devid, const SDL_AudioSpec *spec)
        function sdl_open_audio_device(dev_id, spec) bind(c, name='SDL_OpenAudioDevice')
            import :: sdl_audio_device_id, sdl_audio_spec
            implicit none
            integer(sdl_audio_device_id), intent(in), value :: dev_id
            type(sdl_audio_spec),         intent(in)        :: spec
            integer(sdl_audio_device_id)                    :: sdl_open_audio_device
        end function sdl_open_audio_device

        ! SDL_AudioStream *SDL_OpenAudioDeviceStream(SDL_AudioDeviceID devid, const SDL_AudioSpec *spec, SDL_AudioStreamCallback callback, void *userdata)
        function sdl_open_audio_device_stream(dev_id, spec, callback, user_data) bind(c, name='SDL_OpenAudioDeviceStream')
            import :: c_ptr, sdl_audio_device_id, sdl_audio_spec, sdl_audio_stream_callback
            implicit none
            integer(sdl_audio_device_id), intent(in), value :: dev_id
            type(sdl_audio_spec),         intent(in)        :: spec
            procedure(sdl_audio_stream_callback), bind(c)   :: callback
            type(c_ptr),                  intent(in), value :: user_data
            type(c_ptr)                                     :: sdl_open_audio_device_stream
        end function sdl_open_audio_device_stream

        ! bool SDL_PauseAudioDevice(SDL_AudioDeviceID devid)
        function sdl_pause_audio_device(dev_id) bind(c, name='SDL_PauseAudioDevice')
            import :: c_bool, sdl_audio_device_id
            implicit none
            integer(sdl_audio_device_id), intent(in), value :: dev_id
            logical(c_bool)                                 :: sdl_pause_audio_device
        end function sdl_pause_audio_device

        ! bool SDL_PauseAudioStreamDevice(SDL_AudioStream *stream)
        function sdl_pause_audio_stream_device(stream) bind(c, name='SDL_PauseAudioStreamDevice')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: stream
            logical(c_bool)                :: sdl_pause_audio_stream_device
        end function sdl_pause_audio_stream_device

        ! bool SDL_PutAudioStreamData(SDL_AudioStream *stream, const void *buf, int len)
        function sdl_put_audio_stream_data(stream, buf, len) bind(c, name='SDL_PutAudioStreamData')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: stream
            type(c_ptr),    intent(in), value :: buf
            integer(c_int), intent(in), value :: len
            logical(c_bool)                   :: sdl_put_audio_stream_data
        end function sdl_put_audio_stream_data

        ! bool SDL_PutAudioStreamDataNoCopy(SDL_AudioStream *stream, const void *buf, int len, SDL_AudioStreamDataCompleteCallback callback, void *userdata)
        function sdl_put_audio_stream_data_no_copy(stream, buf, len, callback, user_data) bind(c, name='SDL_PutAudioStreamDataNoCopy')
            import :: c_bool, c_int, c_ptr, sdl_audio_stream_data_complete_callback
            implicit none
            type(c_ptr),    intent(in), value                           :: stream
            type(c_ptr),    intent(in), value                           :: buf
            integer(c_int), intent(in), value                           :: len
            procedure(sdl_audio_stream_data_complete_callback), bind(c) :: callback
            type(c_ptr),    intent(in), value                           :: user_data
            logical(c_bool)                                             :: sdl_put_audio_stream_data_no_copy
        end function sdl_put_audio_stream_data_no_copy

        ! bool SDL_PutAudioStreamPlanarData(SDL_AudioStream *stream, const void *const *channel_buffers, int num_channels, int num_samples)
        function sdl_put_audio_stream_planar_data(stream, num_channels, num_samples) bind(c, name='SDL_PutAudioStreamPlanarData')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: stream
            integer(c_int), intent(in), value :: num_channels
            integer(c_int), intent(in), value :: num_samples
            logical(c_bool)                   :: sdl_put_audio_stream_planar_data
        end function sdl_put_audio_stream_planar_data

        ! bool SDL_ResumeAudioDevice(SDL_AudioDeviceID devid)
        function sdl_resume_audio_device(dev_id) bind(c, name='SDL_ResumeAudioDevice')
            import :: c_bool, sdl_audio_device_id
            implicit none
            integer(sdl_audio_device_id), intent(in), value :: dev_id
            logical(c_bool)                                 :: sdl_resume_audio_device
        end function sdl_resume_audio_device

        ! bool SDL_ResumeAudioStreamDevice(SDL_AudioStream *stream)
        function sdl_resume_audio_stream_device(stream) bind(c, name='SDL_ResumeAudioStreamDevice')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: stream
            logical(c_bool)                :: sdl_resume_audio_stream_device
        end function sdl_resume_audio_stream_device

        ! bool SDL_SetAudioDeviceGain(SDL_AudioDeviceID devid, float gain)
        function sdl_set_audio_device_gain(dev_id, gain) bind(c, name='SDL_SetAudioDeviceGain')
            import :: c_bool, c_float, sdl_audio_device_id
            implicit none
            integer(sdl_audio_device_id), intent(in), value :: dev_id
            real(c_float),                intent(in), value :: gain
            logical(c_bool)                                 :: sdl_set_audio_device_gain
        end function sdl_set_audio_device_gain

        ! bool SDL_SetAudioPostmixCallback(SDL_AudioDeviceID devid, SDL_AudioPostmixCallback callback, void *userdata)
        function sdl_set_audio_postmix_callback(dev_id, callback, user_data) bind(c, name='SDL_SetAudioPostmixCallback')
            import :: c_bool, c_ptr, sdl_audio_device_id, sdl_audio_postmix_callback
            implicit none
            integer(sdl_audio_device_id), intent(in), value :: dev_id
            procedure(sdl_audio_postmix_callback), bind(c)  :: callback
            type(c_ptr),                  intent(in), value :: user_data
            logical(c_bool)                                 :: sdl_set_audio_postmix_callback
        end function sdl_set_audio_postmix_callback

        ! bool SDL_SetAudioStreamFormat(SDL_AudioStream *stream, const SDL_AudioSpec *src_spec, const SDL_AudioSpec *dst_spec)
        function sdl_set_audio_stream_format(stream, src_spec, dst_spec) bind(c, name='SDL_SetAudioStreamFormat')
            import :: c_bool, c_ptr, sdl_audio_spec
            implicit none
            type(c_ptr),          intent(in), value :: stream
            type(sdl_audio_spec), intent(in)        :: src_spec
            type(sdl_audio_spec), intent(in)        :: dst_spec
            logical(c_bool)                         :: sdl_set_audio_stream_format
        end function sdl_set_audio_stream_format

        ! bool SDL_SetAudioStreamFrequencyRatio(SDL_AudioStream *stream, float ratio)
        function sdl_set_audio_stream_frequency_ratio(stream, ratio) bind(c, name='SDL_SetAudioStreamFrequencyRatio')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: stream
            real(c_float), intent(in), value :: ratio
            logical(c_bool)                  :: sdl_set_audio_stream_frequency_ratio
        end function sdl_set_audio_stream_frequency_ratio

        ! bool SDL_SetAudioStreamGain(SDL_AudioStream *stream, float gain)
        function sdl_set_audio_stream_gain(stream, gain) bind(c, name='SDL_SetAudioStreamGain')
            import :: c_bool, c_float, c_ptr
            implicit none
            type(c_ptr),   intent(in), value :: stream
            real(c_float), intent(in), value :: gain
            logical(c_bool)                  :: sdl_set_audio_stream_gain
        end function sdl_set_audio_stream_gain

        ! bool SDL_SetAudioStreamGetCallback(SDL_AudioStream *stream, SDL_AudioStreamCallback callback, void *userdata)
        function sdl_set_audio_stream_get_callback(stream, callback, user_data) bind(c, name='SDL_SetAudioStreamGetCallback')
            import :: c_bool, c_ptr, sdl_audio_stream_callback
            implicit none
            type(c_ptr), intent(in), value                :: stream
            procedure(sdl_audio_stream_callback), bind(c) :: callback
            type(c_ptr), intent(in), value                :: user_data
            logical(c_bool)                               :: sdl_set_audio_stream_get_callback
        end function sdl_set_audio_stream_get_callback

        ! bool SDL_SetAudioStreamInputChannelMap(SDL_AudioStream *stream, const int *chmap, int count)
        function sdl_set_audio_stream_input_channel_map(stream, chmap, count) bind(c, name='SDL_SetAudioStreamInputChannelMap')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: stream
            integer(c_int), intent(out)       :: chmap
            integer(c_int), intent(in), value :: count
            logical(c_bool)                   :: sdl_set_audio_stream_input_channel_map
        end function sdl_set_audio_stream_input_channel_map

        ! bool SDL_SetAudioStreamOutputChannelMap(SDL_AudioStream *stream, const int *chmap, int count)
        function sdl_set_audio_stream_output_channel_map(stream, chmap, count) bind(c, name='SDL_SetAudioStreamOutputChannelMap')
            import :: c_bool, c_int, c_ptr
            implicit none
            type(c_ptr),    intent(in), value :: stream
            integer(c_int), intent(out)       :: chmap
            integer(c_int), intent(in), value :: count
            logical(c_bool)                   :: sdl_set_audio_stream_output_channel_map
        end function sdl_set_audio_stream_output_channel_map

        ! bool SDL_SetAudioStreamPutCallback(SDL_AudioStream *stream, SDL_AudioStreamCallback callback, void *userdata)
        function sdl_set_audio_stream_put_callback(stream, callback, user_data) bind(c, name='SDL_SetAudioStreamPutCallback')
            import :: c_bool, c_ptr, sdl_audio_stream_callback
            implicit none
            type(c_ptr), intent(in), value                :: stream
            procedure(sdl_audio_stream_callback), bind(c) :: callback
            type(c_ptr), intent(in), value                :: user_data
            logical(c_bool)                               :: sdl_set_audio_stream_put_callback
        end function sdl_set_audio_stream_put_callback

        ! void SDL_UnbindAudioStream(SDL_AudioStream *stream)
        subroutine sdl_unbind_audio_stream(stream) bind(c, name='SDL_UnbindAudioStream')
            import :: c_ptr
            implicit none
            type(c_ptr), intent(in), value :: stream
        end subroutine sdl_unbind_audio_stream

        ! void SDL_UnbindAudioStreams(SDL_AudioStream *const *streams, int num_streams)
        subroutine sdl_unbind_audio_streams(num_streams) bind(c, name='SDL_UnbindAudioStreams')
            import :: c_int
            implicit none
            integer(c_int), intent(in), value :: num_streams
        end subroutine sdl_unbind_audio_streams

        ! bool SDL_UnlockAudioStream(SDL_AudioStream *stream)
        function sdl_unlock_audio_stream(stream) bind(c, name='SDL_UnlockAudioStream')
            import :: c_bool, c_ptr
            implicit none
            type(c_ptr), intent(in), value :: stream
            logical(c_bool) :: sdl_unlock_audio_stream
        end function sdl_unlock_audio_stream
    end interface

    public :: sdl_get_audio_device_name
    public :: sdl_get_audio_driver
    public :: sdl_get_audio_format_name
    public :: sdl_get_current_audio_driver
contains
    function sdl_get_audio_device_name(dev_id) result(str)
        integer(sdl_audio_device_id), intent(in) :: dev_id
        character(:), allocatable                :: str

        type(c_ptr) :: ptr

        ptr = sdl_get_audio_device_name_(dev_id)
        call c_f_str_ptr(ptr, str)
    end function sdl_get_audio_device_name

    function sdl_get_audio_driver(index) result(str)
        integer, intent(in)       :: index
        character(:), allocatable :: str

        type(c_ptr) :: ptr

        ptr = sdl_get_audio_driver_(index)
        call c_f_str_ptr(ptr, str)
    end function sdl_get_audio_driver

    function sdl_get_audio_format_name(format) result(str)
        integer, intent(in)       :: format
        character(:), allocatable :: str

        type(c_ptr) :: ptr

        ptr = sdl_get_audio_format_name_(format)
        call c_f_str_ptr(ptr, str)
    end function sdl_get_audio_format_name

    function sdl_get_current_audio_driver() result(str)
        character(:), allocatable :: str

        type(c_ptr) :: ptr

        ptr = sdl_get_current_audio_driver_()
        call c_f_str_ptr(ptr, str)
    end function sdl_get_current_audio_driver
end module sdl3_audio
