# fortran-sdl3

![Language](https://img.shields.io/badge/-Fortran-734f96?logo=fortran&logoColor=white)
![License](https://img.shields.io/github/license/interkosmos/fortran-sdl3)

A work-in-progress collection of Fortran 2023 interface bindings to the
[SDL 3.0](https://wiki.libsdl.org/SDL3/FrontPage) multimedia library.

For Fortran bindings to SDL 2.0, see [fortran-sdl2](https://github.com/interkosmos/fortran-sdl2).

## Build Instructions

Install SDL 3.0 and SDL3_image with development headers. On FreeBSD, run:

```
$ doas pkg install devel/pkgconf devel/sdl3 graphics/sdl3_image
```

Then, clone the _fortran-sdl3_ repository:

```
$ git clone https://github.com/interkosmos/fortran-sdl3
$ cd fortran-sdl3/
```

### Make

Simply execute the Makefile to build with GNU Fortran:

```
$ make
```

Pass the argument `FC` to overwrite the Fortran compiler, for example:

```
$ make FC=flang21
```

Install the library to `/opt`:

```
$ make install PREFIX=/opt
```

Link your programs against `/opt/lib/libfortran-sdl3.a`, `-lSDL3`, and optionally `-lSDL3_image`. Furthermore, pass the
path to the Fortran module files to the compiler, for instance:

```
$ gfortran -I/opt/include/libfortran-sdl3 -o example example.f90 /opt/lib/libfortran-sdl3.a -lSDL3 -lSDL3_image
```

When using OpenGL, additionally link with `-lGL`.

### Fortran Package Manager

Build the library and all example programs with *fpm*:

```
$ fpm build --profile release
```

Alternatively, you can add *fortran-sdl3* as a dependency to the `fpm.toml` of your project:

```toml
[dependencies]
fortran-sdl3 = { git = "https://github.com/interkosmos/fortran-sdl3" }
```

## Examples

The following example programs are provided in `examples/`:

* **affine** draws a cube using affine-transformed textures.
* **bship** renders the [Burning Ship fractal](https://en.wikipedia.org/wiki/Burning_Ship_fractal).
* **clear** demonstrates colour fading.
* **dvd** bounces texture in full screen.
* **gl3core** renders a triangle with OpenGL 3.3 core profile using shaders.
* **glvertex** renders a triangle with OpenGL 1.2 immediate mode.
* **root3** draws a complex cube root fractal to texture.
* **smoke** renders a chaotic [attractor](https://en.wikipedia.org/wiki/Attractor).
* **version** outputs SDL version information.
* **window** opens an SDL window.

Execute the Makefile to compile the examples:

```
$ make examples
```

## Documentation

Generate the source code documentation with [FORD](https://github.com/cmacmackin/ford):

```
$ make doc
```

## References

* [SDL 3.0 API by Category](https://wiki.libsdl.org/SDL3/APIByCategory) (C API)
* [SDL 3.0 Migration Guide](https://wiki.libsdl.org/SDL3/README-migration) (C API)
* [SDL 3.0 Quick Reference](https://wiki.libsdl.org/SDL3/QuickReference) (C API)

## Licence

ISC
