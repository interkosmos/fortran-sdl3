.POSIX:
.SUFFIXES:

PREFIX = /usr/local

AR   = ar
CC   = gcc
FC   = gfortran
FORD = ford
MAKE = make
RM   = /bin/rm

DEBUG   = -O0 -g -pedantic
RELEASE = -O2 -mtune=native

ARFLAGS = rcs
CFLAGS  = $(RELEASE)
FFLAGS  = $(RELEASE)
LDFLAGS = -L$(PREFIX)

LIBSDL3 = `pkg-config --libs sdl3`
LIBIMG3 = -lSDL3_image
LIBGL   = `pkg-config --libs --cflags gl`
LDLIBS  = $(LIBSDL3)

INCDIR  = $(PREFIX)/include/libfortran-sdl3
LIBDIR  = $(PREFIX)/lib
TARGET  = libfortran-sdl3.a

SRC = src/sdl3.F90 \
      src/sdl3_audio.F90 \
      src/sdl3_blendmode.F90 \
      src/sdl3_camera.F90 \
      src/sdl3_cpuinfo.F90 \
      src/sdl3_endian.F90 \
      src/sdl3_error.F90 \
      src/sdl3_events.F90 \
      src/sdl3_gpu.F90 \
      src/sdl3_guid.F90 \
      src/sdl3_hints.F90 \
      src/sdl3_image.F90 \
      src/sdl3_init.F90 \
      src/sdl3_joystick.F90 \
      src/sdl3_keyboard.F90 \
      src/sdl3_keycode.F90 \
      src/sdl3_mouse.F90 \
      src/sdl3_notification.F90 \
      src/sdl3_opengl.F90 \
      src/sdl3_opengl_glext.F90 \
      src/sdl3_pen.F90 \
      src/sdl3_pixels.F90 \
      src/sdl3_power.F90 \
      src/sdl3_properties.F90 \
      src/sdl3_rect.F90 \
      src/sdl3_render.F90 \
      src/sdl3_scancode.F90 \
      src/sdl3_sensor.F90 \
      src/sdl3_stdinc.F90 \
      src/sdl3_surface.F90 \
      src/sdl3_timer.F90 \
      src/sdl3_touch.F90 \
      src/sdl3_version.F90 \
      src/sdl3_video.F90

.PHONY: all clean debug doc examples install release

all: $(TARGET)

debug:
	$(MAKE) $(TARGET) CFLAGS="$(DEBUG)" FFLAGS="$(DEBUG)"

release:
	$(MAKE) $(TARGET) CFLAGS="$(RELEASE)" FFLAGS="$(RELEASE)"

$(TARGET): $(SRC)
	$(FC) $(FFLAGS) -c src/sdl3_stdinc.F90
	$(FC) $(FFLAGS) -c src/sdl3_endian.F90
	$(FC) $(FFLAGS) -c src/sdl3_version.F90
	$(FC) $(FFLAGS) -c src/sdl3_error.F90
	$(FC) $(FFLAGS) -c src/sdl3_guid.F90
	$(FC) $(FFLAGS) -c src/sdl3_properties.F90
	$(FC) $(FFLAGS) -c src/sdl3_hints.F90
	$(FC) $(FFLAGS) -c src/sdl3_cpuinfo.F90
	$(FC) $(FFLAGS) -c src/sdl3_timer.F90
	$(FC) $(FFLAGS) -c src/sdl3_pixels.F90
	$(FC) $(FFLAGS) -c src/sdl3_rect.F90
	$(FC) $(FFLAGS) -c src/sdl3_init.F90
	$(FC) $(FFLAGS) -c src/sdl3_blendmode.F90
	$(FC) $(FFLAGS) -c src/sdl3_surface.F90
	$(FC) $(FFLAGS) -c src/sdl3_video.F90
	$(FC) $(FFLAGS) -c src/sdl3_scancode.F90
	$(FC) $(FFLAGS) -c src/sdl3_keycode.F90
	$(FC) $(FFLAGS) -c src/sdl3_keyboard.F90
	$(FC) $(FFLAGS) -c src/sdl3_mouse.F90
	$(FC) $(FFLAGS) -c src/sdl3_joystick.F90
	$(FC) $(FFLAGS) -c src/sdl3_touch.F90
	$(FC) $(FFLAGS) -c src/sdl3_pen.F90
	$(FC) $(FFLAGS) -c src/sdl3_sensor.F90
	$(FC) $(FFLAGS) -c src/sdl3_audio.F90
	$(FC) $(FFLAGS) -c src/sdl3_camera.F90
	$(FC) $(FFLAGS) -c src/sdl3_power.F90
	$(FC) $(FFLAGS) -c src/sdl3_notification.F90
	$(FC) $(FFLAGS) -c src/sdl3_events.F90
	$(FC) $(FFLAGS) -c src/sdl3_gpu.F90
	$(FC) $(FFLAGS) -c src/sdl3_render.F90
	$(FC) $(FFLAGS) -c src/sdl3_opengl.F90
	$(FC) $(FFLAGS) -c src/sdl3_opengl_glext.F90
	$(FC) $(FFLAGS) -c src/sdl3.F90
	$(FC) $(FFLAGS) -c src/sdl3_image.F90
	$(AR) $(ARFLAGS) $(TARGET) sdl3*.o

install: $(TARGET)
	@echo "--- Installing $(TARGET) to $(LIBDIR)/ ..."
	install -d $(LIBDIR)
	install -m 644 $(TARGET) $(LIBDIR)/
	@echo "--- Installing module files to $(INCDIR)/ ..."
	install -d $(INCDIR)
	install -m 644 sdl3*.mod $(INCDIR)/

examples: affine bship clear dvd gl3core glvertex root3 smoke version window

affine: $(TARGET) examples/affine.f90
	$(FC) $(FFLAGS) $(LDFLAGS) -o affine examples/affine.f90 $(TARGET) $(LDLIBS) $(LIBIMG3)

bship: $(TARGET) examples/bship.f90
	$(FC) $(FFLAGS) $(LDFLAGS) -o bship examples/bship.f90 $(TARGET) $(LDLIBS)

clear: $(TARGET) examples/clear.f90
	$(FC) $(FFLAGS) $(LDFLAGS) -o clear examples/clear.f90 $(TARGET) $(LDLIBS)

dvd: $(TARGET) examples/dvd.f90
	$(FC) $(FFLAGS) $(LDFLAGS) -o dvd examples/dvd.f90 $(TARGET) $(LDLIBS) $(LIBIMG3)

gl3core: $(TARGET) examples/gl3core.f90
	$(FC) $(FFLAGS) $(LDFLAGS) -o gl3core examples/gl3core.f90 $(TARGET) $(LDLIBS) $(LIBGL)

glvertex: $(TARGET) examples/glvertex.f90
	$(FC) $(FFLAGS) $(LDFLAGS) -o glvertex examples/glvertex.f90 $(TARGET) $(LDLIBS) $(LIBGL)

root3: $(TARGET) examples/root3.f90
	$(FC) $(FFLAGS) $(LDFLAGS) -o root3 examples/root3.f90 $(TARGET) $(LDLIBS)

smoke: $(TARGET) examples/smoke.f90
	$(FC) $(FFLAGS) $(LDFLAGS) -o smoke examples/smoke.f90 $(TARGET) $(LDLIBS)

version: $(TARGET) examples/version.f90
	$(FC) $(FFLAGS) $(LDFLAGS) -o version examples/version.f90 $(TARGET) $(LDLIBS)

window: $(TARGET) examples/window.f90
	$(FC) $(FFLAGS) $(LDFLAGS) -o window examples/window.f90 $(TARGET) $(LDLIBS)

doc:
	$(FORD) ford.md

clean:
	$(RM) -rf doc
	$(RM) -f *.mod
	$(RM) -f *.o
	$(RM) -f $(TARGET)
	$(RM) -f affine
	$(RM) -f bship
	$(RM) -f clear
	$(RM) -f dvd
	$(RM) -f gl3core
	$(RM) -f glvertex
	$(RM) -f root3
	$(RM) -f smoke
	$(RM) -f version
	$(RM) -f window
