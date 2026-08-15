    ! Author:  Philipp Engel
    ! Licence: ISC
module sdl3_opengl
    !! Auto-generated Fortran 2023 interface bindings to `SDL3/SDL_opengl.h`.
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    integer, parameter, public :: GLenum     = c_unsigned
    integer, parameter, public :: GLboolean  = c_unsigned_char
    integer, parameter, public :: GLbitfield = c_unsigned
    integer, parameter, public :: GLbyte     = c_signed_char    !! 1-byte signed
    integer, parameter, public :: GLshort    = c_short          !! 2-byte signed
    integer, parameter, public :: GLint      = c_int            !! 4-byte signed
    integer, parameter, public :: GLubyte    = c_unsigned_char  !! 1-byte unsigned
    integer, parameter, public :: GLushort   = c_unsigned_short !! 2-byte unsigned
    integer, parameter, public :: GLuint     = c_unsigned       !! 4-byte unsigned
    integer, parameter, public :: GLsizei    = c_int            !! 4-byte signed
    integer, parameter, public :: GLfloat    = c_float          !! single precision float
    integer, parameter, public :: GLclampf   = c_float          !! single precision float in [0, 1]
    integer, parameter, public :: GLdouble   = c_double         !! double precision float
    integer, parameter, public :: GLclampd   = c_double         !! double precision float in [0, 1]

    ! Boolean values
    integer(c_int), parameter, public :: GL_FALSE = 0
    integer(c_int), parameter, public :: GL_TRUE  = 1

    ! Data types
    integer(c_int), parameter, public :: GL_BYTE           = int(z'1400')
    integer(c_int), parameter, public :: GL_UNSIGNED_BYTE  = int(z'1401')
    integer(c_int), parameter, public :: GL_SHORT          = int(z'1402')
    integer(c_int), parameter, public :: GL_UNSIGNED_SHORT = int(z'1403')
    integer(c_int), parameter, public :: GL_INT            = int(z'1404')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT   = int(z'1405')
    integer(c_int), parameter, public :: GL_FLOAT          = int(z'1406')
    integer(c_int), parameter, public :: GL_2_BYTES        = int(z'1407')
    integer(c_int), parameter, public :: GL_3_BYTES        = int(z'1408')
    integer(c_int), parameter, public :: GL_4_BYTES        = int(z'1409')
    integer(c_int), parameter, public :: GL_DOUBLE         = int(z'140A')

    ! Primitives
    integer(c_int), parameter, public :: GL_POINTS         = int(z'0000')
    integer(c_int), parameter, public :: GL_LINES          = int(z'0001')
    integer(c_int), parameter, public :: GL_LINE_LOOP      = int(z'0002')
    integer(c_int), parameter, public :: GL_LINE_STRIP     = int(z'0003')
    integer(c_int), parameter, public :: GL_TRIANGLES      = int(z'0004')
    integer(c_int), parameter, public :: GL_TRIANGLE_STRIP = int(z'0005')
    integer(c_int), parameter, public :: GL_TRIANGLE_FAN   = int(z'0006')
    integer(c_int), parameter, public :: GL_QUADS          = int(z'0007')
    integer(c_int), parameter, public :: GL_QUAD_STRIP     = int(z'0008')
    integer(c_int), parameter, public :: GL_POLYGON        = int(z'0009')

    ! Vertex Arrays
    integer(c_int), parameter, public :: GL_VERTEX_ARRAY                = int(z'8074')
    integer(c_int), parameter, public :: GL_NORMAL_ARRAY                = int(z'8075')
    integer(c_int), parameter, public :: GL_COLOR_ARRAY                 = int(z'8076')
    integer(c_int), parameter, public :: GL_INDEX_ARRAY                 = int(z'8077')
    integer(c_int), parameter, public :: GL_TEXTURE_COORD_ARRAY         = int(z'8078')
    integer(c_int), parameter, public :: GL_EDGE_FLAG_ARRAY             = int(z'8079')
    integer(c_int), parameter, public :: GL_VERTEX_ARRAY_SIZE           = int(z'807A')
    integer(c_int), parameter, public :: GL_VERTEX_ARRAY_TYPE           = int(z'807B')
    integer(c_int), parameter, public :: GL_VERTEX_ARRAY_STRIDE         = int(z'807C')
    integer(c_int), parameter, public :: GL_NORMAL_ARRAY_TYPE           = int(z'807E')
    integer(c_int), parameter, public :: GL_NORMAL_ARRAY_STRIDE         = int(z'807F')
    integer(c_int), parameter, public :: GL_COLOR_ARRAY_SIZE            = int(z'8081')
    integer(c_int), parameter, public :: GL_COLOR_ARRAY_TYPE            = int(z'8082')
    integer(c_int), parameter, public :: GL_COLOR_ARRAY_STRIDE          = int(z'8083')
    integer(c_int), parameter, public :: GL_INDEX_ARRAY_TYPE            = int(z'8085')
    integer(c_int), parameter, public :: GL_INDEX_ARRAY_STRIDE          = int(z'8086')
    integer(c_int), parameter, public :: GL_TEXTURE_COORD_ARRAY_SIZE    = int(z'8088')
    integer(c_int), parameter, public :: GL_TEXTURE_COORD_ARRAY_TYPE    = int(z'8089')
    integer(c_int), parameter, public :: GL_TEXTURE_COORD_ARRAY_STRIDE  = int(z'808A')
    integer(c_int), parameter, public :: GL_EDGE_FLAG_ARRAY_STRIDE      = int(z'808C')
    integer(c_int), parameter, public :: GL_VERTEX_ARRAY_POINTER        = int(z'808E')
    integer(c_int), parameter, public :: GL_NORMAL_ARRAY_POINTER        = int(z'808F')
    integer(c_int), parameter, public :: GL_COLOR_ARRAY_POINTER         = int(z'8090')
    integer(c_int), parameter, public :: GL_INDEX_ARRAY_POINTER         = int(z'8091')
    integer(c_int), parameter, public :: GL_TEXTURE_COORD_ARRAY_POINTER = int(z'8092')
    integer(c_int), parameter, public :: GL_EDGE_FLAG_ARRAY_POINTER     = int(z'8093')
    integer(c_int), parameter, public :: GL_V2F                         = int(z'2A20')
    integer(c_int), parameter, public :: GL_V3F                         = int(z'2A21')
    integer(c_int), parameter, public :: GL_C4UB_V2F                    = int(z'2A22')
    integer(c_int), parameter, public :: GL_C4UB_V3F                    = int(z'2A23')
    integer(c_int), parameter, public :: GL_C3F_V3F                     = int(z'2A24')
    integer(c_int), parameter, public :: GL_N3F_V3F                     = int(z'2A25')
    integer(c_int), parameter, public :: GL_C4F_N3F_V3F                 = int(z'2A26')
    integer(c_int), parameter, public :: GL_T2F_V3F                     = int(z'2A27')
    integer(c_int), parameter, public :: GL_T4F_V4F                     = int(z'2A28')
    integer(c_int), parameter, public :: GL_T2F_C4UB_V3F                = int(z'2A29')
    integer(c_int), parameter, public :: GL_T2F_C3F_V3F                 = int(z'2A2A')
    integer(c_int), parameter, public :: GL_T2F_N3F_V3F                 = int(z'2A2B')
    integer(c_int), parameter, public :: GL_T2F_C4F_N3F_V3F             = int(z'2A2C')
    integer(c_int), parameter, public :: GL_T4F_C4F_N3F_V4F             = int(z'2A2D')

    ! Matrix Mode
    integer(c_int), parameter, public :: GL_MATRIX_MODE = int(z'0BA0')
    integer(c_int), parameter, public :: GL_MODELVIEW   = int(z'1700')
    integer(c_int), parameter, public :: GL_PROJECTION  = int(z'1701')
    integer(c_int), parameter, public :: GL_TEXTURE     = int(z'1702')

    ! Points
    integer(c_int), parameter, public :: GL_POINT_SMOOTH           = int(z'0B10')
    integer(c_int), parameter, public :: GL_POINT_SIZE             = int(z'0B11')
    integer(c_int), parameter, public :: GL_POINT_SIZE_GRANULARITY = int(z'0B13')
    integer(c_int), parameter, public :: GL_POINT_SIZE_RANGE       = int(z'0B12')

    ! Lines
    integer(c_int), parameter, public :: GL_LINE_SMOOTH            = int(z'0B20')
    integer(c_int), parameter, public :: GL_LINE_STIPPLE           = int(z'0B24')
    integer(c_int), parameter, public :: GL_LINE_STIPPLE_PATTERN   = int(z'0B25')
    integer(c_int), parameter, public :: GL_LINE_STIPPLE_REPEAT    = int(z'0B26')
    integer(c_int), parameter, public :: GL_LINE_WIDTH             = int(z'0B21')
    integer(c_int), parameter, public :: GL_LINE_WIDTH_GRANULARITY = int(z'0B23')
    integer(c_int), parameter, public :: GL_LINE_WIDTH_RANGE       = int(z'0B22')

    ! Polygons
    integer(c_int), parameter, public :: GL_POINT                 = int(z'1B00')
    integer(c_int), parameter, public :: GL_LINE                  = int(z'1B01')
    integer(c_int), parameter, public :: GL_FILL                  = int(z'1B02')
    integer(c_int), parameter, public :: GL_CW                    = int(z'0900')
    integer(c_int), parameter, public :: GL_CCW                   = int(z'0901')
    integer(c_int), parameter, public :: GL_POLYGON_MODE          = int(z'0B40')
    integer(c_int), parameter, public :: GL_POLYGON_SMOOTH        = int(z'0B41')
    integer(c_int), parameter, public :: GL_POLYGON_STIPPLE       = int(z'0B42')
    integer(c_int), parameter, public :: GL_EDGE_FLAG             = int(z'0B43')
    integer(c_int), parameter, public :: GL_CULL_FACE             = int(z'0B44')
    integer(c_int), parameter, public :: GL_CULL_FACE_MODE        = int(z'0B45')
    integer(c_int), parameter, public :: GL_FRONT_FACE            = int(z'0B46')
    integer(c_int), parameter, public :: GL_POLYGON_OFFSET_FACTOR = int(z'8038')
    integer(c_int), parameter, public :: GL_POLYGON_OFFSET_UNITS  = int(z'2A00')
    integer(c_int), parameter, public :: GL_POLYGON_OFFSET_POINT  = int(z'2A01')
    integer(c_int), parameter, public :: GL_POLYGON_OFFSET_LINE   = int(z'2A02')
    integer(c_int), parameter, public :: GL_POLYGON_OFFSET_FILL   = int(z'8037')

    ! Display Lists
    integer(c_int), parameter, public :: GL_COMPILE             = int(z'1300')
    integer(c_int), parameter, public :: GL_COMPILE_AND_EXECUTE = int(z'1301')
    integer(c_int), parameter, public :: GL_LIST_BASE           = int(z'0B32')
    integer(c_int), parameter, public :: GL_LIST_INDEX          = int(z'0B33')
    integer(c_int), parameter, public :: GL_LIST_MODE           = int(z'0B30')

    ! Depth buffer
    integer(c_int), parameter, public :: GL_NEVER             = int(z'0200')
    integer(c_int), parameter, public :: GL_LESS              = int(z'0201')
    integer(c_int), parameter, public :: GL_EQUAL             = int(z'0202')
    integer(c_int), parameter, public :: GL_LEQUAL            = int(z'0203')
    integer(c_int), parameter, public :: GL_GREATER           = int(z'0204')
    integer(c_int), parameter, public :: GL_NOTEQUAL          = int(z'0205')
    integer(c_int), parameter, public :: GL_GEQUAL            = int(z'0206')
    integer(c_int), parameter, public :: GL_ALWAYS            = int(z'0207')
    integer(c_int), parameter, public :: GL_DEPTH_TEST        = int(z'0B71')
    integer(c_int), parameter, public :: GL_DEPTH_BITS        = int(z'0D56')
    integer(c_int), parameter, public :: GL_DEPTH_CLEAR_VALUE = int(z'0B73')
    integer(c_int), parameter, public :: GL_DEPTH_FUNC        = int(z'0B74')
    integer(c_int), parameter, public :: GL_DEPTH_RANGE       = int(z'0B70')
    integer(c_int), parameter, public :: GL_DEPTH_WRITEMASK   = int(z'0B72')
    integer(c_int), parameter, public :: GL_DEPTH_COMPONENT   = int(z'1902')

    ! Lighting
    integer(c_int), parameter, public :: GL_LIGHTING                 = int(z'0B50')
    integer(c_int), parameter, public :: GL_LIGHT0                   = int(z'4000')
    integer(c_int), parameter, public :: GL_LIGHT1                   = int(z'4001')
    integer(c_int), parameter, public :: GL_LIGHT2                   = int(z'4002')
    integer(c_int), parameter, public :: GL_LIGHT3                   = int(z'4003')
    integer(c_int), parameter, public :: GL_LIGHT4                   = int(z'4004')
    integer(c_int), parameter, public :: GL_LIGHT5                   = int(z'4005')
    integer(c_int), parameter, public :: GL_LIGHT6                   = int(z'4006')
    integer(c_int), parameter, public :: GL_LIGHT7                   = int(z'4007')
    integer(c_int), parameter, public :: GL_SPOT_EXPONENT            = int(z'1205')
    integer(c_int), parameter, public :: GL_SPOT_CUTOFF              = int(z'1206')
    integer(c_int), parameter, public :: GL_CONSTANT_ATTENUATION     = int(z'1207')
    integer(c_int), parameter, public :: GL_LINEAR_ATTENUATION       = int(z'1208')
    integer(c_int), parameter, public :: GL_QUADRATIC_ATTENUATION    = int(z'1209')
    integer(c_int), parameter, public :: GL_AMBIENT                  = int(z'1200')
    integer(c_int), parameter, public :: GL_DIFFUSE                  = int(z'1201')
    integer(c_int), parameter, public :: GL_SPECULAR                 = int(z'1202')
    integer(c_int), parameter, public :: GL_SHININESS                = int(z'1601')
    integer(c_int), parameter, public :: GL_EMISSION                 = int(z'1600')
    integer(c_int), parameter, public :: GL_POSITION                 = int(z'1203')
    integer(c_int), parameter, public :: GL_SPOT_DIRECTION           = int(z'1204')
    integer(c_int), parameter, public :: GL_AMBIENT_AND_DIFFUSE      = int(z'1602')
    integer(c_int), parameter, public :: GL_COLOR_INDEXES            = int(z'1603')
    integer(c_int), parameter, public :: GL_LIGHT_MODEL_TWO_SIDE     = int(z'0B52')
    integer(c_int), parameter, public :: GL_LIGHT_MODEL_LOCAL_VIEWER = int(z'0B51')
    integer(c_int), parameter, public :: GL_LIGHT_MODEL_AMBIENT      = int(z'0B53')
    integer(c_int), parameter, public :: GL_SHADE_MODEL              = int(z'0B54')
    integer(c_int), parameter, public :: GL_FLAT                     = int(z'1D00')
    integer(c_int), parameter, public :: GL_SMOOTH                   = int(z'1D01')
    integer(c_int), parameter, public :: GL_COLOR_MATERIAL           = int(z'0B57')
    integer(c_int), parameter, public :: GL_COLOR_MATERIAL_FACE      = int(z'0B55')
    integer(c_int), parameter, public :: GL_COLOR_MATERIAL_PARAMETER = int(z'0B56')
    integer(c_int), parameter, public :: GL_NORMALIZE                = int(z'0BA1')

    ! User Clipping Planes
    integer(c_int), parameter, public :: GL_CLIP_PLANE0 = int(z'3000')
    integer(c_int), parameter, public :: GL_CLIP_PLANE1 = int(z'3001')
    integer(c_int), parameter, public :: GL_CLIP_PLANE2 = int(z'3002')
    integer(c_int), parameter, public :: GL_CLIP_PLANE3 = int(z'3003')
    integer(c_int), parameter, public :: GL_CLIP_PLANE4 = int(z'3004')
    integer(c_int), parameter, public :: GL_CLIP_PLANE5 = int(z'3005')

    ! Accumulation Buffer
    integer(c_int), parameter, public :: GL_ACCUM_RED_BITS    = int(z'0D58')
    integer(c_int), parameter, public :: GL_ACCUM_GREEN_BITS  = int(z'0D59')
    integer(c_int), parameter, public :: GL_ACCUM_BLUE_BITS   = int(z'0D5A')
    integer(c_int), parameter, public :: GL_ACCUM_ALPHA_BITS  = int(z'0D5B')
    integer(c_int), parameter, public :: GL_ACCUM_CLEAR_VALUE = int(z'0B80')
    integer(c_int), parameter, public :: GL_ACCUM             = int(z'0100')
    integer(c_int), parameter, public :: GL_ADD               = int(z'0104')
    integer(c_int), parameter, public :: GL_LOAD              = int(z'0101')
    integer(c_int), parameter, public :: GL_MULT              = int(z'0103')
    integer(c_int), parameter, public :: GL_RETURN            = int(z'0102')

    ! Alpha testing
    integer(c_int), parameter, public :: GL_ALPHA_TEST      = int(z'0BC0')
    integer(c_int), parameter, public :: GL_ALPHA_TEST_REF  = int(z'0BC2')
    integer(c_int), parameter, public :: GL_ALPHA_TEST_FUNC = int(z'0BC1')

    ! Blending
    integer(c_int), parameter, public :: GL_BLEND               = int(z'0BE2')
    integer(c_int), parameter, public :: GL_BLEND_SRC           = int(z'0BE1')
    integer(c_int), parameter, public :: GL_BLEND_DST           = int(z'0BE0')
    integer(c_int), parameter, public :: GL_ZERO                = 0
    integer(c_int), parameter, public :: GL_ONE                 = 1
    integer(c_int), parameter, public :: GL_SRC_COLOR           = int(z'0300')
    integer(c_int), parameter, public :: GL_ONE_MINUS_SRC_COLOR = int(z'0301')
    integer(c_int), parameter, public :: GL_SRC_ALPHA           = int(z'0302')
    integer(c_int), parameter, public :: GL_ONE_MINUS_SRC_ALPHA = int(z'0303')
    integer(c_int), parameter, public :: GL_DST_ALPHA           = int(z'0304')
    integer(c_int), parameter, public :: GL_ONE_MINUS_DST_ALPHA = int(z'0305')
    integer(c_int), parameter, public :: GL_DST_COLOR           = int(z'0306')
    integer(c_int), parameter, public :: GL_ONE_MINUS_DST_COLOR = int(z'0307')
    integer(c_int), parameter, public :: GL_SRC_ALPHA_SATURATE  = int(z'0308')

    ! Render Mode
    integer(c_int), parameter, public :: GL_FEEDBACK = int(z'1C01')
    integer(c_int), parameter, public :: GL_RENDER   = int(z'1C00')
    integer(c_int), parameter, public :: GL_SELECT   = int(z'1C02')

    ! Feedback
    integer(c_int), parameter, public :: GL_2D                      = int(z'0600')
    integer(c_int), parameter, public :: GL_3D                      = int(z'0601')
    integer(c_int), parameter, public :: GL_3D_COLOR                = int(z'0602')
    integer(c_int), parameter, public :: GL_3D_COLOR_TEXTURE        = int(z'0603')
    integer(c_int), parameter, public :: GL_4D_COLOR_TEXTURE        = int(z'0604')
    integer(c_int), parameter, public :: GL_POINT_TOKEN             = int(z'0701')
    integer(c_int), parameter, public :: GL_LINE_TOKEN              = int(z'0702')
    integer(c_int), parameter, public :: GL_LINE_RESET_TOKEN        = int(z'0707')
    integer(c_int), parameter, public :: GL_POLYGON_TOKEN           = int(z'0703')
    integer(c_int), parameter, public :: GL_BITMAP_TOKEN            = int(z'0704')
    integer(c_int), parameter, public :: GL_DRAW_PIXEL_TOKEN        = int(z'0705')
    integer(c_int), parameter, public :: GL_COPY_PIXEL_TOKEN        = int(z'0706')
    integer(c_int), parameter, public :: GL_PASS_THROUGH_TOKEN      = int(z'0700')
    integer(c_int), parameter, public :: GL_FEEDBACK_BUFFER_POINTER = int(z'0DF0')
    integer(c_int), parameter, public :: GL_FEEDBACK_BUFFER_SIZE    = int(z'0DF1')
    integer(c_int), parameter, public :: GL_FEEDBACK_BUFFER_TYPE    = int(z'0DF2')

    ! Selection
    integer(c_int), parameter, public :: GL_SELECTION_BUFFER_POINTER = int(z'0DF3')
    integer(c_int), parameter, public :: GL_SELECTION_BUFFER_SIZE    = int(z'0DF4')

    ! Fog
    integer(c_int), parameter, public :: GL_FOG         = int(z'0B60')
    integer(c_int), parameter, public :: GL_FOG_MODE    = int(z'0B65')
    integer(c_int), parameter, public :: GL_FOG_DENSITY = int(z'0B62')
    integer(c_int), parameter, public :: GL_FOG_COLOR   = int(z'0B66')
    integer(c_int), parameter, public :: GL_FOG_INDEX   = int(z'0B61')
    integer(c_int), parameter, public :: GL_FOG_START   = int(z'0B63')
    integer(c_int), parameter, public :: GL_FOG_END     = int(z'0B64')
    integer(c_int), parameter, public :: GL_LINEAR      = int(z'2601')
    integer(c_int), parameter, public :: GL_EXP         = int(z'0800')
    integer(c_int), parameter, public :: GL_EXP2        = int(z'0801')

    ! Logic Ops
    integer(c_int), parameter, public :: GL_LOGIC_OP       = int(z'0BF1')
    integer(c_int), parameter, public :: GL_INDEX_LOGIC_OP = int(z'0BF1')
    integer(c_int), parameter, public :: GL_COLOR_LOGIC_OP = int(z'0BF2')
    integer(c_int), parameter, public :: GL_LOGIC_OP_MODE  = int(z'0BF0')
    integer(c_int), parameter, public :: GL_CLEAR          = int(z'1500')
    integer(c_int), parameter, public :: GL_SET            = int(z'150F')
    integer(c_int), parameter, public :: GL_COPY           = int(z'1503')
    integer(c_int), parameter, public :: GL_COPY_INVERTED  = int(z'150C')
    integer(c_int), parameter, public :: GL_NOOP           = int(z'1505')
    integer(c_int), parameter, public :: GL_INVERT         = int(z'150A')
    integer(c_int), parameter, public :: GL_AND            = int(z'1501')
    integer(c_int), parameter, public :: GL_NAND           = int(z'150E')
    integer(c_int), parameter, public :: GL_OR             = int(z'1507')
    integer(c_int), parameter, public :: GL_NOR            = int(z'1508')
    integer(c_int), parameter, public :: GL_XOR            = int(z'1506')
    integer(c_int), parameter, public :: GL_EQUIV          = int(z'1509')
    integer(c_int), parameter, public :: GL_AND_REVERSE    = int(z'1502')
    integer(c_int), parameter, public :: GL_AND_INVERTED   = int(z'1504')
    integer(c_int), parameter, public :: GL_OR_REVERSE     = int(z'150B')
    integer(c_int), parameter, public :: GL_OR_INVERTED    = int(z'150D')

    ! Stencil
    integer(c_int), parameter, public :: GL_STENCIL_BITS            = int(z'0D57')
    integer(c_int), parameter, public :: GL_STENCIL_TEST            = int(z'0B90')
    integer(c_int), parameter, public :: GL_STENCIL_CLEAR_VALUE     = int(z'0B91')
    integer(c_int), parameter, public :: GL_STENCIL_FUNC            = int(z'0B92')
    integer(c_int), parameter, public :: GL_STENCIL_VALUE_MASK      = int(z'0B93')
    integer(c_int), parameter, public :: GL_STENCIL_FAIL            = int(z'0B94')
    integer(c_int), parameter, public :: GL_STENCIL_PASS_DEPTH_FAIL = int(z'0B95')
    integer(c_int), parameter, public :: GL_STENCIL_PASS_DEPTH_PASS = int(z'0B96')
    integer(c_int), parameter, public :: GL_STENCIL_REF             = int(z'0B97')
    integer(c_int), parameter, public :: GL_STENCIL_WRITEMASK       = int(z'0B98')
    integer(c_int), parameter, public :: GL_STENCIL_INDEX           = int(z'1901')
    integer(c_int), parameter, public :: GL_KEEP                    = int(z'1E00')
    integer(c_int), parameter, public :: GL_REPLACE                 = int(z'1E01')
    integer(c_int), parameter, public :: GL_INCR                    = int(z'1E02')
    integer(c_int), parameter, public :: GL_DECR                    = int(z'1E03')

    ! Buffers, Pixel Drawing/Reading
    integer(c_int), parameter, public :: GL_NONE            = 0
    integer(c_int), parameter, public :: GL_LEFT            = int(z'0406')
    integer(c_int), parameter, public :: GL_RIGHT           = int(z'0407')
    integer(c_int), parameter, public :: GL_FRONT           = int(z'0404')
    integer(c_int), parameter, public :: GL_BACK            = int(z'0405')
    integer(c_int), parameter, public :: GL_FRONT_AND_BACK  = int(z'0408')
    integer(c_int), parameter, public :: GL_FRONT_LEFT      = int(z'0400')
    integer(c_int), parameter, public :: GL_FRONT_RIGHT     = int(z'0401')
    integer(c_int), parameter, public :: GL_BACK_LEFT       = int(z'0402')
    integer(c_int), parameter, public :: GL_BACK_RIGHT      = int(z'0403')
    integer(c_int), parameter, public :: GL_AUX0            = int(z'0409')
    integer(c_int), parameter, public :: GL_AUX1            = int(z'040A')
    integer(c_int), parameter, public :: GL_AUX2            = int(z'040B')
    integer(c_int), parameter, public :: GL_AUX3            = int(z'040C')
    integer(c_int), parameter, public :: GL_COLOR_INDEX     = int(z'1900')
    integer(c_int), parameter, public :: GL_RED             = int(z'1903')
    integer(c_int), parameter, public :: GL_GREEN           = int(z'1904')
    integer(c_int), parameter, public :: GL_BLUE            = int(z'1905')
    integer(c_int), parameter, public :: GL_ALPHA           = int(z'1906')
    integer(c_int), parameter, public :: GL_LUMINANCE       = int(z'1909')
    integer(c_int), parameter, public :: GL_LUMINANCE_ALPHA = int(z'190A')
    integer(c_int), parameter, public :: GL_ALPHA_BITS      = int(z'0D55')
    integer(c_int), parameter, public :: GL_RED_BITS        = int(z'0D52')
    integer(c_int), parameter, public :: GL_GREEN_BITS      = int(z'0D53')
    integer(c_int), parameter, public :: GL_BLUE_BITS       = int(z'0D54')
    integer(c_int), parameter, public :: GL_INDEX_BITS      = int(z'0D51')
    integer(c_int), parameter, public :: GL_SUBPIXEL_BITS   = int(z'0D50')
    integer(c_int), parameter, public :: GL_AUX_BUFFERS     = int(z'0C00')
    integer(c_int), parameter, public :: GL_READ_BUFFER     = int(z'0C02')
    integer(c_int), parameter, public :: GL_DRAW_BUFFER     = int(z'0C01')
    integer(c_int), parameter, public :: GL_DOUBLEBUFFER    = int(z'0C32')
    integer(c_int), parameter, public :: GL_STEREO          = int(z'0C33')
    integer(c_int), parameter, public :: GL_BITMAP          = int(z'1A00')
    integer(c_int), parameter, public :: GL_COLOR           = int(z'1800')
    integer(c_int), parameter, public :: GL_DEPTH           = int(z'1801')
    integer(c_int), parameter, public :: GL_STENCIL         = int(z'1802')
    integer(c_int), parameter, public :: GL_DITHER          = int(z'0BD0')
    integer(c_int), parameter, public :: GL_RGB             = int(z'1907')
    integer(c_int), parameter, public :: GL_RGBA            = int(z'1908')

    ! Implementation limits
    integer(c_int), parameter, public :: GL_MAX_LIST_NESTING              = int(z'0B31')
    integer(c_int), parameter, public :: GL_MAX_EVAL_ORDER                = int(z'0D30')
    integer(c_int), parameter, public :: GL_MAX_LIGHTS                    = int(z'0D31')
    integer(c_int), parameter, public :: GL_MAX_CLIP_PLANES               = int(z'0D32')
    integer(c_int), parameter, public :: GL_MAX_TEXTURE_SIZE              = int(z'0D33')
    integer(c_int), parameter, public :: GL_MAX_PIXEL_MAP_TABLE           = int(z'0D34')
    integer(c_int), parameter, public :: GL_MAX_ATTRIB_STACK_DEPTH        = int(z'0D35')
    integer(c_int), parameter, public :: GL_MAX_MODELVIEW_STACK_DEPTH     = int(z'0D36')
    integer(c_int), parameter, public :: GL_MAX_NAME_STACK_DEPTH          = int(z'0D37')
    integer(c_int), parameter, public :: GL_MAX_PROJECTION_STACK_DEPTH    = int(z'0D38')
    integer(c_int), parameter, public :: GL_MAX_TEXTURE_STACK_DEPTH       = int(z'0D39')
    integer(c_int), parameter, public :: GL_MAX_VIEWPORT_DIMS             = int(z'0D3A')
    integer(c_int), parameter, public :: GL_MAX_CLIENT_ATTRIB_STACK_DEPTH = int(z'0D3B')

    ! Gets
    integer(c_int), parameter, public :: GL_ATTRIB_STACK_DEPTH            = int(z'0BB0')
    integer(c_int), parameter, public :: GL_CLIENT_ATTRIB_STACK_DEPTH     = int(z'0BB1')
    integer(c_int), parameter, public :: GL_COLOR_CLEAR_VALUE             = int(z'0C22')
    integer(c_int), parameter, public :: GL_COLOR_WRITEMASK               = int(z'0C23')
    integer(c_int), parameter, public :: GL_CURRENT_INDEX                 = int(z'0B01')
    integer(c_int), parameter, public :: GL_CURRENT_COLOR                 = int(z'0B00')
    integer(c_int), parameter, public :: GL_CURRENT_NORMAL                = int(z'0B02')
    integer(c_int), parameter, public :: GL_CURRENT_RASTER_COLOR          = int(z'0B04')
    integer(c_int), parameter, public :: GL_CURRENT_RASTER_DISTANCE       = int(z'0B09')
    integer(c_int), parameter, public :: GL_CURRENT_RASTER_INDEX          = int(z'0B05')
    integer(c_int), parameter, public :: GL_CURRENT_RASTER_POSITION       = int(z'0B07')
    integer(c_int), parameter, public :: GL_CURRENT_RASTER_TEXTURE_COORDS = int(z'0B06')
    integer(c_int), parameter, public :: GL_CURRENT_RASTER_POSITION_VALID = int(z'0B08')
    integer(c_int), parameter, public :: GL_CURRENT_TEXTURE_COORDS        = int(z'0B03')
    integer(c_int), parameter, public :: GL_INDEX_CLEAR_VALUE             = int(z'0C20')
    integer(c_int), parameter, public :: GL_INDEX_MODE                    = int(z'0C30')
    integer(c_int), parameter, public :: GL_INDEX_WRITEMASK               = int(z'0C21')
    integer(c_int), parameter, public :: GL_MODELVIEW_MATRIX              = int(z'0BA6')
    integer(c_int), parameter, public :: GL_MODELVIEW_STACK_DEPTH         = int(z'0BA3')
    integer(c_int), parameter, public :: GL_NAME_STACK_DEPTH              = int(z'0D70')
    integer(c_int), parameter, public :: GL_PROJECTION_MATRIX             = int(z'0BA7')
    integer(c_int), parameter, public :: GL_PROJECTION_STACK_DEPTH        = int(z'0BA4')
    integer(c_int), parameter, public :: GL_RENDER_MODE                   = int(z'0C40')
    integer(c_int), parameter, public :: GL_RGBA_MODE                     = int(z'0C31')
    integer(c_int), parameter, public :: GL_TEXTURE_MATRIX                = int(z'0BA8')
    integer(c_int), parameter, public :: GL_TEXTURE_STACK_DEPTH           = int(z'0BA5')
    integer(c_int), parameter, public :: GL_VIEWPORT                      = int(z'0BA2')

    ! Evaluators
    integer(c_int), parameter, public :: GL_AUTO_NORMAL          = int(z'0D80')
    integer(c_int), parameter, public :: GL_MAP1_COLOR_4         = int(z'0D90')
    integer(c_int), parameter, public :: GL_MAP1_INDEX           = int(z'0D91')
    integer(c_int), parameter, public :: GL_MAP1_NORMAL          = int(z'0D92')
    integer(c_int), parameter, public :: GL_MAP1_TEXTURE_COORD_1 = int(z'0D93')
    integer(c_int), parameter, public :: GL_MAP1_TEXTURE_COORD_2 = int(z'0D94')
    integer(c_int), parameter, public :: GL_MAP1_TEXTURE_COORD_3 = int(z'0D95')
    integer(c_int), parameter, public :: GL_MAP1_TEXTURE_COORD_4 = int(z'0D96')
    integer(c_int), parameter, public :: GL_MAP1_VERTEX_3        = int(z'0D97')
    integer(c_int), parameter, public :: GL_MAP1_VERTEX_4        = int(z'0D98')
    integer(c_int), parameter, public :: GL_MAP2_COLOR_4         = int(z'0DB0')
    integer(c_int), parameter, public :: GL_MAP2_INDEX           = int(z'0DB1')
    integer(c_int), parameter, public :: GL_MAP2_NORMAL          = int(z'0DB2')
    integer(c_int), parameter, public :: GL_MAP2_TEXTURE_COORD_1 = int(z'0DB3')
    integer(c_int), parameter, public :: GL_MAP2_TEXTURE_COORD_2 = int(z'0DB4')
    integer(c_int), parameter, public :: GL_MAP2_TEXTURE_COORD_3 = int(z'0DB5')
    integer(c_int), parameter, public :: GL_MAP2_TEXTURE_COORD_4 = int(z'0DB6')
    integer(c_int), parameter, public :: GL_MAP2_VERTEX_3        = int(z'0DB7')
    integer(c_int), parameter, public :: GL_MAP2_VERTEX_4        = int(z'0DB8')
    integer(c_int), parameter, public :: GL_MAP1_GRID_DOMAIN     = int(z'0DD0')
    integer(c_int), parameter, public :: GL_MAP1_GRID_SEGMENTS   = int(z'0DD1')
    integer(c_int), parameter, public :: GL_MAP2_GRID_DOMAIN     = int(z'0DD2')
    integer(c_int), parameter, public :: GL_MAP2_GRID_SEGMENTS   = int(z'0DD3')
    integer(c_int), parameter, public :: GL_COEFF                = int(z'0A00')
    integer(c_int), parameter, public :: GL_ORDER                = int(z'0A01')
    integer(c_int), parameter, public :: GL_DOMAIN               = int(z'0A02')

    ! Hints
    integer(c_int), parameter, public :: GL_PERSPECTIVE_CORRECTION_HINT = int(z'0C50')
    integer(c_int), parameter, public :: GL_POINT_SMOOTH_HINT           = int(z'0C51')
    integer(c_int), parameter, public :: GL_LINE_SMOOTH_HINT            = int(z'0C52')
    integer(c_int), parameter, public :: GL_POLYGON_SMOOTH_HINT         = int(z'0C53')
    integer(c_int), parameter, public :: GL_FOG_HINT                    = int(z'0C54')
    integer(c_int), parameter, public :: GL_DONT_CARE                   = int(z'1100')
    integer(c_int), parameter, public :: GL_FASTEST                     = int(z'1101')
    integer(c_int), parameter, public :: GL_NICEST                      = int(z'1102')

    ! Scissor Box
    integer(c_int), parameter, public :: GL_SCISSOR_BOX  = int(z'0C10')
    integer(c_int), parameter, public :: GL_SCISSOR_TEST = int(z'0C11')

    ! Pixel Mode/Transfer
    integer(c_int), parameter, public :: GL_MAP_COLOR             = int(z'0D10')
    integer(c_int), parameter, public :: GL_MAP_STENCIL           = int(z'0D11')
    integer(c_int), parameter, public :: GL_INDEX_SHIFT           = int(z'0D12')
    integer(c_int), parameter, public :: GL_INDEX_OFFSET          = int(z'0D13')
    integer(c_int), parameter, public :: GL_RED_SCALE             = int(z'0D14')
    integer(c_int), parameter, public :: GL_RED_BIAS              = int(z'0D15')
    integer(c_int), parameter, public :: GL_GREEN_SCALE           = int(z'0D18')
    integer(c_int), parameter, public :: GL_GREEN_BIAS            = int(z'0D19')
    integer(c_int), parameter, public :: GL_BLUE_SCALE            = int(z'0D1A')
    integer(c_int), parameter, public :: GL_BLUE_BIAS             = int(z'0D1B')
    integer(c_int), parameter, public :: GL_ALPHA_SCALE           = int(z'0D1C')
    integer(c_int), parameter, public :: GL_ALPHA_BIAS            = int(z'0D1D')
    integer(c_int), parameter, public :: GL_DEPTH_SCALE           = int(z'0D1E')
    integer(c_int), parameter, public :: GL_DEPTH_BIAS            = int(z'0D1F')
    integer(c_int), parameter, public :: GL_PIXEL_MAP_S_TO_S_SIZE = int(z'0CB1')
    integer(c_int), parameter, public :: GL_PIXEL_MAP_I_TO_I_SIZE = int(z'0CB0')
    integer(c_int), parameter, public :: GL_PIXEL_MAP_I_TO_R_SIZE = int(z'0CB2')
    integer(c_int), parameter, public :: GL_PIXEL_MAP_I_TO_G_SIZE = int(z'0CB3')
    integer(c_int), parameter, public :: GL_PIXEL_MAP_I_TO_B_SIZE = int(z'0CB4')
    integer(c_int), parameter, public :: GL_PIXEL_MAP_I_TO_A_SIZE = int(z'0CB5')
    integer(c_int), parameter, public :: GL_PIXEL_MAP_R_TO_R_SIZE = int(z'0CB6')
    integer(c_int), parameter, public :: GL_PIXEL_MAP_G_TO_G_SIZE = int(z'0CB7')
    integer(c_int), parameter, public :: GL_PIXEL_MAP_B_TO_B_SIZE = int(z'0CB8')
    integer(c_int), parameter, public :: GL_PIXEL_MAP_A_TO_A_SIZE = int(z'0CB9')
    integer(c_int), parameter, public :: GL_PIXEL_MAP_S_TO_S      = int(z'0C71')
    integer(c_int), parameter, public :: GL_PIXEL_MAP_I_TO_I      = int(z'0C70')
    integer(c_int), parameter, public :: GL_PIXEL_MAP_I_TO_R      = int(z'0C72')
    integer(c_int), parameter, public :: GL_PIXEL_MAP_I_TO_G      = int(z'0C73')
    integer(c_int), parameter, public :: GL_PIXEL_MAP_I_TO_B      = int(z'0C74')
    integer(c_int), parameter, public :: GL_PIXEL_MAP_I_TO_A      = int(z'0C75')
    integer(c_int), parameter, public :: GL_PIXEL_MAP_R_TO_R      = int(z'0C76')
    integer(c_int), parameter, public :: GL_PIXEL_MAP_G_TO_G      = int(z'0C77')
    integer(c_int), parameter, public :: GL_PIXEL_MAP_B_TO_B      = int(z'0C78')
    integer(c_int), parameter, public :: GL_PIXEL_MAP_A_TO_A      = int(z'0C79')
    integer(c_int), parameter, public :: GL_PACK_ALIGNMENT        = int(z'0D05')
    integer(c_int), parameter, public :: GL_PACK_LSB_FIRST        = int(z'0D01')
    integer(c_int), parameter, public :: GL_PACK_ROW_LENGTH       = int(z'0D02')
    integer(c_int), parameter, public :: GL_PACK_SKIP_PIXELS      = int(z'0D04')
    integer(c_int), parameter, public :: GL_PACK_SKIP_ROWS        = int(z'0D03')
    integer(c_int), parameter, public :: GL_PACK_SWAP_BYTES       = int(z'0D00')
    integer(c_int), parameter, public :: GL_UNPACK_ALIGNMENT      = int(z'0CF5')
    integer(c_int), parameter, public :: GL_UNPACK_LSB_FIRST      = int(z'0CF1')
    integer(c_int), parameter, public :: GL_UNPACK_ROW_LENGTH     = int(z'0CF2')
    integer(c_int), parameter, public :: GL_UNPACK_SKIP_PIXELS    = int(z'0CF4')
    integer(c_int), parameter, public :: GL_UNPACK_SKIP_ROWS      = int(z'0CF3')
    integer(c_int), parameter, public :: GL_UNPACK_SWAP_BYTES     = int(z'0CF0')
    integer(c_int), parameter, public :: GL_ZOOM_X                = int(z'0D16')
    integer(c_int), parameter, public :: GL_ZOOM_Y                = int(z'0D17')

    ! Texture Mapping
    integer(c_int), parameter, public :: GL_TEXTURE_ENV            = int(z'2300')
    integer(c_int), parameter, public :: GL_TEXTURE_ENV_MODE       = int(z'2200')
    integer(c_int), parameter, public :: GL_TEXTURE_1D             = int(z'0DE0')
    integer(c_int), parameter, public :: GL_TEXTURE_2D             = int(z'0DE1')
    integer(c_int), parameter, public :: GL_TEXTURE_WRAP_S         = int(z'2802')
    integer(c_int), parameter, public :: GL_TEXTURE_WRAP_T         = int(z'2803')
    integer(c_int), parameter, public :: GL_TEXTURE_MAG_FILTER     = int(z'2800')
    integer(c_int), parameter, public :: GL_TEXTURE_MIN_FILTER     = int(z'2801')
    integer(c_int), parameter, public :: GL_TEXTURE_ENV_COLOR      = int(z'2201')
    integer(c_int), parameter, public :: GL_TEXTURE_GEN_S          = int(z'0C60')
    integer(c_int), parameter, public :: GL_TEXTURE_GEN_T          = int(z'0C61')
    integer(c_int), parameter, public :: GL_TEXTURE_GEN_R          = int(z'0C62')
    integer(c_int), parameter, public :: GL_TEXTURE_GEN_Q          = int(z'0C63')
    integer(c_int), parameter, public :: GL_TEXTURE_GEN_MODE       = int(z'2500')
    integer(c_int), parameter, public :: GL_TEXTURE_BORDER_COLOR   = int(z'1004')
    integer(c_int), parameter, public :: GL_TEXTURE_WIDTH          = int(z'1000')
    integer(c_int), parameter, public :: GL_TEXTURE_HEIGHT         = int(z'1001')
    integer(c_int), parameter, public :: GL_TEXTURE_BORDER         = int(z'1005')
    integer(c_int), parameter, public :: GL_TEXTURE_COMPONENTS     = int(z'1003')
    integer(c_int), parameter, public :: GL_TEXTURE_RED_SIZE       = int(z'805C')
    integer(c_int), parameter, public :: GL_TEXTURE_GREEN_SIZE     = int(z'805D')
    integer(c_int), parameter, public :: GL_TEXTURE_BLUE_SIZE      = int(z'805E')
    integer(c_int), parameter, public :: GL_TEXTURE_ALPHA_SIZE     = int(z'805F')
    integer(c_int), parameter, public :: GL_TEXTURE_LUMINANCE_SIZE = int(z'8060')
    integer(c_int), parameter, public :: GL_TEXTURE_INTENSITY_SIZE = int(z'8061')
    integer(c_int), parameter, public :: GL_NEAREST_MIPMAP_NEAREST = int(z'2700')
    integer(c_int), parameter, public :: GL_NEAREST_MIPMAP_LINEAR  = int(z'2702')
    integer(c_int), parameter, public :: GL_LINEAR_MIPMAP_NEAREST  = int(z'2701')
    integer(c_int), parameter, public :: GL_LINEAR_MIPMAP_LINEAR   = int(z'2703')
    integer(c_int), parameter, public :: GL_OBJECT_LINEAR          = int(z'2401')
    integer(c_int), parameter, public :: GL_OBJECT_PLANE           = int(z'2501')
    integer(c_int), parameter, public :: GL_EYE_LINEAR             = int(z'2400')
    integer(c_int), parameter, public :: GL_EYE_PLANE              = int(z'2502')
    integer(c_int), parameter, public :: GL_SPHERE_MAP             = int(z'2402')
    integer(c_int), parameter, public :: GL_DECAL                  = int(z'2101')
    integer(c_int), parameter, public :: GL_MODULATE               = int(z'2100')
    integer(c_int), parameter, public :: GL_NEAREST                = int(z'2600')
    integer(c_int), parameter, public :: GL_REPEAT                 = int(z'2901')
    integer(c_int), parameter, public :: GL_CLAMP                  = int(z'2900')
    integer(c_int), parameter, public :: GL_S                      = int(z'2000')
    integer(c_int), parameter, public :: GL_T                      = int(z'2001')
    integer(c_int), parameter, public :: GL_R                      = int(z'2002')
    integer(c_int), parameter, public :: GL_Q                      = int(z'2003')

    ! Utility
    integer(c_int), parameter, public :: GL_VENDOR     = int(z'1F00')
    integer(c_int), parameter, public :: GL_RENDERER   = int(z'1F01')
    integer(c_int), parameter, public :: GL_VERSION    = int(z'1F02')
    integer(c_int), parameter, public :: GL_EXTENSIONS = int(z'1F03')

    ! Errors
    integer(c_int), parameter, public :: GL_NO_ERROR          = 0
    integer(c_int), parameter, public :: GL_INVALID_ENUM      = int(z'0500')
    integer(c_int), parameter, public :: GL_INVALID_VALUE     = int(z'0501')
    integer(c_int), parameter, public :: GL_INVALID_OPERATION = int(z'0502')
    integer(c_int), parameter, public :: GL_STACK_OVERFLOW    = int(z'0503')
    integer(c_int), parameter, public :: GL_STACK_UNDERFLOW   = int(z'0504')
    integer(c_int), parameter, public :: GL_OUT_OF_MEMORY     = int(z'0505')

    ! glPush/PopAttrib Bits
    integer(c_int), parameter, public :: GL_CURRENT_BIT         = int(z'00000001')
    integer(c_int), parameter, public :: GL_POINT_BIT           = int(z'00000002')
    integer(c_int), parameter, public :: GL_LINE_BIT            = int(z'00000004')
    integer(c_int), parameter, public :: GL_POLYGON_BIT         = int(z'00000008')
    integer(c_int), parameter, public :: GL_POLYGON_STIPPLE_BIT = int(z'00000010')
    integer(c_int), parameter, public :: GL_PIXEL_MODE_BIT      = int(z'00000020')
    integer(c_int), parameter, public :: GL_LIGHTING_BIT        = int(z'00000040')
    integer(c_int), parameter, public :: GL_FOG_BIT             = int(z'00000080')
    integer(c_int), parameter, public :: GL_DEPTH_BUFFER_BIT    = int(z'00000100')
    integer(c_int), parameter, public :: GL_ACCUM_BUFFER_BIT    = int(z'00000200')
    integer(c_int), parameter, public :: GL_STENCIL_BUFFER_BIT  = int(z'00000400')
    integer(c_int), parameter, public :: GL_VIEWPORT_BIT        = int(z'00000800')
    integer(c_int), parameter, public :: GL_TRANSFORM_BIT       = int(z'00001000')
    integer(c_int), parameter, public :: GL_ENABLE_BIT          = int(z'00002000')
    integer(c_int), parameter, public :: GL_COLOR_BUFFER_BIT    = int(z'00004000')
    integer(c_int), parameter, public :: GL_HINT_BIT            = int(z'00008000')
    integer(c_int), parameter, public :: GL_EVAL_BIT            = int(z'00010000')
    integer(c_int), parameter, public :: GL_LIST_BIT            = int(z'00020000')
    integer(c_int), parameter, public :: GL_TEXTURE_BIT         = int(z'00040000')
    integer(c_int), parameter, public :: GL_SCISSOR_BIT         = int(z'00080000')
    integer(c_int), parameter, public :: GL_ALL_ATTRIB_BITS     = int(z'000FFFFF')

    ! OpenGL 1.1
    integer(c_int), parameter, public :: GL_PROXY_TEXTURE_1D        = int(z'8063')
    integer(c_int), parameter, public :: GL_PROXY_TEXTURE_2D        = int(z'8064')
    integer(c_int), parameter, public :: GL_TEXTURE_PRIORITY        = int(z'8066')
    integer(c_int), parameter, public :: GL_TEXTURE_RESIDENT        = int(z'8067')
    integer(c_int), parameter, public :: GL_TEXTURE_BINDING_1D      = int(z'8068')
    integer(c_int), parameter, public :: GL_TEXTURE_BINDING_2D      = int(z'8069')
    integer(c_int), parameter, public :: GL_TEXTURE_INTERNAL_FORMAT = int(z'1003')
    integer(c_int), parameter, public :: GL_ALPHA4                  = int(z'803B')
    integer(c_int), parameter, public :: GL_ALPHA8                  = int(z'803C')
    integer(c_int), parameter, public :: GL_ALPHA12                 = int(z'803D')
    integer(c_int), parameter, public :: GL_ALPHA16                 = int(z'803E')
    integer(c_int), parameter, public :: GL_LUMINANCE4              = int(z'803F')
    integer(c_int), parameter, public :: GL_LUMINANCE8              = int(z'8040')
    integer(c_int), parameter, public :: GL_LUMINANCE12             = int(z'8041')
    integer(c_int), parameter, public :: GL_LUMINANCE16             = int(z'8042')
    integer(c_int), parameter, public :: GL_LUMINANCE4_ALPHA4       = int(z'8043')
    integer(c_int), parameter, public :: GL_LUMINANCE6_ALPHA2       = int(z'8044')
    integer(c_int), parameter, public :: GL_LUMINANCE8_ALPHA8       = int(z'8045')
    integer(c_int), parameter, public :: GL_LUMINANCE12_ALPHA4      = int(z'8046')
    integer(c_int), parameter, public :: GL_LUMINANCE12_ALPHA12     = int(z'8047')
    integer(c_int), parameter, public :: GL_LUMINANCE16_ALPHA16     = int(z'8048')
    integer(c_int), parameter, public :: GL_INTENSITY               = int(z'8049')
    integer(c_int), parameter, public :: GL_INTENSITY4              = int(z'804A')
    integer(c_int), parameter, public :: GL_INTENSITY8              = int(z'804B')
    integer(c_int), parameter, public :: GL_INTENSITY12             = int(z'804C')
    integer(c_int), parameter, public :: GL_INTENSITY16             = int(z'804D')
    integer(c_int), parameter, public :: GL_R3_G3_B2                = int(z'2A10')
    integer(c_int), parameter, public :: GL_RGB4                    = int(z'804F')
    integer(c_int), parameter, public :: GL_RGB5                    = int(z'8050')
    integer(c_int), parameter, public :: GL_RGB8                    = int(z'8051')
    integer(c_int), parameter, public :: GL_RGB10                   = int(z'8052')
    integer(c_int), parameter, public :: GL_RGB12                   = int(z'8053')
    integer(c_int), parameter, public :: GL_RGB16                   = int(z'8054')
    integer(c_int), parameter, public :: GL_RGBA2                   = int(z'8055')
    integer(c_int), parameter, public :: GL_RGBA4                   = int(z'8056')
    integer(c_int), parameter, public :: GL_RGB5_A1                 = int(z'8057')
    integer(c_int), parameter, public :: GL_RGBA8                   = int(z'8058')
    integer(c_int), parameter, public :: GL_RGB10_A2                = int(z'8059')
    integer(c_int), parameter, public :: GL_RGBA12                  = int(z'805A')
    integer(c_int), parameter, public :: GL_RGBA16                  = int(z'805B')
    integer(c_int), parameter, public :: GL_CLIENT_PIXEL_STORE_BIT  = int(z'00000001')
    integer(c_int), parameter, public :: GL_CLIENT_VERTEX_ARRAY_BIT = int(z'00000002')
    integer(c_int), parameter, public :: GL_ALL_CLIENT_ATTRIB_BITS  = int(z'FFFFFFFF')
    integer(c_int), parameter, public :: GL_CLIENT_ALL_ATTRIB_BITS  = int(z'FFFFFFFF')

    ! OpenGL 1.2
    integer(c_int), parameter, public :: GL_RESCALE_NORMAL                = int(z'803A')
    integer(c_int), parameter, public :: GL_CLAMP_TO_EDGE                 = int(z'812F')
    integer(c_int), parameter, public :: GL_MAX_ELEMENTS_VERTICES         = int(z'80E8')
    integer(c_int), parameter, public :: GL_MAX_ELEMENTS_INDICES          = int(z'80E9')
    integer(c_int), parameter, public :: GL_BGR                           = int(z'80E0')
    integer(c_int), parameter, public :: GL_BGRA                          = int(z'80E1')
    integer(c_int), parameter, public :: GL_UNSIGNED_BYTE_3_3_2           = int(z'8032')
    integer(c_int), parameter, public :: GL_UNSIGNED_BYTE_2_3_3_REV       = int(z'8362')
    integer(c_int), parameter, public :: GL_UNSIGNED_SHORT_5_6_5          = int(z'8363')
    integer(c_int), parameter, public :: GL_UNSIGNED_SHORT_5_6_5_REV      = int(z'8364')
    integer(c_int), parameter, public :: GL_UNSIGNED_SHORT_4_4_4_4        = int(z'8033')
    integer(c_int), parameter, public :: GL_UNSIGNED_SHORT_4_4_4_4_REV    = int(z'8365')
    integer(c_int), parameter, public :: GL_UNSIGNED_SHORT_5_5_5_1        = int(z'8034')
    integer(c_int), parameter, public :: GL_UNSIGNED_SHORT_1_5_5_5_REV    = int(z'8366')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_8_8_8_8          = int(z'8035')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_8_8_8_8_REV      = int(z'8367')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_10_10_10_2       = int(z'8036')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_2_10_10_10_REV   = int(z'8368')
    integer(c_int), parameter, public :: GL_LIGHT_MODEL_COLOR_CONTROL     = int(z'81F8')
    integer(c_int), parameter, public :: GL_SINGLE_COLOR                  = int(z'81F9')
    integer(c_int), parameter, public :: GL_SEPARATE_SPECULAR_COLOR       = int(z'81FA')
    integer(c_int), parameter, public :: GL_TEXTURE_MIN_LOD               = int(z'813A')
    integer(c_int), parameter, public :: GL_TEXTURE_MAX_LOD               = int(z'813B')
    integer(c_int), parameter, public :: GL_TEXTURE_BASE_LEVEL            = int(z'813C')
    integer(c_int), parameter, public :: GL_TEXTURE_MAX_LEVEL             = int(z'813D')
    integer(c_int), parameter, public :: GL_SMOOTH_POINT_SIZE_RANGE       = int(z'0B12')
    integer(c_int), parameter, public :: GL_SMOOTH_POINT_SIZE_GRANULARITY = int(z'0B13')
    integer(c_int), parameter, public :: GL_SMOOTH_LINE_WIDTH_RANGE       = int(z'0B22')
    integer(c_int), parameter, public :: GL_SMOOTH_LINE_WIDTH_GRANULARITY = int(z'0B23')
    integer(c_int), parameter, public :: GL_ALIASED_POINT_SIZE_RANGE      = int(z'846D')
    integer(c_int), parameter, public :: GL_ALIASED_LINE_WIDTH_RANGE      = int(z'846E')
    integer(c_int), parameter, public :: GL_PACK_SKIP_IMAGES              = int(z'806B')
    integer(c_int), parameter, public :: GL_PACK_IMAGE_HEIGHT             = int(z'806C')
    integer(c_int), parameter, public :: GL_UNPACK_SKIP_IMAGES            = int(z'806D')
    integer(c_int), parameter, public :: GL_UNPACK_IMAGE_HEIGHT           = int(z'806E')
    integer(c_int), parameter, public :: GL_TEXTURE_3D                    = int(z'806F')
    integer(c_int), parameter, public :: GL_PROXY_TEXTURE_3D              = int(z'8070')
    integer(c_int), parameter, public :: GL_TEXTURE_DEPTH                 = int(z'8071')
    integer(c_int), parameter, public :: GL_TEXTURE_WRAP_R                = int(z'8072')
    integer(c_int), parameter, public :: GL_MAX_3D_TEXTURE_SIZE           = int(z'8073')
    integer(c_int), parameter, public :: GL_TEXTURE_BINDING_3D            = int(z'806A')

    ! GL_ARB_imaging
    integer(c_int), parameter, public :: GL_CONSTANT_COLOR                      = int(z'8001')
    integer(c_int), parameter, public :: GL_ONE_MINUS_CONSTANT_COLOR            = int(z'8002')
    integer(c_int), parameter, public :: GL_CONSTANT_ALPHA                      = int(z'8003')
    integer(c_int), parameter, public :: GL_ONE_MINUS_CONSTANT_ALPHA            = int(z'8004')
    integer(c_int), parameter, public :: GL_COLOR_TABLE                         = int(z'80D0')
    integer(c_int), parameter, public :: GL_POST_CONVOLUTION_COLOR_TABLE        = int(z'80D1')
    integer(c_int), parameter, public :: GL_POST_COLOR_MATRIX_COLOR_TABLE       = int(z'80D2')
    integer(c_int), parameter, public :: GL_PROXY_COLOR_TABLE                   = int(z'80D3')
    integer(c_int), parameter, public :: GL_PROXY_POST_CONVOLUTION_COLOR_TABLE  = int(z'80D4')
    integer(c_int), parameter, public :: GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE = int(z'80D5')
    integer(c_int), parameter, public :: GL_COLOR_TABLE_SCALE                   = int(z'80D6')
    integer(c_int), parameter, public :: GL_COLOR_TABLE_BIAS                    = int(z'80D7')
    integer(c_int), parameter, public :: GL_COLOR_TABLE_FORMAT                  = int(z'80D8')
    integer(c_int), parameter, public :: GL_COLOR_TABLE_WIDTH                   = int(z'80D9')
    integer(c_int), parameter, public :: GL_COLOR_TABLE_RED_SIZE                = int(z'80DA')
    integer(c_int), parameter, public :: GL_COLOR_TABLE_GREEN_SIZE              = int(z'80DB')
    integer(c_int), parameter, public :: GL_COLOR_TABLE_BLUE_SIZE               = int(z'80DC')
    integer(c_int), parameter, public :: GL_COLOR_TABLE_ALPHA_SIZE              = int(z'80DD')
    integer(c_int), parameter, public :: GL_COLOR_TABLE_LUMINANCE_SIZE          = int(z'80DE')
    integer(c_int), parameter, public :: GL_COLOR_TABLE_INTENSITY_SIZE          = int(z'80DF')
    integer(c_int), parameter, public :: GL_CONVOLUTION_1D                      = int(z'8010')
    integer(c_int), parameter, public :: GL_CONVOLUTION_2D                      = int(z'8011')
    integer(c_int), parameter, public :: GL_SEPARABLE_2D                        = int(z'8012')
    integer(c_int), parameter, public :: GL_CONVOLUTION_BORDER_MODE             = int(z'8013')
    integer(c_int), parameter, public :: GL_CONVOLUTION_FILTER_SCALE            = int(z'8014')
    integer(c_int), parameter, public :: GL_CONVOLUTION_FILTER_BIAS             = int(z'8015')
    integer(c_int), parameter, public :: GL_REDUCE                              = int(z'8016')
    integer(c_int), parameter, public :: GL_CONVOLUTION_FORMAT                  = int(z'8017')
    integer(c_int), parameter, public :: GL_CONVOLUTION_WIDTH                   = int(z'8018')
    integer(c_int), parameter, public :: GL_CONVOLUTION_HEIGHT                  = int(z'8019')
    integer(c_int), parameter, public :: GL_MAX_CONVOLUTION_WIDTH               = int(z'801A')
    integer(c_int), parameter, public :: GL_MAX_CONVOLUTION_HEIGHT              = int(z'801B')
    integer(c_int), parameter, public :: GL_POST_CONVOLUTION_RED_SCALE          = int(z'801C')
    integer(c_int), parameter, public :: GL_POST_CONVOLUTION_GREEN_SCALE        = int(z'801D')
    integer(c_int), parameter, public :: GL_POST_CONVOLUTION_BLUE_SCALE         = int(z'801E')
    integer(c_int), parameter, public :: GL_POST_CONVOLUTION_ALPHA_SCALE        = int(z'801F')
    integer(c_int), parameter, public :: GL_POST_CONVOLUTION_RED_BIAS           = int(z'8020')
    integer(c_int), parameter, public :: GL_POST_CONVOLUTION_GREEN_BIAS         = int(z'8021')
    integer(c_int), parameter, public :: GL_POST_CONVOLUTION_BLUE_BIAS          = int(z'8022')
    integer(c_int), parameter, public :: GL_POST_CONVOLUTION_ALPHA_BIAS         = int(z'8023')
    integer(c_int), parameter, public :: GL_CONSTANT_BORDER                     = int(z'8151')
    integer(c_int), parameter, public :: GL_REPLICATE_BORDER                    = int(z'8153')
    integer(c_int), parameter, public :: GL_CONVOLUTION_BORDER_COLOR            = int(z'8154')
    integer(c_int), parameter, public :: GL_COLOR_MATRIX                        = int(z'80B1')
    integer(c_int), parameter, public :: GL_COLOR_MATRIX_STACK_DEPTH            = int(z'80B2')
    integer(c_int), parameter, public :: GL_MAX_COLOR_MATRIX_STACK_DEPTH        = int(z'80B3')
    integer(c_int), parameter, public :: GL_POST_COLOR_MATRIX_RED_SCALE         = int(z'80B4')
    integer(c_int), parameter, public :: GL_POST_COLOR_MATRIX_GREEN_SCALE       = int(z'80B5')
    integer(c_int), parameter, public :: GL_POST_COLOR_MATRIX_BLUE_SCALE        = int(z'80B6')
    integer(c_int), parameter, public :: GL_POST_COLOR_MATRIX_ALPHA_SCALE       = int(z'80B7')
    integer(c_int), parameter, public :: GL_POST_COLOR_MATRIX_RED_BIAS          = int(z'80B8')
    integer(c_int), parameter, public :: GL_POST_COLOR_MATRIX_GREEN_BIAS        = int(z'80B9')
    integer(c_int), parameter, public :: GL_POST_COLOR_MATRIX_BLUE_BIAS         = int(z'80BA')
    integer(c_int), parameter, public :: GL_POST_COLOR_MATRIX_ALPHA_BIAS        = int(z'80BB')
    integer(c_int), parameter, public :: GL_HISTOGRAM                           = int(z'8024')
    integer(c_int), parameter, public :: GL_PROXY_HISTOGRAM                     = int(z'8025')
    integer(c_int), parameter, public :: GL_HISTOGRAM_WIDTH                     = int(z'8026')
    integer(c_int), parameter, public :: GL_HISTOGRAM_FORMAT                    = int(z'8027')
    integer(c_int), parameter, public :: GL_HISTOGRAM_RED_SIZE                  = int(z'8028')
    integer(c_int), parameter, public :: GL_HISTOGRAM_GREEN_SIZE                = int(z'8029')
    integer(c_int), parameter, public :: GL_HISTOGRAM_BLUE_SIZE                 = int(z'802A')
    integer(c_int), parameter, public :: GL_HISTOGRAM_ALPHA_SIZE                = int(z'802B')
    integer(c_int), parameter, public :: GL_HISTOGRAM_LUMINANCE_SIZE            = int(z'802C')
    integer(c_int), parameter, public :: GL_HISTOGRAM_SINK                      = int(z'802D')
    integer(c_int), parameter, public :: GL_MINMAX                              = int(z'802E')
    integer(c_int), parameter, public :: GL_MINMAX_FORMAT                       = int(z'802F')
    integer(c_int), parameter, public :: GL_MINMAX_SINK                         = int(z'8030')
    integer(c_int), parameter, public :: GL_TABLE_TOO_LARGE                     = int(z'8031')
    integer(c_int), parameter, public :: GL_BLEND_EQUATION                      = int(z'8009')
    integer(c_int), parameter, public :: GL_MIN                                 = int(z'8007')
    integer(c_int), parameter, public :: GL_MAX                                 = int(z'8008')
    integer(c_int), parameter, public :: GL_FUNC_ADD                            = int(z'8006')
    integer(c_int), parameter, public :: GL_FUNC_SUBTRACT                       = int(z'800A')
    integer(c_int), parameter, public :: GL_FUNC_REVERSE_SUBTRACT               = int(z'800B')
    integer(c_int), parameter, public :: GL_BLEND_COLOR                         = int(z'8005')

    ! OpenGL 1.3
    ! multitexture
    integer(c_int), parameter, public :: GL_TEXTURE0                       = int(z'84C0')
    integer(c_int), parameter, public :: GL_TEXTURE1                       = int(z'84C1')
    integer(c_int), parameter, public :: GL_TEXTURE2                       = int(z'84C2')
    integer(c_int), parameter, public :: GL_TEXTURE3                       = int(z'84C3')
    integer(c_int), parameter, public :: GL_TEXTURE4                       = int(z'84C4')
    integer(c_int), parameter, public :: GL_TEXTURE5                       = int(z'84C5')
    integer(c_int), parameter, public :: GL_TEXTURE6                       = int(z'84C6')
    integer(c_int), parameter, public :: GL_TEXTURE7                       = int(z'84C7')
    integer(c_int), parameter, public :: GL_TEXTURE8                       = int(z'84C8')
    integer(c_int), parameter, public :: GL_TEXTURE9                       = int(z'84C9')
    integer(c_int), parameter, public :: GL_TEXTURE10                      = int(z'84CA')
    integer(c_int), parameter, public :: GL_TEXTURE11                      = int(z'84CB')
    integer(c_int), parameter, public :: GL_TEXTURE12                      = int(z'84CC')
    integer(c_int), parameter, public :: GL_TEXTURE13                      = int(z'84CD')
    integer(c_int), parameter, public :: GL_TEXTURE14                      = int(z'84CE')
    integer(c_int), parameter, public :: GL_TEXTURE15                      = int(z'84CF')
    integer(c_int), parameter, public :: GL_TEXTURE16                      = int(z'84D0')
    integer(c_int), parameter, public :: GL_TEXTURE17                      = int(z'84D1')
    integer(c_int), parameter, public :: GL_TEXTURE18                      = int(z'84D2')
    integer(c_int), parameter, public :: GL_TEXTURE19                      = int(z'84D3')
    integer(c_int), parameter, public :: GL_TEXTURE20                      = int(z'84D4')
    integer(c_int), parameter, public :: GL_TEXTURE21                      = int(z'84D5')
    integer(c_int), parameter, public :: GL_TEXTURE22                      = int(z'84D6')
    integer(c_int), parameter, public :: GL_TEXTURE23                      = int(z'84D7')
    integer(c_int), parameter, public :: GL_TEXTURE24                      = int(z'84D8')
    integer(c_int), parameter, public :: GL_TEXTURE25                      = int(z'84D9')
    integer(c_int), parameter, public :: GL_TEXTURE26                      = int(z'84DA')
    integer(c_int), parameter, public :: GL_TEXTURE27                      = int(z'84DB')
    integer(c_int), parameter, public :: GL_TEXTURE28                      = int(z'84DC')
    integer(c_int), parameter, public :: GL_TEXTURE29                      = int(z'84DD')
    integer(c_int), parameter, public :: GL_TEXTURE30                      = int(z'84DE')
    integer(c_int), parameter, public :: GL_TEXTURE31                      = int(z'84DF')
    integer(c_int), parameter, public :: GL_ACTIVE_TEXTURE                 = int(z'84E0')
    integer(c_int), parameter, public :: GL_CLIENT_ACTIVE_TEXTURE          = int(z'84E1')
    integer(c_int), parameter, public :: GL_MAX_TEXTURE_UNITS              = int(z'84E2')
    ! texture_cube_map
    integer(c_int), parameter, public :: GL_NORMAL_MAP                     = int(z'8511')
    integer(c_int), parameter, public :: GL_REFLECTION_MAP                 = int(z'8512')
    integer(c_int), parameter, public :: GL_TEXTURE_CUBE_MAP               = int(z'8513')
    integer(c_int), parameter, public :: GL_TEXTURE_BINDING_CUBE_MAP       = int(z'8514')
    integer(c_int), parameter, public :: GL_TEXTURE_CUBE_MAP_POSITIVE_X    = int(z'8515')
    integer(c_int), parameter, public :: GL_TEXTURE_CUBE_MAP_NEGATIVE_X    = int(z'8516')
    integer(c_int), parameter, public :: GL_TEXTURE_CUBE_MAP_POSITIVE_Y    = int(z'8517')
    integer(c_int), parameter, public :: GL_TEXTURE_CUBE_MAP_NEGATIVE_Y    = int(z'8518')
    integer(c_int), parameter, public :: GL_TEXTURE_CUBE_MAP_POSITIVE_Z    = int(z'8519')
    integer(c_int), parameter, public :: GL_TEXTURE_CUBE_MAP_NEGATIVE_Z    = int(z'851A')
    integer(c_int), parameter, public :: GL_PROXY_TEXTURE_CUBE_MAP         = int(z'851B')
    integer(c_int), parameter, public :: GL_MAX_CUBE_MAP_TEXTURE_SIZE      = int(z'851C')
    ! texture_compression
    integer(c_int), parameter, public :: GL_COMPRESSED_ALPHA               = int(z'84E9')
    integer(c_int), parameter, public :: GL_COMPRESSED_LUMINANCE           = int(z'84EA')
    integer(c_int), parameter, public :: GL_COMPRESSED_LUMINANCE_ALPHA     = int(z'84EB')
    integer(c_int), parameter, public :: GL_COMPRESSED_INTENSITY           = int(z'84EC')
    integer(c_int), parameter, public :: GL_COMPRESSED_RGB                 = int(z'84ED')
    integer(c_int), parameter, public :: GL_COMPRESSED_RGBA                = int(z'84EE')
    integer(c_int), parameter, public :: GL_TEXTURE_COMPRESSION_HINT       = int(z'84EF')
    integer(c_int), parameter, public :: GL_TEXTURE_COMPRESSED_IMAGE_SIZE  = int(z'86A0')
    integer(c_int), parameter, public :: GL_TEXTURE_COMPRESSED             = int(z'86A1')
    integer(c_int), parameter, public :: GL_NUM_COMPRESSED_TEXTURE_FORMATS = int(z'86A2')
    integer(c_int), parameter, public :: GL_COMPRESSED_TEXTURE_FORMATS     = int(z'86A3')
    ! multisample
    integer(c_int), parameter, public :: GL_MULTISAMPLE                    = int(z'809D')
    integer(c_int), parameter, public :: GL_SAMPLE_ALPHA_TO_COVERAGE       = int(z'809E')
    integer(c_int), parameter, public :: GL_SAMPLE_ALPHA_TO_ONE            = int(z'809F')
    integer(c_int), parameter, public :: GL_SAMPLE_COVERAGE                = int(z'80A0')
    integer(c_int), parameter, public :: GL_SAMPLE_BUFFERS                 = int(z'80A8')
    integer(c_int), parameter, public :: GL_SAMPLES                        = int(z'80A9')
    integer(c_int), parameter, public :: GL_SAMPLE_COVERAGE_VALUE          = int(z'80AA')
    integer(c_int), parameter, public :: GL_SAMPLE_COVERAGE_INVERT         = int(z'80AB')
    integer(c_int), parameter, public :: GL_MULTISAMPLE_BIT                = int(z'20000000')
    ! transpose_matrix
    integer(c_int), parameter, public :: GL_TRANSPOSE_MODELVIEW_MATRIX     = int(z'84E3')
    integer(c_int), parameter, public :: GL_TRANSPOSE_PROJECTION_MATRIX    = int(z'84E4')
    integer(c_int), parameter, public :: GL_TRANSPOSE_TEXTURE_MATRIX       = int(z'84E5')
    integer(c_int), parameter, public :: GL_TRANSPOSE_COLOR_MATRIX         = int(z'84E6')
    ! texture_env_combine
    integer(c_int), parameter, public :: GL_COMBINE                        = int(z'8570')
    integer(c_int), parameter, public :: GL_COMBINE_RGB                    = int(z'8571')
    integer(c_int), parameter, public :: GL_COMBINE_ALPHA                  = int(z'8572')
    integer(c_int), parameter, public :: GL_SOURCE0_RGB                    = int(z'8580')
    integer(c_int), parameter, public :: GL_SOURCE1_RGB                    = int(z'8581')
    integer(c_int), parameter, public :: GL_SOURCE2_RGB                    = int(z'8582')
    integer(c_int), parameter, public :: GL_SOURCE0_ALPHA                  = int(z'8588')
    integer(c_int), parameter, public :: GL_SOURCE1_ALPHA                  = int(z'8589')
    integer(c_int), parameter, public :: GL_SOURCE2_ALPHA                  = int(z'858A')
    integer(c_int), parameter, public :: GL_OPERAND0_RGB                   = int(z'8590')
    integer(c_int), parameter, public :: GL_OPERAND1_RGB                   = int(z'8591')
    integer(c_int), parameter, public :: GL_OPERAND2_RGB                   = int(z'8592')
    integer(c_int), parameter, public :: GL_OPERAND0_ALPHA                 = int(z'8598')
    integer(c_int), parameter, public :: GL_OPERAND1_ALPHA                 = int(z'8599')
    integer(c_int), parameter, public :: GL_OPERAND2_ALPHA                 = int(z'859A')
    integer(c_int), parameter, public :: GL_RGB_SCALE                      = int(z'8573')
    integer(c_int), parameter, public :: GL_ADD_SIGNED                     = int(z'8574')
    integer(c_int), parameter, public :: GL_INTERPOLATE                    = int(z'8575')
    integer(c_int), parameter, public :: GL_SUBTRACT                       = int(z'84E7')
    integer(c_int), parameter, public :: GL_CONSTANT                       = int(z'8576')
    integer(c_int), parameter, public :: GL_PRIMARY_COLOR                  = int(z'8577')
    integer(c_int), parameter, public :: GL_PREVIOUS                       = int(z'8578')
    ! texture_env_dot3
    integer(c_int), parameter, public :: GL_DOT3_RGB                       = int(z'86AE')
    integer(c_int), parameter, public :: GL_DOT3_RGBA                      = int(z'86AF')
    ! texture_border_clamp
    integer(c_int), parameter, public :: GL_CLAMP_TO_BORDER                = int(z'812D')

    ! GL_ARB_multitexture (ARB extension 1 and OpenGL 1.2.1)
    integer(c_int), parameter, public :: GL_TEXTURE0_ARB              = int(z'84C0')
    integer(c_int), parameter, public :: GL_TEXTURE1_ARB              = int(z'84C1')
    integer(c_int), parameter, public :: GL_TEXTURE2_ARB              = int(z'84C2')
    integer(c_int), parameter, public :: GL_TEXTURE3_ARB              = int(z'84C3')
    integer(c_int), parameter, public :: GL_TEXTURE4_ARB              = int(z'84C4')
    integer(c_int), parameter, public :: GL_TEXTURE5_ARB              = int(z'84C5')
    integer(c_int), parameter, public :: GL_TEXTURE6_ARB              = int(z'84C6')
    integer(c_int), parameter, public :: GL_TEXTURE7_ARB              = int(z'84C7')
    integer(c_int), parameter, public :: GL_TEXTURE8_ARB              = int(z'84C8')
    integer(c_int), parameter, public :: GL_TEXTURE9_ARB              = int(z'84C9')
    integer(c_int), parameter, public :: GL_TEXTURE10_ARB             = int(z'84CA')
    integer(c_int), parameter, public :: GL_TEXTURE11_ARB             = int(z'84CB')
    integer(c_int), parameter, public :: GL_TEXTURE12_ARB             = int(z'84CC')
    integer(c_int), parameter, public :: GL_TEXTURE13_ARB             = int(z'84CD')
    integer(c_int), parameter, public :: GL_TEXTURE14_ARB             = int(z'84CE')
    integer(c_int), parameter, public :: GL_TEXTURE15_ARB             = int(z'84CF')
    integer(c_int), parameter, public :: GL_TEXTURE16_ARB             = int(z'84D0')
    integer(c_int), parameter, public :: GL_TEXTURE17_ARB             = int(z'84D1')
    integer(c_int), parameter, public :: GL_TEXTURE18_ARB             = int(z'84D2')
    integer(c_int), parameter, public :: GL_TEXTURE19_ARB             = int(z'84D3')
    integer(c_int), parameter, public :: GL_TEXTURE20_ARB             = int(z'84D4')
    integer(c_int), parameter, public :: GL_TEXTURE21_ARB             = int(z'84D5')
    integer(c_int), parameter, public :: GL_TEXTURE22_ARB             = int(z'84D6')
    integer(c_int), parameter, public :: GL_TEXTURE23_ARB             = int(z'84D7')
    integer(c_int), parameter, public :: GL_TEXTURE24_ARB             = int(z'84D8')
    integer(c_int), parameter, public :: GL_TEXTURE25_ARB             = int(z'84D9')
    integer(c_int), parameter, public :: GL_TEXTURE26_ARB             = int(z'84DA')
    integer(c_int), parameter, public :: GL_TEXTURE27_ARB             = int(z'84DB')
    integer(c_int), parameter, public :: GL_TEXTURE28_ARB             = int(z'84DC')
    integer(c_int), parameter, public :: GL_TEXTURE29_ARB             = int(z'84DD')
    integer(c_int), parameter, public :: GL_TEXTURE30_ARB             = int(z'84DE')
    integer(c_int), parameter, public :: GL_TEXTURE31_ARB             = int(z'84DF')
    integer(c_int), parameter, public :: GL_ACTIVE_TEXTURE_ARB        = int(z'84E0')
    integer(c_int), parameter, public :: GL_CLIENT_ACTIVE_TEXTURE_ARB = int(z'84E1')
    integer(c_int), parameter, public :: GL_MAX_TEXTURE_UNITS_ARB     = int(z'84E2')

    public :: glAccum
    public :: glActiveTexture
    public :: glActiveTextureARB
    public :: glAlphaFunc
    public :: glAreTexturesResident
    public :: glArrayElement
    public :: glBegin
    public :: glBindTexture
    public :: glBitmap
    public :: glBlendColor
    public :: glBlendEquation
    public :: glBlendFunc
    public :: glCallList
    public :: glCallLists
    public :: glClear
    public :: glClearAccum
    public :: glClearColor
    public :: glClearDepth
    public :: glClearIndex
    public :: glClearStencil
    public :: glClientActiveTexture
    public :: glClientActiveTextureARB
    public :: glClipPlane
    public :: glColor3b
    public :: glColor3bv
    public :: glColor3d
    public :: glColor3dv
    public :: glColor3f
    public :: glColor3fv
    public :: glColor3i
    public :: glColor3iv
    public :: glColor3s
    public :: glColor3sv
    public :: glColor3ub
    public :: glColor3ubv
    public :: glColor3ui
    public :: glColor3uiv
    public :: glColor3us
    public :: glColor3usv
    public :: glColor4b
    public :: glColor4bv
    public :: glColor4d
    public :: glColor4dv
    public :: glColor4f
    public :: glColor4fv
    public :: glColor4i
    public :: glColor4iv
    public :: glColor4s
    public :: glColor4sv
    public :: glColor4ub
    public :: glColor4ubv
    public :: glColor4ui
    public :: glColor4uiv
    public :: glColor4us
    public :: glColor4usv
    public :: glColorMask
    public :: glColorMaterial
    public :: glColorPointer
    public :: glColorSubTable
    public :: glColorTable
    public :: glColorTableParameterfv
    public :: glColorTableParameteriv
    public :: glCompressedTexImage1D
    public :: glCompressedTexImage2D
    public :: glCompressedTexImage3D
    public :: glCompressedTexSubImage1D
    public :: glCompressedTexSubImage2D
    public :: glCompressedTexSubImage3D
    public :: glConvolutionFilter1D
    public :: glConvolutionFilter2D
    public :: glConvolutionParameterf
    public :: glConvolutionParameterfv
    public :: glConvolutionParameteri
    public :: glConvolutionParameteriv
    public :: glCopyColorSubTable
    public :: glCopyColorTable
    public :: glCopyConvolutionFilter1D
    public :: glCopyConvolutionFilter2D
    public :: glCopyPixels
    public :: glCopyTexImage1D
    public :: glCopyTexImage2D
    public :: glCopyTexSubImage1D
    public :: glCopyTexSubImage2D
    public :: glCopyTexSubImage3D
    public :: glCullFace
    public :: glDeleteLists
    public :: glDeleteTextures
    public :: glDepthFunc
    public :: glDepthMask
    public :: glDepthRange
    public :: glDisable
    public :: glDisableClientState
    public :: glDrawArrays
    public :: glDrawBuffer
    public :: glDrawElements
    public :: glDrawPixels
    public :: glDrawRangeElements
    public :: glEdgeFlag
    public :: glEdgeFlagPointer
    public :: glEdgeFlagv
    public :: glEnable
    public :: glEnableClientState
    public :: glEnd
    public :: glEndList
    public :: glEvalCoord1d
    public :: glEvalCoord1dv
    public :: glEvalCoord1f
    public :: glEvalCoord1fv
    public :: glEvalCoord2d
    public :: glEvalCoord2dv
    public :: glEvalCoord2f
    public :: glEvalCoord2fv
    public :: glEvalMesh1
    public :: glEvalMesh2
    public :: glEvalPoint1
    public :: glEvalPoint2
    public :: glFeedbackBuffer
    public :: glFinish
    public :: glFlush
    public :: glFogf
    public :: glFogfv
    public :: glFogi
    public :: glFogiv
    public :: glFrontFace
    public :: glFrustum
    public :: glGenLists
    public :: glGenTextures
    public :: glGetBooleanv
    public :: glGetClipPlane
    public :: glGetColorTable
    public :: glGetColorTableParameterfv
    public :: glGetColorTableParameteriv
    public :: glGetCompressedTexImage
    public :: glGetConvolutionFilter
    public :: glGetConvolutionParameterfv
    public :: glGetConvolutionParameteriv
    public :: glGetDoublev
    public :: glGetError
    public :: glGetFloatv
    public :: glGetHistogram
    public :: glGetHistogramParameterfv
    public :: glGetHistogramParameteriv
    public :: glGetIntegerv
    public :: glGetLightfv
    public :: glGetLightiv
    public :: glGetMapdv
    public :: glGetMapfv
    public :: glGetMapiv
    public :: glGetMaterialfv
    public :: glGetMaterialiv
    public :: glGetMinmax
    public :: glGetMinmaxParameterfv
    public :: glGetMinmaxParameteriv
    public :: glGetPixelMapfv
    public :: glGetPixelMapuiv
    public :: glGetPixelMapusv
    public :: glGetPointerv
    public :: glGetPolygonStipple
    public :: glGetSeparableFilter
    public :: glGetString
    public :: glGetTexEnvfv
    public :: glGetTexEnviv
    public :: glGetTexGendv
    public :: glGetTexGenfv
    public :: glGetTexGeniv
    public :: glGetTexImage
    public :: glGetTexLevelParameterfv
    public :: glGetTexLevelParameteriv
    public :: glGetTexParameterfv
    public :: glGetTexParameteriv
    public :: glHint
    public :: glHistogram
    public :: glIndexMask
    public :: glIndexPointer
    public :: glIndexd
    public :: glIndexdv
    public :: glIndexf
    public :: glIndexfv
    public :: glIndexi
    public :: glIndexiv
    public :: glIndexs
    public :: glIndexsv
    public :: glIndexub
    public :: glIndexubv
    public :: glInitNames
    public :: glInterleavedArrays
    public :: glIsEnabled
    public :: glIsList
    public :: glIsTexture
    public :: glLightModelf
    public :: glLightModelfv
    public :: glLightModeli
    public :: glLightModeliv
    public :: glLightf
    public :: glLightfv
    public :: glLighti
    public :: glLightiv
    public :: glLineStipple
    public :: glLineWidth
    public :: glListBase
    public :: glLoadIdentity
    public :: glLoadMatrixd
    public :: glLoadMatrixf
    public :: glLoadName
    public :: glLoadTransposeMatrixd
    public :: glLoadTransposeMatrixf
    public :: glLogicOp
    public :: glMap1d
    public :: glMap1f
    public :: glMap2d
    public :: glMap2f
    public :: glMapGrid1d
    public :: glMapGrid1f
    public :: glMapGrid2d
    public :: glMapGrid2f
    public :: glMaterialf
    public :: glMaterialfv
    public :: glMateriali
    public :: glMaterialiv
    public :: glMatrixMode
    public :: glMinmax
    public :: glMultMatrixd
    public :: glMultMatrixf
    public :: glMultTransposeMatrixd
    public :: glMultTransposeMatrixf
    public :: glMultiTexCoord1d
    public :: glMultiTexCoord1dARB
    public :: glMultiTexCoord1dv
    public :: glMultiTexCoord1dvARB
    public :: glMultiTexCoord1f
    public :: glMultiTexCoord1fARB
    public :: glMultiTexCoord1fv
    public :: glMultiTexCoord1fvARB
    public :: glMultiTexCoord1i
    public :: glMultiTexCoord1iARB
    public :: glMultiTexCoord1iv
    public :: glMultiTexCoord1ivARB
    public :: glMultiTexCoord1s
    public :: glMultiTexCoord1sARB
    public :: glMultiTexCoord1sv
    public :: glMultiTexCoord1svARB
    public :: glMultiTexCoord2d
    public :: glMultiTexCoord2dARB
    public :: glMultiTexCoord2dv
    public :: glMultiTexCoord2dvARB
    public :: glMultiTexCoord2f
    public :: glMultiTexCoord2fARB
    public :: glMultiTexCoord2fv
    public :: glMultiTexCoord2fvARB
    public :: glMultiTexCoord2i
    public :: glMultiTexCoord2iARB
    public :: glMultiTexCoord2iv
    public :: glMultiTexCoord2ivARB
    public :: glMultiTexCoord2s
    public :: glMultiTexCoord2sARB
    public :: glMultiTexCoord2sv
    public :: glMultiTexCoord2svARB
    public :: glMultiTexCoord3d
    public :: glMultiTexCoord3dARB
    public :: glMultiTexCoord3dv
    public :: glMultiTexCoord3dvARB
    public :: glMultiTexCoord3f
    public :: glMultiTexCoord3fARB
    public :: glMultiTexCoord3fv
    public :: glMultiTexCoord3fvARB
    public :: glMultiTexCoord3i
    public :: glMultiTexCoord3iARB
    public :: glMultiTexCoord3iv
    public :: glMultiTexCoord3ivARB
    public :: glMultiTexCoord3s
    public :: glMultiTexCoord3sARB
    public :: glMultiTexCoord3sv
    public :: glMultiTexCoord3svARB
    public :: glMultiTexCoord4d
    public :: glMultiTexCoord4dARB
    public :: glMultiTexCoord4dv
    public :: glMultiTexCoord4dvARB
    public :: glMultiTexCoord4f
    public :: glMultiTexCoord4fARB
    public :: glMultiTexCoord4fv
    public :: glMultiTexCoord4fvARB
    public :: glMultiTexCoord4i
    public :: glMultiTexCoord4iARB
    public :: glMultiTexCoord4iv
    public :: glMultiTexCoord4ivARB
    public :: glMultiTexCoord4s
    public :: glMultiTexCoord4sARB
    public :: glMultiTexCoord4sv
    public :: glMultiTexCoord4svARB
    public :: glNewList
    public :: glNormal3b
    public :: glNormal3bv
    public :: glNormal3d
    public :: glNormal3dv
    public :: glNormal3f
    public :: glNormal3fv
    public :: glNormal3i
    public :: glNormal3iv
    public :: glNormal3s
    public :: glNormal3sv
    public :: glNormalPointer
    public :: glOrtho
    public :: glPassThrough
    public :: glPixelMapfv
    public :: glPixelMapuiv
    public :: glPixelMapusv
    public :: glPixelStoref
    public :: glPixelStorei
    public :: glPixelTransferf
    public :: glPixelTransferi
    public :: glPixelZoom
    public :: glPointSize
    public :: glPolygonMode
    public :: glPolygonOffset
    public :: glPolygonStipple
    public :: glPopAttrib
    public :: glPopClientAttrib
    public :: glPopMatrix
    public :: glPopName
    public :: glPrioritizeTextures
    public :: glPushAttrib
    public :: glPushClientAttrib
    public :: glPushMatrix
    public :: glPushName
    public :: glRasterPos2d
    public :: glRasterPos2dv
    public :: glRasterPos2f
    public :: glRasterPos2fv
    public :: glRasterPos2i
    public :: glRasterPos2iv
    public :: glRasterPos2s
    public :: glRasterPos2sv
    public :: glRasterPos3d
    public :: glRasterPos3dv
    public :: glRasterPos3f
    public :: glRasterPos3fv
    public :: glRasterPos3i
    public :: glRasterPos3iv
    public :: glRasterPos3s
    public :: glRasterPos3sv
    public :: glRasterPos4d
    public :: glRasterPos4dv
    public :: glRasterPos4f
    public :: glRasterPos4fv
    public :: glRasterPos4i
    public :: glRasterPos4iv
    public :: glRasterPos4s
    public :: glRasterPos4sv
    public :: glReadBuffer
    public :: glReadPixels
    public :: glRectd
    public :: glRectdv
    public :: glRectf
    public :: glRectfv
    public :: glRecti
    public :: glRectiv
    public :: glRects
    public :: glRectsv
    public :: glRenderMode
    public :: glResetHistogram
    public :: glResetMinmax
    public :: glRotated
    public :: glRotatef
    public :: glSampleCoverage
    public :: glScaled
    public :: glScalef
    public :: glScissor
    public :: glSelectBuffer
    public :: glSeparableFilter2D
    public :: glShadeModel
    public :: glStencilFunc
    public :: glStencilMask
    public :: glStencilOp
    public :: glTexCoord1d
    public :: glTexCoord1dv
    public :: glTexCoord1f
    public :: glTexCoord1fv
    public :: glTexCoord1i
    public :: glTexCoord1iv
    public :: glTexCoord1s
    public :: glTexCoord1sv
    public :: glTexCoord2d
    public :: glTexCoord2dv
    public :: glTexCoord2f
    public :: glTexCoord2fv
    public :: glTexCoord2i
    public :: glTexCoord2iv
    public :: glTexCoord2s
    public :: glTexCoord2sv
    public :: glTexCoord3d
    public :: glTexCoord3dv
    public :: glTexCoord3f
    public :: glTexCoord3fv
    public :: glTexCoord3i
    public :: glTexCoord3iv
    public :: glTexCoord3s
    public :: glTexCoord3sv
    public :: glTexCoord4d
    public :: glTexCoord4dv
    public :: glTexCoord4f
    public :: glTexCoord4fv
    public :: glTexCoord4i
    public :: glTexCoord4iv
    public :: glTexCoord4s
    public :: glTexCoord4sv
    public :: glTexCoordPointer
    public :: glTexEnvf
    public :: glTexEnvfv
    public :: glTexEnvi
    public :: glTexEnviv
    public :: glTexGend
    public :: glTexGendv
    public :: glTexGenf
    public :: glTexGenfv
    public :: glTexGeni
    public :: glTexGeniv
    public :: glTexImage1D
    public :: glTexImage2D
    public :: glTexImage3D
    public :: glTexParameterf
    public :: glTexParameterfv
    public :: glTexParameteri
    public :: glTexParameteriv
    public :: glTexSubImage1D
    public :: glTexSubImage2D
    public :: glTexSubImage3D
    public :: glTranslated
    public :: glTranslatef
    public :: glVertex2d
    public :: glVertex2dv
    public :: glVertex2f
    public :: glVertex2fv
    public :: glVertex2i
    public :: glVertex2iv
    public :: glVertex2s
    public :: glVertex2sv
    public :: glVertex3d
    public :: glVertex3dv
    public :: glVertex3f
    public :: glVertex3fv
    public :: glVertex3i
    public :: glVertex3iv
    public :: glVertex3s
    public :: glVertex3sv
    public :: glVertex4d
    public :: glVertex4dv
    public :: glVertex4f
    public :: glVertex4fv
    public :: glVertex4i
    public :: glVertex4iv
    public :: glVertex4s
    public :: glVertex4sv
    public :: glVertexPointer
    public :: glViewport

    interface
        ! void glAccum(GLenum op, GLfloat value)
        subroutine glAccum(op, value) bind(c, name='glAccum')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: op
            real(GLfloat),   intent(in), value :: value
        end subroutine glAccum

        ! void glActiveTexture(GLenum texture)
        subroutine glActiveTexture(texture) bind(c, name='glActiveTexture')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: texture
        end subroutine glActiveTexture

        ! void glActiveTextureARB(GLenum texture)
        subroutine glActiveTextureARB(texture) bind(c, name='glActiveTextureARB')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: texture
        end subroutine glActiveTextureARB

        ! void glAlphaFunc(GLenum func, GLclampf ref)
        subroutine glAlphaFunc(func, ref) bind(c, name='glAlphaFunc')
            import :: GLclampf, GLenum
            implicit none
            integer(GLenum), intent(in), value :: func
            real(GLclampf),  intent(in), value :: ref
        end subroutine glAlphaFunc

        ! GLboolean glAreTexturesResident(GLsizei n, const GLuint *textures, GLboolean *residences)
        function glAreTexturesResident(n, textures, residences) bind(c, name='glAreTexturesResident')
            import :: GLboolean, GLsizei, GLuint
            implicit none
            integer(GLsizei),   intent(in), value :: n
            integer(GLuint),    intent(in)        :: textures(*)
            integer(GLboolean), intent(out)       :: residences(*)
            integer(Glboolean)                    :: glAreTexturesResident
        end function glAreTexturesResident

        ! void glArrayElement(GLint i)
        subroutine glArrayElement(i) bind(c, name='glArrayElement')
            import :: GLint
            implicit none
            integer(GLint), intent(in), value :: i
        end subroutine glArrayElement

        ! void glBegin(GLenum mode)
        subroutine glBegin(mode) bind(c, name='glBegin')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: mode
        end subroutine glBegin

        ! void glBindTexture(GLenum target, GLuint texture)
        subroutine glBindTexture(target, texture) bind(c, name='glBindTexture')
            import :: GLenum, GLuint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLuint), intent(in), value :: texture
        end subroutine glBindTexture

        ! void glBitmap(GLsizei width, GLsizei height, GLfloat xorig, GLfloat yorig, GLfloat xmove, GLfloat ymove, const GLubyte *bitmap)
        subroutine glBitmap(width, height, xorig, yorig, xmove, ymove, bitmap) bind(c, name='glBitmap')
            import :: GLfloat, GLsizei, GLubyte
            implicit none
            integer(GLsizei), intent(in), value :: width
            integer(GLsizei), intent(in), value :: height
            real(GLfloat),    intent(in), value :: xorig
            real(GLfloat),    intent(in), value :: yorig
            real(GLfloat),    intent(in), value :: xmove
            real(GLfloat),    intent(in), value :: ymove
            integer(GLubyte), intent(in)        :: bitmap(*)
        end subroutine glBitmap

        ! void glBlendColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)
        subroutine glBlendColor(red, green, blue, alpha) bind(c, name='glBlendColor')
            import :: GLclampf
            implicit none
            real(GLclampf), intent(in), value :: red
            real(GLclampf), intent(in), value :: green
            real(GLclampf), intent(in), value :: blue
            real(GLclampf), intent(in), value :: alpha
        end subroutine glBlendColor

        ! void glBlendEquation(GLenum mode)
        subroutine glBlendEquation(mode) bind(c, name='glBlendEquation')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: mode
        end subroutine glBlendEquation

        ! void glBlendFunc(GLenum sfactor, GLenum dfactor)
        subroutine glBlendFunc(sfactor, dfactor) bind(c, name='glBlendFunc')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: sfactor
            integer(GLenum), intent(in), value :: dfactor
        end subroutine glBlendFunc

        ! void glCallList(GLuint list)
        subroutine glCallList(list) bind(c, name='glCallList')
            import :: GLuint
            implicit none
            integer(GLuint), intent(in), value :: list
        end subroutine glCallList

        ! void glCallLists(GLsizei n, GLenum type, const GLvoid *lists)
        subroutine glCallLists(n, type, lists) bind(c, name='glCallLists')
            import :: GLenum, GLsizei, c_ptr
            implicit none
            integer(GLsizei), intent(in), value :: n
            integer(GLenum),  intent(in), value :: type
            type(c_ptr),      intent(in), value :: lists
        end subroutine glCallLists

        ! void glClear(GLbitfield mask)
        subroutine glClear(mask) bind(c, name='glClear')
            import :: GLbitfield
            implicit none
            integer(Glbitfield), intent(in), value :: mask
        end subroutine glClear

        ! void glClearAccum(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha)
        subroutine glClearAccum(red, green, blue, alpha) bind(c, name='glClearAccum')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: red
            real(GLfloat), intent(in), value :: green
            real(GLfloat), intent(in), value :: blue
            real(GLfloat), intent(in), value :: alpha
        end subroutine glClearAccum

        ! void glClearColor(GLclampf red, GLclampf green, GLclampf blue, GLclampf alpha)
        subroutine glClearColor(red, green, blue, alpha) bind(c, name='glClearColor')
            import :: GLclampf
            implicit none
            real(GLclampf), intent(in), value :: red
            real(GLclampf), intent(in), value :: green
            real(GLclampf), intent(in), value :: blue
            real(GLclampf), intent(in), value :: alpha
        end subroutine glClearColor

        ! void glClearDepth(GLclampd depth)
        subroutine glClearDepth(depth) bind(c, name='glClearDepth')
            import :: GLclampd
            implicit none
            real(GLclampd), intent(in), value :: depth
        end subroutine glClearDepth

        ! void glClearIndex(GLfloat c)
        subroutine glClearIndex(c) bind(c, name='glClearIndex')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: c
        end subroutine glClearIndex

        ! void glClearStencil(GLint s)
        subroutine glClearStencil(s) bind(c, name='glClearStencil')
            import :: GLint
            implicit none
            integer(GLint), intent(in), value :: s
        end subroutine glClearStencil

        ! void glClientActiveTexture(GLenum texture)
        subroutine glClientActiveTexture(texture) bind(c, name='glClientActiveTexture')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: texture
        end subroutine glClientActiveTexture

        ! void glClientActiveTextureARB(GLenum texture)
        subroutine glClientActiveTextureARB(texture) bind(c, name='glClientActiveTextureARB')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: texture
        end subroutine glClientActiveTextureARB

        ! void glClipPlane(GLenum plane, const GLdouble *equation)
        subroutine glClipPlane(plane, equation) bind(c, name='glClipPlane')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: plane
            real(GLdouble),  intent(in)        :: equation(*)
        end subroutine glClipPlane

        ! void glColor3b(GLbyte red, GLbyte green, GLbyte blue)
        subroutine glColor3b(red, green, blue) bind(c, name='glColor3b')
            import :: GLbyte
            implicit none
            integer(GLbyte), intent(in), value :: red
            integer(GLbyte), intent(in), value :: green
            integer(GLbyte), intent(in), value :: blue
        end subroutine glColor3b

        ! void glColor3bv(const GLbyte *v)
        subroutine glColor3bv(v) bind(c, name='glColor3bv')
            import :: GLbyte
            implicit none
            integer(GLbyte), intent(in) :: v(*)
        end subroutine glColor3bv

        ! void glColor3d(GLdouble red, GLdouble green, GLdouble blue)
        subroutine glColor3d(red, green, blue) bind(c, name='glColor3d')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: red
            real(GLdouble), intent(in), value :: green
            real(GLdouble), intent(in), value :: blue
        end subroutine glColor3d

        ! void glColor3dv(const GLdouble *v)
        subroutine glColor3dv(v) bind(c, name='glColor3dv')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in) :: v(*)
        end subroutine glColor3dv

        ! void glColor3f(GLfloat red, GLfloat green, GLfloat blue)
        subroutine glColor3f(red, green, blue) bind(c, name='glColor3f')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: red
            real(GLfloat), intent(in), value :: green
            real(GLfloat), intent(in), value :: blue
        end subroutine glColor3f

        ! void glColor3fv(const GLfloat *v)
        subroutine glColor3fv(v) bind(c, name='glColor3fv')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in) :: v(*)
        end subroutine glColor3fv

        ! void glColor3i(GLint red, GLint green, GLint blue)
        subroutine glColor3i(red, green, blue) bind(c, name='glColor3i')
            import :: GLint
            implicit none
            integer(GLint), intent(in), value :: red
            integer(GLint), intent(in), value :: green
            integer(GLint), intent(in), value :: blue
        end subroutine glColor3i

        ! void glColor3iv(const GLint *v)
        subroutine glColor3iv(v) bind(c, name='glColor3iv')
            import :: GLint
            implicit none
            integer(GLint), intent(in) :: v(*)
        end subroutine glColor3iv

        ! void glColor3s(GLshort red, GLshort green, GLshort blue)
        subroutine glColor3s(red, green, blue) bind(c, name='glColor3s')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in), value :: red
            integer(GLshort), intent(in), value :: green
            integer(GLshort), intent(in), value :: blue
        end subroutine glColor3s

        ! void glColor3sv(const GLshort *v)
        subroutine glColor3sv(v) bind(c, name='glColor3sv')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in) :: v(*)
        end subroutine glColor3sv

        ! void glColor3ub(GLubyte red, GLubyte green, GLubyte blue)
        subroutine glColor3ub(red, green, blue) bind(c, name='glColor3ub')
            import :: GLubyte
            implicit none
            integer(GLubyte), intent(in), value :: red
            integer(GLubyte), intent(in), value :: green
            integer(GLubyte), intent(in), value :: blue
        end subroutine glColor3ub

        ! void glColor3ubv(const GLubyte *v)
        subroutine glColor3ubv(v) bind(c, name='glColor3ubv')
            import :: GLubyte
            implicit none
            integer(GLubyte), intent(in) :: v(*)
        end subroutine glColor3ubv

        ! void glColor3ui(GLuint red, GLuint green, GLuint blue)
        subroutine glColor3ui(red, green, blue) bind(c, name='glColor3ui')
            import :: GLuint
            implicit none
            integer(GLuint), intent(in), value :: red
            integer(GLuint), intent(in), value :: green
            integer(GLuint), intent(in), value :: blue
        end subroutine glColor3ui

        ! void glColor3uiv(const GLuint *v)
        subroutine glColor3uiv(v) bind(c, name='glColor3uiv')
            import :: GLuint
            implicit none
            integer(GLuint), intent(in) :: v(*)
        end subroutine glColor3uiv

        ! void glColor3us(GLushort red, GLushort green, GLushort blue)
        subroutine glColor3us(red, green, blue) bind(c, name='glColor3us')
            import :: GLushort
            implicit none
            integer(GLushort), intent(in), value :: red
            integer(GLushort), intent(in), value :: green
            integer(GLushort), intent(in), value :: blue
        end subroutine glColor3us

        ! void glColor3usv(const GLushort *v)
        subroutine glColor3usv(v) bind(c, name='glColor3usv')
            import :: GLushort
            implicit none
            integer(GLushort), intent(in) :: v(*)
        end subroutine glColor3usv

        ! void glColor4b(GLbyte red, GLbyte green, GLbyte blue, GLbyte alpha)
        subroutine glColor4b(red, green, blue, alpha) bind(c, name='glColor4b')
            import :: GLbyte
            implicit none
            integer(GLbyte), intent(in), value :: red
            integer(GLbyte), intent(in), value :: green
            integer(GLbyte), intent(in), value :: blue
            integer(GLbyte), intent(in), value :: alpha
        end subroutine glColor4b

        ! void glColor4bv(const GLbyte *v)
        subroutine glColor4bv(v) bind(c, name='glColor4bv')
            import :: GLbyte
            implicit none
            integer(GLbyte), intent(in) :: v(*)
        end subroutine glColor4bv

        ! void glColor4d(GLdouble red, GLdouble green, GLdouble blue, GLdouble alpha)
        subroutine glColor4d(red, green, blue, alpha) bind(c, name='glColor4d')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: red
            real(GLdouble), intent(in), value :: green
            real(GLdouble), intent(in), value :: blue
            real(GLdouble), intent(in), value :: alpha
        end subroutine glColor4d

        ! void glColor4dv(const GLdouble *v)
        subroutine glColor4dv(v) bind(c, name='glColor4dv')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in) :: v(*)
        end subroutine glColor4dv

        ! void glColor4f(GLfloat red, GLfloat green, GLfloat blue, GLfloat alpha)
        subroutine glColor4f(red, green, blue, alpha) bind(c, name='glColor4f')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: red
            real(GLfloat), intent(in), value :: green
            real(GLfloat), intent(in), value :: blue
            real(GLfloat), intent(in), value :: alpha
        end subroutine glColor4f

        ! void glColor4fv(const GLfloat *v)
        subroutine glColor4fv(v) bind(c, name='glColor4fv')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in) :: v(*)
        end subroutine glColor4fv

        ! void glColor4i(GLint red, GLint green, GLint blue, GLint alpha)
        subroutine glColor4i(red, green, blue, alpha) bind(c, name='glColor4i')
            import :: GLint
            implicit none
            integer(GLint), intent(in), value :: red
            integer(GLint), intent(in), value :: green
            integer(GLint), intent(in), value :: blue
            integer(GLint), intent(in), value :: alpha
        end subroutine glColor4i

        ! void glColor4iv(const GLint *v)
        subroutine glColor4iv(v) bind(c, name='glColor4iv')
            import :: GLint
            implicit none
            integer(GLint), intent(in) :: v(*)
        end subroutine glColor4iv

        ! void glColor4s(GLshort red, GLshort green, GLshort blue, GLshort alpha)
        subroutine glColor4s(red, green, blue, alpha) bind(c, name='glColor4s')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in), value :: red
            integer(GLshort), intent(in), value :: green
            integer(GLshort), intent(in), value :: blue
            integer(GLshort), intent(in), value :: alpha
        end subroutine glColor4s

        ! void glColor4sv(const GLshort *v)
        subroutine glColor4sv(v) bind(c, name='glColor4sv')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in) :: v(*)
        end subroutine glColor4sv

        ! void glColor4ub(GLubyte red, GLubyte green, GLubyte blue, GLubyte alpha)
        subroutine glColor4ub(red, green, blue, alpha) bind(c, name='glColor4ub')
            import :: GLubyte
            implicit none
            integer(GLubyte), intent(in), value :: red
            integer(GLubyte), intent(in), value :: green
            integer(GLubyte), intent(in), value :: blue
            integer(GLubyte), intent(in), value :: alpha
        end subroutine glColor4ub

        ! void glColor4ubv(const GLubyte *v)
        subroutine glColor4ubv(v) bind(c, name='glColor4ubv')
            import :: GLubyte
            implicit none
            integer(GLubyte), intent(in) :: v(*)
        end subroutine glColor4ubv

        ! void glColor4ui(GLuint red, GLuint green, GLuint blue, GLuint alpha)
        subroutine glColor4ui(red, green, blue, alpha) bind(c, name='glColor4ui')
            import :: GLuint
            implicit none
            integer(GLuint), intent(in), value :: red
            integer(GLuint), intent(in), value :: green
            integer(GLuint), intent(in), value :: blue
            integer(GLuint), intent(in), value :: alpha
        end subroutine glColor4ui

        ! void glColor4uiv(const GLuint *v)
        subroutine glColor4uiv(v) bind(c, name='glColor4uiv')
            import :: GLuint
            implicit none
            integer(GLuint), intent(in) :: v(*)
        end subroutine glColor4uiv

        ! void glColor4us(GLushort red, GLushort green, GLushort blue, GLushort alpha)
        subroutine glColor4us(red, green, blue, alpha) bind(c, name='glColor4us')
            import :: GLushort
            implicit none
            integer(GLushort), intent(in), value :: red
            integer(GLushort), intent(in), value :: green
            integer(GLushort), intent(in), value :: blue
            integer(GLushort), intent(in), value :: alpha
        end subroutine glColor4us

        ! void glColor4usv(const GLushort *v)
        subroutine glColor4usv(v) bind(c, name='glColor4usv')
            import :: GLushort
            implicit none
            integer(GLushort), intent(in) :: v(*)
        end subroutine glColor4usv

        ! void glColorMask(GLboolean red, GLboolean green, GLboolean blue, GLboolean alpha)
        subroutine glColorMask(red, green, blue, alpha) bind(c, name='glColorMask')
            import :: GLboolean
            implicit none
            integer(Glboolean), intent(in), value :: red
            integer(Glboolean), intent(in), value :: green
            integer(Glboolean), intent(in), value :: blue
            integer(Glboolean), intent(in), value :: alpha
        end subroutine glColorMask

        ! void glColorMaterial(GLenum face, GLenum mode)
        subroutine glColorMaterial(face, mode) bind(c, name='glColorMaterial')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: face
            integer(GLenum), intent(in), value :: mode
        end subroutine glColorMaterial

        ! void glColorPointer(GLint size, GLenum type, GLsizei stride, const GLvoid *ptr)
        subroutine glColorPointer(size, type, stride, ptr) bind(c, name='glColorPointer')
            import :: GLenum, GLint, GLsizei, c_ptr
            implicit none
            integer(GLint),   intent(in), value :: size
            integer(GLenum),  intent(in), value :: type
            integer(GLsizei), intent(in), value :: stride
            type(c_ptr),      intent(in), value :: ptr
        end subroutine glColorPointer

        ! void glColorSubTable(GLenum target, GLsizei start, GLsizei count, GLenum format, GLenum type, const GLvoid *data)
        subroutine glColorSubTable(target, start, count, format, type, data) bind(c, name='glColorSubTable')
            import :: GLenum, GLsizei, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLsizei), intent(in), value :: start
            integer(GLsizei), intent(in), value :: count
            integer(GLenum),  intent(in), value :: format
            integer(GLenum),  intent(in), value :: type
            type(c_ptr),      intent(in), value :: data
        end subroutine glColorSubTable

        ! void glColorTable(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid *table)
        subroutine glColorTable(target, internalformat, width, format, type, table) bind(c, name='glColorTable')
            import :: GLenum, GLsizei, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLenum),  intent(in), value :: internalformat
            integer(GLsizei), intent(in), value :: width
            integer(GLenum),  intent(in), value :: format
            integer(GLenum),  intent(in), value :: type
            type(c_ptr),      intent(in), value :: table
        end subroutine glColorTable

        ! void glColorTableParameterfv(GLenum target, GLenum pname, const GLfloat *params)
        subroutine glColorTableParameterfv(target, pname, params) bind(c, name='glColorTableParameterfv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(in)        :: params(*)
        end subroutine glColorTableParameterfv

        ! void glColorTableParameteriv(GLenum target, GLenum pname, const GLint *params)
        subroutine glColorTableParameteriv(target, pname, params) bind(c, name='glColorTableParameteriv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(in)        :: params(*)
        end subroutine glColorTableParameteriv

        ! void glCompressedTexImage1D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLint border, GLsizei imageSize, const GLvoid *data)
        subroutine glCompressedTexImage1D(target, level, internalformat, width, border, imageSize, data) bind(c, name='glCompressedTexImage1D')
            import :: GLenum, GLint, GLsizei, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLint),   intent(in), value :: level
            integer(GLenum),  intent(in), value :: internalformat
            integer(GLsizei), intent(in), value :: width
            integer(GLint),   intent(in), value :: border
            integer(GLsizei), intent(in), value :: imageSize
            type(c_ptr),      intent(in), value :: data
        end subroutine glCompressedTexImage1D

        ! void glCompressedTexImage2D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLint border, GLsizei imageSize, const GLvoid *data)
        subroutine glCompressedTexImage2D(target, level, internalformat, width, height, border, imageSize, data) bind(c, name='glCompressedTexImage2D')
            import :: GLenum, GLint, GLsizei, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLint),   intent(in), value :: level
            integer(GLenum),  intent(in), value :: internalformat
            integer(GLsizei), intent(in), value :: width
            integer(GLsizei), intent(in), value :: height
            integer(GLint),   intent(in), value :: border
            integer(GLsizei), intent(in), value :: imageSize
            type(c_ptr),      intent(in), value :: data
        end subroutine glCompressedTexImage2D

        ! void glCompressedTexImage3D(GLenum target, GLint level, GLenum internalformat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLsizei imageSize, const GLvoid *data)
        subroutine glCompressedTexImage3D(target, level, internalformat, width, height, depth, border, imageSize, data) bind(c, name='glCompressedTexImage3D')
            import :: GLenum, GLint, GLsizei, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLint),   intent(in), value :: level
            integer(GLenum),  intent(in), value :: internalformat
            integer(GLsizei), intent(in), value :: width
            integer(GLsizei), intent(in), value :: height
            integer(GLsizei), intent(in), value :: depth
            integer(GLint),   intent(in), value :: border
            integer(GLsizei), intent(in), value :: imageSize
            type(c_ptr),      intent(in), value :: data
        end subroutine glCompressedTexImage3D

        ! void glCompressedTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLsizei imageSize, const GLvoid *data)
        subroutine glCompressedTexSubImage1D(target, level, xoffset, width, format, imageSize, data) bind(c, name='glCompressedTexSubImage1D')
            import :: GLenum, GLint, GLsizei, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLint),   intent(in), value :: level
            integer(GLint),   intent(in), value :: xoffset
            integer(GLsizei), intent(in), value :: width
            integer(GLenum),  intent(in), value :: format
            integer(GLsizei), intent(in), value :: imageSize
            type(c_ptr),      intent(in), value :: data
        end subroutine glCompressedTexSubImage1D

        ! void glCompressedTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLsizei imageSize, const GLvoid *data)
        subroutine glCompressedTexSubImage2D(target, level, xoffset, yoffset, width, height, format, imageSize, data) bind(c, name='glCompressedTexSubImage2D')
            import :: GLenum, GLint, GLsizei, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLint),   intent(in), value :: level
            integer(GLint),   intent(in), value :: xoffset
            integer(GLint),   intent(in), value :: yoffset
            integer(GLsizei), intent(in), value :: width
            integer(GLsizei), intent(in), value :: height
            integer(GLenum),  intent(in), value :: format
            integer(GLsizei), intent(in), value :: imageSize
            type(c_ptr),      intent(in), value :: data
        end subroutine glCompressedTexSubImage2D

        ! void glCompressedTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLsizei imageSize, const GLvoid *data)
        subroutine glCompressedTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, imageSize, data) bind(c, name='glCompressedTexSubImage3D')
            import :: GLenum, GLint, GLsizei, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLint),   intent(in), value :: level
            integer(GLint),   intent(in), value :: xoffset
            integer(GLint),   intent(in), value :: yoffset
            integer(GLint),   intent(in), value :: zoffset
            integer(GLsizei), intent(in), value :: width
            integer(GLsizei), intent(in), value :: height
            integer(GLsizei), intent(in), value :: depth
            integer(GLenum),  intent(in), value :: format
            integer(GLsizei), intent(in), value :: imageSize
            type(c_ptr),      intent(in), value :: data
        end subroutine glCompressedTexSubImage3D

        ! void glConvolutionFilter1D(GLenum target, GLenum internalformat, GLsizei width, GLenum format, GLenum type, const GLvoid *image)
        subroutine glConvolutionFilter1D(target, internalformat, width, format, type, image) bind(c, name='glConvolutionFilter1D')
            import :: GLenum, GLsizei, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLenum),  intent(in), value :: internalformat
            integer(GLsizei), intent(in), value :: width
            integer(GLenum),  intent(in), value :: format
            integer(GLenum),  intent(in), value :: type
            type(c_ptr),      intent(in), value :: image
        end subroutine glConvolutionFilter1D

        ! void glConvolutionFilter2D(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *image)
        subroutine glConvolutionFilter2D(target, internalformat, width, height, format, type, image) bind(c, name='glConvolutionFilter2D')
            import :: GLenum, GLsizei, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLenum),  intent(in), value :: internalformat
            integer(GLsizei), intent(in), value :: width
            integer(GLsizei), intent(in), value :: height
            integer(GLenum),  intent(in), value :: format
            integer(GLenum),  intent(in), value :: type
            type(c_ptr),      intent(in), value :: image
        end subroutine glConvolutionFilter2D

        ! void glConvolutionParameterf(GLenum target, GLenum pname, GLfloat params)
        subroutine glConvolutionParameterf(target, pname, params) bind(c, name='glConvolutionParameterf')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(in), value :: params
        end subroutine glConvolutionParameterf

        ! void glConvolutionParameterfv(GLenum target, GLenum pname, const GLfloat *params)
        subroutine glConvolutionParameterfv(target, pname, params) bind(c, name='glConvolutionParameterfv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(in)        :: params(*)
        end subroutine glConvolutionParameterfv

        ! void glConvolutionParameteri(GLenum target, GLenum pname, GLint params)
        subroutine glConvolutionParameteri(target, pname, params) bind(c, name='glConvolutionParameteri')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(in), value :: params
        end subroutine glConvolutionParameteri

        ! void glConvolutionParameteriv(GLenum target, GLenum pname, const GLint *params)
        subroutine glConvolutionParameteriv(target, pname, params) bind(c, name='glConvolutionParameteriv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(in)        :: params(*)
        end subroutine glConvolutionParameteriv

        ! void glCopyColorSubTable(GLenum target, GLsizei start, GLint x, GLint y, GLsizei width)
        subroutine glCopyColorSubTable(target, start, x, y, width) bind(c, name='glCopyColorSubTable')
            import :: GLenum, GLint, GLsizei
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLsizei), intent(in), value :: start
            integer(GLint),   intent(in), value :: x
            integer(GLint),   intent(in), value :: y
            integer(GLsizei), intent(in), value :: width
        end subroutine glCopyColorSubTable

        ! void glCopyColorTable(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)
        subroutine glCopyColorTable(target, internalformat, x, y, width) bind(c, name='glCopyColorTable')
            import :: GLenum, GLint, GLsizei
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLenum),  intent(in), value :: internalformat
            integer(GLint),   intent(in), value :: x
            integer(GLint),   intent(in), value :: y
            integer(GLsizei), intent(in), value :: width
        end subroutine glCopyColorTable

        ! void glCopyConvolutionFilter1D(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width)
        subroutine glCopyConvolutionFilter1D(target, internalformat, x, y, width) bind(c, name='glCopyConvolutionFilter1D')
            import :: GLenum, GLint, GLsizei
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLenum),  intent(in), value :: internalformat
            integer(GLint),   intent(in), value :: x
            integer(GLint),   intent(in), value :: y
            integer(GLsizei), intent(in), value :: width
        end subroutine glCopyConvolutionFilter1D

        ! void glCopyConvolutionFilter2D(GLenum target, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height)
        subroutine glCopyConvolutionFilter2D(target, internalformat, x, y, width, height) bind(c, name='glCopyConvolutionFilter2D')
            import :: GLenum, GLint, GLsizei
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLenum),  intent(in), value :: internalformat
            integer(GLint),   intent(in), value :: x
            integer(GLint),   intent(in), value :: y
            integer(GLsizei), intent(in), value :: width
            integer(GLsizei), intent(in), value :: height
        end subroutine glCopyConvolutionFilter2D

        ! void glCopyPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum type)
        subroutine glCopyPixels(x, y, width, height, type) bind(c, name='glCopyPixels')
            import :: GLenum, GLint, GLsizei
            implicit none
            integer(GLint),   intent(in), value :: x
            integer(GLint),   intent(in), value :: y
            integer(GLsizei), intent(in), value :: width
            integer(GLsizei), intent(in), value :: height
            integer(GLenum),  intent(in), value :: type
        end subroutine glCopyPixels

        ! void glCopyTexImage1D(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLint border)
        subroutine glCopyTexImage1D(target, level, internalformat, x, y, width, border) bind(c, name='glCopyTexImage1D')
            import :: GLenum, GLint, GLsizei
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLint),   intent(in), value :: level
            integer(GLenum),  intent(in), value :: internalformat
            integer(GLint),   intent(in), value :: x
            integer(GLint),   intent(in), value :: y
            integer(GLsizei), intent(in), value :: width
            integer(GLint),   intent(in), value :: border
        end subroutine glCopyTexImage1D

        ! void glCopyTexImage2D(GLenum target, GLint level, GLenum internalformat, GLint x, GLint y, GLsizei width, GLsizei height, GLint border)
        subroutine glCopyTexImage2D(target, level, internalformat, x, y, width, height, border) bind(c, name='glCopyTexImage2D')
            import :: GLenum, GLint, GLsizei
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLint),   intent(in), value :: level
            integer(GLenum),  intent(in), value :: internalformat
            integer(GLint),   intent(in), value :: x
            integer(GLint),   intent(in), value :: y
            integer(GLsizei), intent(in), value :: width
            integer(GLsizei), intent(in), value :: height
            integer(GLint),   intent(in), value :: border
        end subroutine glCopyTexImage2D

        ! void glCopyTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLint x, GLint y, GLsizei width)
        subroutine glCopyTexSubImage1D(target, level, xoffset, x, y, width) bind(c, name='glCopyTexSubImage1D')
            import :: GLenum, GLint, GLsizei
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLint),   intent(in), value :: level
            integer(GLint),   intent(in), value :: xoffset
            integer(GLint),   intent(in), value :: x
            integer(GLint),   intent(in), value :: y
            integer(GLsizei), intent(in), value :: width
        end subroutine glCopyTexSubImage1D

        ! void glCopyTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint x, GLint y, GLsizei width, GLsizei height)
        subroutine glCopyTexSubImage2D(target, level, xoffset, yoffset, x, y, width, height) bind(c, name='glCopyTexSubImage2D')
            import :: GLenum, GLint, GLsizei
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLint),   intent(in), value :: level
            integer(GLint),   intent(in), value :: xoffset
            integer(GLint),   intent(in), value :: yoffset
            integer(GLint),   intent(in), value :: x
            integer(GLint),   intent(in), value :: y
            integer(GLsizei), intent(in), value :: width
            integer(GLsizei), intent(in), value :: height
        end subroutine glCopyTexSubImage2D

        ! void glCopyTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLint x, GLint y, GLsizei width, GLsizei height)
        subroutine glCopyTexSubImage3D(target, level, xoffset, yoffset, zoffset, x, y, width, height) bind(c, name='glCopyTexSubImage3D')
            import :: GLenum, GLint, GLsizei
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLint),   intent(in), value :: level
            integer(GLint),   intent(in), value :: xoffset
            integer(GLint),   intent(in), value :: yoffset
            integer(GLint),   intent(in), value :: zoffset
            integer(GLint),   intent(in), value :: x
            integer(GLint),   intent(in), value :: y
            integer(GLsizei), intent(in), value :: width
            integer(GLsizei), intent(in), value :: height
        end subroutine glCopyTexSubImage3D

        ! void glCullFace(GLenum mode)
        subroutine glCullFace(mode) bind(c, name='glCullFace')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: mode
        end subroutine glCullFace

        ! void glDeleteLists(GLuint list, GLsizei range)
        subroutine glDeleteLists(list, range) bind(c, name='glDeleteLists')
            import :: GLsizei, GLuint
            implicit none
            integer(GLuint),  intent(in), value :: list
            integer(GLsizei), intent(in), value :: range
        end subroutine glDeleteLists

        ! void glDeleteTextures(GLsizei n, const GLuint *textures)
        subroutine glDeleteTextures(n, textures) bind(c, name='glDeleteTextures')
            import :: GLsizei, GLuint
            implicit none
            integer(GLsizei), intent(in), value :: n
            integer(GLuint),  intent(in)        :: textures(*)
        end subroutine glDeleteTextures

        ! void glDepthFunc(GLenum func)
        subroutine glDepthFunc(func) bind(c, name='glDepthFunc')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: func
        end subroutine glDepthFunc

        ! void glDepthMask(GLboolean flag)
        subroutine glDepthMask(flag) bind(c, name='glDepthMask')
            import :: GLboolean
            implicit none
            integer(Glboolean), intent(in), value :: flag
        end subroutine glDepthMask

        ! void glDepthRange(GLclampd near_val, GLclampd far_val)
        subroutine glDepthRange(near_val, far_val) bind(c, name='glDepthRange')
            import :: GLclampd
            implicit none
            real(GLclampd), intent(in), value :: near_val
            real(GLclampd), intent(in), value :: far_val
        end subroutine glDepthRange

        ! void glDisable(GLenum cap)
        subroutine glDisable(cap) bind(c, name='glDisable')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: cap
        end subroutine glDisable

        ! void glDisableClientState(GLenum cap)
        subroutine glDisableClientState(cap) bind(c, name='glDisableClientState')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: cap
        end subroutine glDisableClientState

        ! void glDrawArrays(GLenum mode, GLint first, GLsizei count)
        subroutine glDrawArrays(mode, first, count) bind(c, name='glDrawArrays')
            import :: GLenum, GLint, GLsizei
            implicit none
            integer(GLenum),  intent(in), value :: mode
            integer(GLint),   intent(in), value :: first
            integer(GLsizei), intent(in), value :: count
        end subroutine glDrawArrays

        ! void glDrawBuffer(GLenum mode)
        subroutine glDrawBuffer(mode) bind(c, name='glDrawBuffer')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: mode
        end subroutine glDrawBuffer

        ! void glDrawElements(GLenum mode, GLsizei count, GLenum type, const GLvoid *indices)
        subroutine glDrawElements(mode, count, type, indices) bind(c, name='glDrawElements')
            import :: GLenum, GLsizei, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: mode
            integer(GLsizei), intent(in), value :: count
            integer(GLenum),  intent(in), value :: type
            type(c_ptr),      intent(in), value :: indices
        end subroutine glDrawElements

        ! void glDrawPixels(GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *pixels)
        subroutine glDrawPixels(width, height, format, type, pixels) bind(c, name='glDrawPixels')
            import :: GLenum, GLsizei, c_ptr
            implicit none
            integer(GLsizei), intent(in), value :: width
            integer(GLsizei), intent(in), value :: height
            integer(GLenum),  intent(in), value :: format
            integer(GLenum),  intent(in), value :: type
            type(c_ptr),      intent(in), value :: pixels
        end subroutine glDrawPixels

        ! void glDrawRangeElements(GLenum mode, GLuint start, GLuint end, GLsizei count, GLenum type, const GLvoid *indices)
        subroutine glDrawRangeElements(mode, start, end, count, type, indices) bind(c, name='glDrawRangeElements')
            import :: GLenum, GLsizei, GLuint, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: mode
            integer(GLuint),  intent(in), value :: start
            integer(GLuint),  intent(in), value :: end
            integer(GLsizei), intent(in), value :: count
            integer(GLenum),  intent(in), value :: type
            type(c_ptr),      intent(in), value :: indices
        end subroutine glDrawRangeElements

        ! void glEdgeFlag(GLboolean flag)
        subroutine glEdgeFlag(flag) bind(c, name='glEdgeFlag')
            import :: GLboolean
            implicit none
            integer(Glboolean), intent(in), value :: flag
        end subroutine glEdgeFlag

        ! void glEdgeFlagPointer(GLsizei stride, const GLvoid *ptr)
        subroutine glEdgeFlagPointer(stride, ptr) bind(c, name='glEdgeFlagPointer')
            import :: GLsizei, c_ptr
            implicit none
            integer(GLsizei), intent(in), value :: stride
            type(c_ptr),      intent(in), value :: ptr
        end subroutine glEdgeFlagPointer

        ! void glEdgeFlagv(const GLboolean *flag)
        subroutine glEdgeFlagv(flag) bind(c, name='glEdgeFlagv')
            import :: GLboolean
            implicit none
            integer(GLboolean), intent(in) :: flag(*)
        end subroutine glEdgeFlagv

        ! void glEnable(GLenum cap)
        subroutine glEnable(cap) bind(c, name='glEnable')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: cap
        end subroutine glEnable

        ! void glEnableClientState(GLenum cap)
        subroutine glEnableClientState(cap) bind(c, name='glEnableClientState')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: cap
        end subroutine glEnableClientState

        ! void glEnd(void)
        subroutine glEnd() bind(c, name='glEnd')
        end subroutine glEnd

        ! void glEndList(void)
        subroutine glEndList() bind(c, name='glEndList')
        end subroutine glEndList

        ! void glEvalCoord1d(GLdouble u)
        subroutine glEvalCoord1d(u) bind(c, name='glEvalCoord1d')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: u
        end subroutine glEvalCoord1d

        ! void glEvalCoord1dv(const GLdouble *u)
        subroutine glEvalCoord1dv(u) bind(c, name='glEvalCoord1dv')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in) :: u(*)
        end subroutine glEvalCoord1dv

        ! void glEvalCoord1f(GLfloat u)
        subroutine glEvalCoord1f(u) bind(c, name='glEvalCoord1f')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: u
        end subroutine glEvalCoord1f

        ! void glEvalCoord1fv(const GLfloat *u)
        subroutine glEvalCoord1fv(u) bind(c, name='glEvalCoord1fv')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in) :: u(*)
        end subroutine glEvalCoord1fv

        ! void glEvalCoord2d(GLdouble u, GLdouble v)
        subroutine glEvalCoord2d(u, v) bind(c, name='glEvalCoord2d')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: u
            real(GLdouble), intent(in), value :: v
        end subroutine glEvalCoord2d

        ! void glEvalCoord2dv(const GLdouble *u)
        subroutine glEvalCoord2dv(u) bind(c, name='glEvalCoord2dv')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in) :: u(*)
        end subroutine glEvalCoord2dv

        ! void glEvalCoord2f(GLfloat u, GLfloat v)
        subroutine glEvalCoord2f(u, v) bind(c, name='glEvalCoord2f')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: u
            real(GLfloat), intent(in), value :: v
        end subroutine glEvalCoord2f

        ! void glEvalCoord2fv(const GLfloat *u)
        subroutine glEvalCoord2fv(u) bind(c, name='glEvalCoord2fv')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in) :: u(*)
        end subroutine glEvalCoord2fv

        ! void glEvalMesh1(GLenum mode, GLint i1, GLint i2)
        subroutine glEvalMesh1(mode, i1, i2) bind(c, name='glEvalMesh1')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: mode
            integer(GLint),  intent(in), value :: i1
            integer(GLint),  intent(in), value :: i2
        end subroutine glEvalMesh1

        ! void glEvalMesh2(GLenum mode, GLint i1, GLint i2, GLint j1, GLint j2)
        subroutine glEvalMesh2(mode, i1, i2, j1, j2) bind(c, name='glEvalMesh2')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: mode
            integer(GLint),  intent(in), value :: i1
            integer(GLint),  intent(in), value :: i2
            integer(GLint),  intent(in), value :: j1
            integer(GLint),  intent(in), value :: j2
        end subroutine glEvalMesh2

        ! void glEvalPoint1(GLint i)
        subroutine glEvalPoint1(i) bind(c, name='glEvalPoint1')
            import :: GLint
            implicit none
            integer(GLint), intent(in), value :: i
        end subroutine glEvalPoint1

        ! void glEvalPoint2(GLint i, GLint j)
        subroutine glEvalPoint2(i, j) bind(c, name='glEvalPoint2')
            import :: GLint
            implicit none
            integer(GLint), intent(in), value :: i
            integer(GLint), intent(in), value :: j
        end subroutine glEvalPoint2

        ! void glFeedbackBuffer(GLsizei size, GLenum type, GLfloat *buffer)
        subroutine glFeedbackBuffer(size, type, buffer) bind(c, name='glFeedbackBuffer')
            import :: GLenum, GLfloat, GLsizei
            implicit none
            integer(GLsizei), intent(in), value :: size
            integer(GLenum),  intent(in), value :: type
            real(GLfloat),    intent(out)       :: buffer(*)
        end subroutine glFeedbackBuffer

        ! void glFinish(void)
        subroutine glFinish() bind(c, name='glFinish')
        end subroutine glFinish

        ! void glFlush(void)
        subroutine glFlush() bind(c, name='glFlush')
        end subroutine glFlush

        ! void glFogf(GLenum pname, GLfloat param)
        subroutine glFogf(pname, param) bind(c, name='glFogf')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(in), value :: param
        end subroutine glFogf

        ! void glFogfv(GLenum pname, const GLfloat *params)
        subroutine glFogfv(pname, params) bind(c, name='glFogfv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(in)        :: params(*)
        end subroutine glFogfv

        ! void glFogi(GLenum pname, GLint param)
        subroutine glFogi(pname, param) bind(c, name='glFogi')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(in), value :: param
        end subroutine glFogi

        ! void glFogiv(GLenum pname, const GLint *params)
        subroutine glFogiv(pname, params) bind(c, name='glFogiv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(in)        :: params(*)
        end subroutine glFogiv

        ! void glFrontFace(GLenum mode)
        subroutine glFrontFace(mode) bind(c, name='glFrontFace')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: mode
        end subroutine glFrontFace

        ! void glFrustum(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble near_val, GLdouble far_val)
        subroutine glFrustum(left, right, bottom, top, near_val, far_val) bind(c, name='glFrustum')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: left
            real(GLdouble), intent(in), value :: right
            real(GLdouble), intent(in), value :: bottom
            real(GLdouble), intent(in), value :: top
            real(GLdouble), intent(in), value :: near_val
            real(GLdouble), intent(in), value :: far_val
        end subroutine glFrustum

        ! GLuint glGenLists(GLsizei range)
        function glGenLists(range) bind(c, name='glGenLists')
            import :: GLsizei, GLuint
            implicit none
            integer(GLsizei), intent(in), value :: range
            integer(GLuint)                     :: glGenLists
        end function glGenLists

        ! void glGenTextures(GLsizei n, GLuint *textures)
        subroutine glGenTextures(n, textures) bind(c, name='glGenTextures')
            import :: GLsizei, GLuint
            implicit none
            integer(GLsizei), intent(in), value :: n
            integer(GLuint),  intent(out)       :: textures(*)
        end subroutine glGenTextures

        ! void glGetBooleanv(GLenum pname, GLboolean *params)
        subroutine glGetBooleanv(pname, params) bind(c, name='glGetBooleanv')
            import :: GLboolean, GLenum
            implicit none
            integer(GLenum),    intent(in), value :: pname
            integer(GLboolean), intent(out)       :: params(*)
        end subroutine glGetBooleanv

        ! void glGetClipPlane(GLenum plane, GLdouble *equation)
        subroutine glGetClipPlane(plane, equation) bind(c, name='glGetClipPlane')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: plane
            real(GLdouble),  intent(out)       :: equation(*)
        end subroutine glGetClipPlane

        ! void glGetColorTable(GLenum target, GLenum format, GLenum type, GLvoid *table)
        subroutine glGetColorTable(target, format, type, table) bind(c, name='glGetColorTable')
            import :: GLenum, c_ptr
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: format
            integer(GLenum), intent(in), value :: type
            type(c_ptr),     intent(in), value :: table
        end subroutine glGetColorTable

        ! void glGetColorTableParameterfv(GLenum target, GLenum pname, GLfloat *params)
        subroutine glGetColorTableParameterfv(target, pname, params) bind(c, name='glGetColorTableParameterfv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(out)       :: params(*)
        end subroutine glGetColorTableParameterfv

        ! void glGetColorTableParameteriv(GLenum target, GLenum pname, GLint *params)
        subroutine glGetColorTableParameteriv(target, pname, params) bind(c, name='glGetColorTableParameteriv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(out)       :: params(*)
        end subroutine glGetColorTableParameteriv

        ! void glGetCompressedTexImage(GLenum target, GLint lod, GLvoid *img)
        subroutine glGetCompressedTexImage(target, lod, img) bind(c, name='glGetCompressedTexImage')
            import :: GLenum, GLint, c_ptr
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLint),  intent(in), value :: lod
            type(c_ptr),     intent(in), value :: img
        end subroutine glGetCompressedTexImage

        ! void glGetConvolutionFilter(GLenum target, GLenum format, GLenum type, GLvoid *image)
        subroutine glGetConvolutionFilter(target, format, type, image) bind(c, name='glGetConvolutionFilter')
            import :: GLenum, c_ptr
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: format
            integer(GLenum), intent(in), value :: type
            type(c_ptr),     intent(in), value :: image
        end subroutine glGetConvolutionFilter

        ! void glGetConvolutionParameterfv(GLenum target, GLenum pname, GLfloat *params)
        subroutine glGetConvolutionParameterfv(target, pname, params) bind(c, name='glGetConvolutionParameterfv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(out)       :: params(*)
        end subroutine glGetConvolutionParameterfv

        ! void glGetConvolutionParameteriv(GLenum target, GLenum pname, GLint *params)
        subroutine glGetConvolutionParameteriv(target, pname, params) bind(c, name='glGetConvolutionParameteriv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(out)       :: params(*)
        end subroutine glGetConvolutionParameteriv

        ! void glGetDoublev(GLenum pname, GLdouble *params)
        subroutine glGetDoublev(pname, params) bind(c, name='glGetDoublev')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: pname
            real(GLdouble),  intent(out)       :: params(*)
        end subroutine glGetDoublev

        ! GLenum glGetError(void)
        function glGetError() bind(c, name='glGetError')
            import :: GLenum
            implicit none
            integer(GLenum) :: glGetError
        end function glGetError

        ! void glGetFloatv(GLenum pname, GLfloat *params)
        subroutine glGetFloatv(pname, params) bind(c, name='glGetFloatv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(out)       :: params(*)
        end subroutine glGetFloatv

        ! void glGetHistogram(GLenum target, GLboolean reset, GLenum format, GLenum type, GLvoid *values)
        subroutine glGetHistogram(target, reset, format, type, values) bind(c, name='glGetHistogram')
            import :: GLboolean, GLenum, c_ptr
            implicit none
            integer(GLenum),    intent(in), value :: target
            integer(Glboolean), intent(in), value :: reset
            integer(GLenum),    intent(in), value :: format
            integer(GLenum),    intent(in), value :: type
            type(c_ptr),        intent(in), value :: values
        end subroutine glGetHistogram

        ! void glGetHistogramParameterfv(GLenum target, GLenum pname, GLfloat *params)
        subroutine glGetHistogramParameterfv(target, pname, params) bind(c, name='glGetHistogramParameterfv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(out)       :: params(*)
        end subroutine glGetHistogramParameterfv

        ! void glGetHistogramParameteriv(GLenum target, GLenum pname, GLint *params)
        subroutine glGetHistogramParameteriv(target, pname, params) bind(c, name='glGetHistogramParameteriv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(out)       :: params(*)
        end subroutine glGetHistogramParameteriv

        ! void glGetIntegerv(GLenum pname, GLint *params)
        subroutine glGetIntegerv(pname, params) bind(c, name='glGetIntegerv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(out)       :: params(*)
        end subroutine glGetIntegerv

        ! void glGetLightfv(GLenum light, GLenum pname, GLfloat *params)
        subroutine glGetLightfv(light, pname, params) bind(c, name='glGetLightfv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: light
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(out)       :: params(*)
        end subroutine glGetLightfv

        ! void glGetLightiv(GLenum light, GLenum pname, GLint *params)
        subroutine glGetLightiv(light, pname, params) bind(c, name='glGetLightiv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: light
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(out)       :: params(*)
        end subroutine glGetLightiv

        ! void glGetMapdv(GLenum target, GLenum query, GLdouble *v)
        subroutine glGetMapdv(target, query, v) bind(c, name='glGetMapdv')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: query
            real(GLdouble),  intent(out)       :: v(*)
        end subroutine glGetMapdv

        ! void glGetMapfv(GLenum target, GLenum query, GLfloat *v)
        subroutine glGetMapfv(target, query, v) bind(c, name='glGetMapfv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: query
            real(GLfloat),   intent(out)       :: v(*)
        end subroutine glGetMapfv

        ! void glGetMapiv(GLenum target, GLenum query, GLint *v)
        subroutine glGetMapiv(target, query, v) bind(c, name='glGetMapiv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: query
            integer(GLint),  intent(out)       :: v(*)
        end subroutine glGetMapiv

        ! void glGetMaterialfv(GLenum face, GLenum pname, GLfloat *params)
        subroutine glGetMaterialfv(face, pname, params) bind(c, name='glGetMaterialfv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: face
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(out)       :: params(*)
        end subroutine glGetMaterialfv

        ! void glGetMaterialiv(GLenum face, GLenum pname, GLint *params)
        subroutine glGetMaterialiv(face, pname, params) bind(c, name='glGetMaterialiv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: face
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(out)       :: params(*)
        end subroutine glGetMaterialiv

        ! void glGetMinmax(GLenum target, GLboolean reset, GLenum format, GLenum types, GLvoid *values)
        subroutine glGetMinmax(target, reset, format, types, values) bind(c, name='glGetMinmax')
            import :: GLboolean, GLenum, c_ptr
            implicit none
            integer(GLenum),    intent(in), value :: target
            integer(Glboolean), intent(in), value :: reset
            integer(GLenum),    intent(in), value :: format
            integer(GLenum),    intent(in), value :: types
            type(c_ptr),        intent(in), value :: values
        end subroutine glGetMinmax

        ! void glGetMinmaxParameterfv(GLenum target, GLenum pname, GLfloat *params)
        subroutine glGetMinmaxParameterfv(target, pname, params) bind(c, name='glGetMinmaxParameterfv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(out)       :: params(*)
        end subroutine glGetMinmaxParameterfv

        ! void glGetMinmaxParameteriv(GLenum target, GLenum pname, GLint *params)
        subroutine glGetMinmaxParameteriv(target, pname, params) bind(c, name='glGetMinmaxParameteriv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(out)       :: params(*)
        end subroutine glGetMinmaxParameteriv

        ! void glGetPixelMapfv(GLenum map, GLfloat *values)
        subroutine glGetPixelMapfv(map, values) bind(c, name='glGetPixelMapfv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: map
            real(GLfloat),   intent(out)       :: values(*)
        end subroutine glGetPixelMapfv

        ! void glGetPixelMapuiv(GLenum map, GLuint *values)
        subroutine glGetPixelMapuiv(map, values) bind(c, name='glGetPixelMapuiv')
            import :: GLenum, GLuint
            implicit none
            integer(GLenum), intent(in), value :: map
            integer(GLuint), intent(out)       :: values(*)
        end subroutine glGetPixelMapuiv

        ! void glGetPixelMapusv(GLenum map, GLushort *values)
        subroutine glGetPixelMapusv(map, values) bind(c, name='glGetPixelMapusv')
            import :: GLenum, GLushort
            implicit none
            integer(GLenum),   intent(in), value :: map
            integer(GLushort), intent(out)       :: values(*)
        end subroutine glGetPixelMapusv

        ! void glGetPointerv(GLenum pname, GLvoid **params)
        subroutine glGetPointerv(pname, params) bind(c, name='glGetPointerv')
            import :: GLenum, c_ptr
            implicit none
            integer(GLenum), intent(in), value :: pname
            type(c_ptr),     intent(out)       :: params
        end subroutine glGetPointerv

        ! void glGetPolygonStipple(GLubyte *mask)
        subroutine glGetPolygonStipple(mask) bind(c, name='glGetPolygonStipple')
            import :: GLubyte
            implicit none
            integer(GLubyte), intent(out) :: mask(*)
        end subroutine glGetPolygonStipple

        ! void glGetSeparableFilter(GLenum target, GLenum format, GLenum type, GLvoid *row, GLvoid *column, GLvoid *span)
        subroutine glGetSeparableFilter(target, format, type, row, column, span) bind(c, name='glGetSeparableFilter')
            import :: GLenum, c_ptr
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: format
            integer(GLenum), intent(in), value :: type
            type(c_ptr),     intent(in), value :: row
            type(c_ptr),     intent(in), value :: column
            type(c_ptr),     intent(in), value :: span
        end subroutine glGetSeparableFilter

        ! const GLubyte *glGetString(GLenum name)
        function glGetString(name) bind(c, name='glGetString')
            import :: GLenum, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: name
            type(c_ptr)                         :: glGetString
        end function glGetString

        ! void glGetTexEnvfv(GLenum target, GLenum pname, GLfloat *params)
        subroutine glGetTexEnvfv(target, pname, params) bind(c, name='glGetTexEnvfv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(out)       :: params(*)
        end subroutine glGetTexEnvfv

        ! void glGetTexEnviv(GLenum target, GLenum pname, GLint *params)
        subroutine glGetTexEnviv(target, pname, params) bind(c, name='glGetTexEnviv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(out)       :: params(*)
        end subroutine glGetTexEnviv

        ! void glGetTexGendv(GLenum coord, GLenum pname, GLdouble *params)
        subroutine glGetTexGendv(coord, pname, params) bind(c, name='glGetTexGendv')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: coord
            integer(GLenum), intent(in), value :: pname
            real(GLdouble),  intent(out)       :: params(*)
        end subroutine glGetTexGendv

        ! void glGetTexGenfv(GLenum coord, GLenum pname, GLfloat *params)
        subroutine glGetTexGenfv(coord, pname, params) bind(c, name='glGetTexGenfv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: coord
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(out)       :: params(*)
        end subroutine glGetTexGenfv

        ! void glGetTexGeniv(GLenum coord, GLenum pname, GLint *params)
        subroutine glGetTexGeniv(coord, pname, params) bind(c, name='glGetTexGeniv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: coord
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(out)       :: params(*)
        end subroutine glGetTexGeniv

        ! void glGetTexImage(GLenum target, GLint level, GLenum format, GLenum type, GLvoid *pixels)
        subroutine glGetTexImage(target, level, format, type, pixels) bind(c, name='glGetTexImage')
            import :: GLenum, GLint, c_ptr
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLint),  intent(in), value :: level
            integer(GLenum), intent(in), value :: format
            integer(GLenum), intent(in), value :: type
            type(c_ptr),     intent(in), value :: pixels
        end subroutine glGetTexImage

        ! void glGetTexLevelParameterfv(GLenum target, GLint level, GLenum pname, GLfloat *params)
        subroutine glGetTexLevelParameterfv(target, level, pname, params) bind(c, name='glGetTexLevelParameterfv')
            import :: GLenum, GLfloat, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLint),  intent(in), value :: level
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(out)       :: params(*)
        end subroutine glGetTexLevelParameterfv

        ! void glGetTexLevelParameteriv(GLenum target, GLint level, GLenum pname, GLint *params)
        subroutine glGetTexLevelParameteriv(target, level, pname, params) bind(c, name='glGetTexLevelParameteriv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLint),  intent(in), value :: level
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(out)       :: params(*)
        end subroutine glGetTexLevelParameteriv

        ! void glGetTexParameterfv(GLenum target, GLenum pname, GLfloat *params)
        subroutine glGetTexParameterfv(target, pname, params) bind(c, name='glGetTexParameterfv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(out)       :: params(*)
        end subroutine glGetTexParameterfv

        ! void glGetTexParameteriv(GLenum target, GLenum pname, GLint *params)
        subroutine glGetTexParameteriv(target, pname, params) bind(c, name='glGetTexParameteriv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(out)       :: params(*)
        end subroutine glGetTexParameteriv

        ! void glHint(GLenum target, GLenum mode)
        subroutine glHint(target, mode) bind(c, name='glHint')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: mode
        end subroutine glHint

        ! void glHistogram(GLenum target, GLsizei width, GLenum internalformat, GLboolean sink)
        subroutine glHistogram(target, width, internalformat, sink) bind(c, name='glHistogram')
            import :: GLboolean, GLenum, GLsizei
            implicit none
            integer(GLenum),    intent(in), value :: target
            integer(GLsizei),   intent(in), value :: width
            integer(GLenum),    intent(in), value :: internalformat
            integer(Glboolean), intent(in), value :: sink
        end subroutine glHistogram

        ! void glIndexMask(GLuint mask)
        subroutine glIndexMask(mask) bind(c, name='glIndexMask')
            import :: GLuint
            implicit none
            integer(GLuint), intent(in), value :: mask
        end subroutine glIndexMask

        ! void glIndexPointer(GLenum type, GLsizei stride, const GLvoid *ptr)
        subroutine glIndexPointer(type, stride, ptr) bind(c, name='glIndexPointer')
            import :: GLenum, GLsizei, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: type
            integer(GLsizei), intent(in), value :: stride
            type(c_ptr),      intent(in), value :: ptr
        end subroutine glIndexPointer

        ! void glIndexd(GLdouble c)
        subroutine glIndexd(c) bind(c, name='glIndexd')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: c
        end subroutine glIndexd

        ! void glIndexdv(const GLdouble *c)
        subroutine glIndexdv(c) bind(c, name='glIndexdv')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in) :: c(*)
        end subroutine glIndexdv

        ! void glIndexf(GLfloat c)
        subroutine glIndexf(c) bind(c, name='glIndexf')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: c
        end subroutine glIndexf

        ! void glIndexfv(const GLfloat *c)
        subroutine glIndexfv(c) bind(c, name='glIndexfv')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in) :: c(*)
        end subroutine glIndexfv

        ! void glIndexi(GLint c)
        subroutine glIndexi(c) bind(c, name='glIndexi')
            import :: GLint
            implicit none
            integer(GLint), intent(in), value :: c
        end subroutine glIndexi

        ! void glIndexiv(const GLint *c)
        subroutine glIndexiv(c) bind(c, name='glIndexiv')
            import :: GLint
            implicit none
            integer(GLint), intent(in) :: c(*)
        end subroutine glIndexiv

        ! void glIndexs(GLshort c)
        subroutine glIndexs(c) bind(c, name='glIndexs')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in), value :: c
        end subroutine glIndexs

        ! void glIndexsv(const GLshort *c)
        subroutine glIndexsv(c) bind(c, name='glIndexsv')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in) :: c(*)
        end subroutine glIndexsv

        ! void glIndexub(GLubyte c)
        subroutine glIndexub(c) bind(c, name='glIndexub')
            import :: GLubyte
            implicit none
            integer(GLubyte), intent(in), value :: c
        end subroutine glIndexub

        ! void glIndexubv(const GLubyte *c)
        subroutine glIndexubv(c) bind(c, name='glIndexubv')
            import :: GLubyte
            implicit none
            integer(GLubyte), intent(in) :: c(*)
        end subroutine glIndexubv

        ! void glInitNames(void)
        subroutine glInitNames() bind(c, name='glInitNames')
        end subroutine glInitNames

        ! void glInterleavedArrays(GLenum format, GLsizei stride, const GLvoid *pointer)
        subroutine glInterleavedArrays(format, stride, pointer) bind(c, name='glInterleavedArrays')
            import :: GLenum, GLsizei, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: format
            integer(GLsizei), intent(in), value :: stride
            type(c_ptr),      intent(in), value :: pointer
        end subroutine glInterleavedArrays

        ! GLboolean glIsEnabled(GLenum cap)
        function glIsEnabled(cap) bind(c, name='glIsEnabled')
            import :: GLboolean, GLenum
            implicit none
            integer(GLenum), intent(in), value :: cap
            integer(Glboolean)                 :: glIsEnabled
        end function glIsEnabled

        ! GLboolean glIsList(GLuint list)
        function glIsList(list) bind(c, name='glIsList')
            import :: GLboolean, GLuint
            implicit none
            integer(GLuint), intent(in), value :: list
            integer(Glboolean)                 :: glIsList
        end function glIsList

        ! GLboolean glIsTexture(GLuint texture)
        function glIsTexture(texture) bind(c, name='glIsTexture')
            import :: GLboolean, GLuint
            implicit none
            integer(GLuint), intent(in), value :: texture
            integer(Glboolean)                 :: glIsTexture
        end function glIsTexture

        ! void glLightModelf(GLenum pname, GLfloat param)
        subroutine glLightModelf(pname, param) bind(c, name='glLightModelf')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(in), value :: param
        end subroutine glLightModelf

        ! void glLightModelfv(GLenum pname, const GLfloat *params)
        subroutine glLightModelfv(pname, params) bind(c, name='glLightModelfv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(in)        :: params(*)
        end subroutine glLightModelfv

        ! void glLightModeli(GLenum pname, GLint param)
        subroutine glLightModeli(pname, param) bind(c, name='glLightModeli')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(in), value :: param
        end subroutine glLightModeli

        ! void glLightModeliv(GLenum pname, const GLint *params)
        subroutine glLightModeliv(pname, params) bind(c, name='glLightModeliv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(in)        :: params(*)
        end subroutine glLightModeliv

        ! void glLightf(GLenum light, GLenum pname, GLfloat param)
        subroutine glLightf(light, pname, param) bind(c, name='glLightf')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: light
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(in), value :: param
        end subroutine glLightf

        ! void glLightfv(GLenum light, GLenum pname, const GLfloat *params)
        subroutine glLightfv(light, pname, params) bind(c, name='glLightfv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: light
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(in)        :: params(*)
        end subroutine glLightfv

        ! void glLighti(GLenum light, GLenum pname, GLint param)
        subroutine glLighti(light, pname, param) bind(c, name='glLighti')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: light
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(in), value :: param
        end subroutine glLighti

        ! void glLightiv(GLenum light, GLenum pname, const GLint *params)
        subroutine glLightiv(light, pname, params) bind(c, name='glLightiv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: light
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(in)        :: params(*)
        end subroutine glLightiv

        ! void glLineStipple(GLint factor, GLushort pattern)
        subroutine glLineStipple(factor, pattern) bind(c, name='glLineStipple')
            import :: GLint, GLushort
            implicit none
            integer(GLint),    intent(in), value :: factor
            integer(GLushort), intent(in), value :: pattern
        end subroutine glLineStipple

        ! void glLineWidth(GLfloat width)
        subroutine glLineWidth(width) bind(c, name='glLineWidth')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: width
        end subroutine glLineWidth

        ! void glListBase(GLuint base)
        subroutine glListBase(base) bind(c, name='glListBase')
            import :: GLuint
            implicit none
            integer(GLuint), intent(in), value :: base
        end subroutine glListBase

        ! void glLoadIdentity(void)
        subroutine glLoadIdentity() bind(c, name='glLoadIdentity')
        end subroutine glLoadIdentity

        ! void glLoadMatrixd(const GLdouble *m)
        subroutine glLoadMatrixd(m) bind(c, name='glLoadMatrixd')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in) :: m(*)
        end subroutine glLoadMatrixd

        ! void glLoadMatrixf(const GLfloat *m)
        subroutine glLoadMatrixf(m) bind(c, name='glLoadMatrixf')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in) :: m(*)
        end subroutine glLoadMatrixf

        ! void glLoadName(GLuint name)
        subroutine glLoadName(name) bind(c, name='glLoadName')
            import :: GLuint
            implicit none
            integer(GLuint), intent(in), value :: name
        end subroutine glLoadName

        ! void glLoadTransposeMatrixd(const GLdouble m[16])
        subroutine glLoadTransposeMatrixd(m) bind(c, name='glLoadTransposeMatrixd')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in) :: m(16)
        end subroutine glLoadTransposeMatrixd

        ! void glLoadTransposeMatrixf(const GLfloat m[16])
        subroutine glLoadTransposeMatrixf(m) bind(c, name='glLoadTransposeMatrixf')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in) :: m(16)
        end subroutine glLoadTransposeMatrixf

        ! void glLogicOp(GLenum opcode)
        subroutine glLogicOp(opcode) bind(c, name='glLogicOp')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: opcode
        end subroutine glLogicOp

        ! void glMap1d(GLenum target, GLdouble u1, GLdouble u2, GLint stride, GLint order, const GLdouble *points)
        subroutine glMap1d(target, u1, u2, stride, order, points) bind(c, name='glMap1d')
            import :: GLdouble, GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLdouble),  intent(in), value :: u1
            real(GLdouble),  intent(in), value :: u2
            integer(GLint),  intent(in), value :: stride
            integer(GLint),  intent(in), value :: order
            real(GLdouble),  intent(in)        :: points(*)
        end subroutine glMap1d

        ! void glMap1f(GLenum target, GLfloat u1, GLfloat u2, GLint stride, GLint order, const GLfloat *points)
        subroutine glMap1f(target, u1, u2, stride, order, points) bind(c, name='glMap1f')
            import :: GLenum, GLfloat, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLfloat),   intent(in), value :: u1
            real(GLfloat),   intent(in), value :: u2
            integer(GLint),  intent(in), value :: stride
            integer(GLint),  intent(in), value :: order
            real(GLfloat),   intent(in)        :: points(*)
        end subroutine glMap1f

        ! void glMap2d(GLenum target, GLdouble u1, GLdouble u2, GLint ustride, GLint uorder, GLdouble v1, GLdouble v2, GLint vstride, GLint vorder, const GLdouble *points)
        subroutine glMap2d(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points) bind(c, name='glMap2d')
            import :: GLdouble, GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLdouble),  intent(in), value :: u1
            real(GLdouble),  intent(in), value :: u2
            integer(GLint),  intent(in), value :: ustride
            integer(GLint),  intent(in), value :: uorder
            real(GLdouble),  intent(in), value :: v1
            real(GLdouble),  intent(in), value :: v2
            integer(GLint),  intent(in), value :: vstride
            integer(GLint),  intent(in), value :: vorder
            real(GLdouble),  intent(in)        :: points(*)
        end subroutine glMap2d

        ! void glMap2f(GLenum target, GLfloat u1, GLfloat u2, GLint ustride, GLint uorder, GLfloat v1, GLfloat v2, GLint vstride, GLint vorder, const GLfloat *points)
        subroutine glMap2f(target, u1, u2, ustride, uorder, v1, v2, vstride, vorder, points) bind(c, name='glMap2f')
            import :: GLenum, GLfloat, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLfloat),   intent(in), value :: u1
            real(GLfloat),   intent(in), value :: u2
            integer(GLint),  intent(in), value :: ustride
            integer(GLint),  intent(in), value :: uorder
            real(GLfloat),   intent(in), value :: v1
            real(GLfloat),   intent(in), value :: v2
            integer(GLint),  intent(in), value :: vstride
            integer(GLint),  intent(in), value :: vorder
            real(GLfloat),   intent(in)        :: points(*)
        end subroutine glMap2f

        ! void glMapGrid1d(GLint un, GLdouble u1, GLdouble u2)
        subroutine glMapGrid1d(un, u1, u2) bind(c, name='glMapGrid1d')
            import :: GLdouble, GLint
            implicit none
            integer(GLint), intent(in), value :: un
            real(GLdouble), intent(in), value :: u1
            real(GLdouble), intent(in), value :: u2
        end subroutine glMapGrid1d

        ! void glMapGrid1f(GLint un, GLfloat u1, GLfloat u2)
        subroutine glMapGrid1f(un, u1, u2) bind(c, name='glMapGrid1f')
            import :: GLfloat, GLint
            implicit none
            integer(GLint), intent(in), value :: un
            real(GLfloat),  intent(in), value :: u1
            real(GLfloat),  intent(in), value :: u2
        end subroutine glMapGrid1f

        ! void glMapGrid2d(GLint un, GLdouble u1, GLdouble u2, GLint vn, GLdouble v1, GLdouble v2)
        subroutine glMapGrid2d(un, u1, u2, vn, v1, v2) bind(c, name='glMapGrid2d')
            import :: GLdouble, GLint
            implicit none
            integer(GLint), intent(in), value :: un
            real(GLdouble), intent(in), value :: u1
            real(GLdouble), intent(in), value :: u2
            integer(GLint), intent(in), value :: vn
            real(GLdouble), intent(in), value :: v1
            real(GLdouble), intent(in), value :: v2
        end subroutine glMapGrid2d

        ! void glMapGrid2f(GLint un, GLfloat u1, GLfloat u2, GLint vn, GLfloat v1, GLfloat v2)
        subroutine glMapGrid2f(un, u1, u2, vn, v1, v2) bind(c, name='glMapGrid2f')
            import :: GLfloat, GLint
            implicit none
            integer(GLint), intent(in), value :: un
            real(GLfloat),  intent(in), value :: u1
            real(GLfloat),  intent(in), value :: u2
            integer(GLint), intent(in), value :: vn
            real(GLfloat),  intent(in), value :: v1
            real(GLfloat),  intent(in), value :: v2
        end subroutine glMapGrid2f

        ! void glMaterialf(GLenum face, GLenum pname, GLfloat param)
        subroutine glMaterialf(face, pname, param) bind(c, name='glMaterialf')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: face
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(in), value :: param
        end subroutine glMaterialf

        ! void glMaterialfv(GLenum face, GLenum pname, const GLfloat *params)
        subroutine glMaterialfv(face, pname, params) bind(c, name='glMaterialfv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: face
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(in)        :: params(*)
        end subroutine glMaterialfv

        ! void glMateriali(GLenum face, GLenum pname, GLint param)
        subroutine glMateriali(face, pname, param) bind(c, name='glMateriali')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: face
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(in), value :: param
        end subroutine glMateriali

        ! void glMaterialiv(GLenum face, GLenum pname, const GLint *params)
        subroutine glMaterialiv(face, pname, params) bind(c, name='glMaterialiv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: face
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(in)        :: params(*)
        end subroutine glMaterialiv

        ! void glMatrixMode(GLenum mode)
        subroutine glMatrixMode(mode) bind(c, name='glMatrixMode')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: mode
        end subroutine glMatrixMode

        ! void glMinmax(GLenum target, GLenum internalformat, GLboolean sink)
        subroutine glMinmax(target, internalformat, sink) bind(c, name='glMinmax')
            import :: GLboolean, GLenum
            implicit none
            integer(GLenum),    intent(in), value :: target
            integer(GLenum),    intent(in), value :: internalformat
            integer(Glboolean), intent(in), value :: sink
        end subroutine glMinmax

        ! void glMultMatrixd(const GLdouble *m)
        subroutine glMultMatrixd(m) bind(c, name='glMultMatrixd')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in) :: m(*)
        end subroutine glMultMatrixd

        ! void glMultMatrixf(const GLfloat *m)
        subroutine glMultMatrixf(m) bind(c, name='glMultMatrixf')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in) :: m(*)
        end subroutine glMultMatrixf

        ! void glMultTransposeMatrixd(const GLdouble m[16])
        subroutine glMultTransposeMatrixd(m) bind(c, name='glMultTransposeMatrixd')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in) :: m(16)
        end subroutine glMultTransposeMatrixd

        ! void glMultTransposeMatrixf(const GLfloat m[16])
        subroutine glMultTransposeMatrixf(m) bind(c, name='glMultTransposeMatrixf')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in) :: m(16)
        end subroutine glMultTransposeMatrixf

        ! void glMultiTexCoord1d(GLenum target, GLdouble s)
        subroutine glMultiTexCoord1d(target, s) bind(c, name='glMultiTexCoord1d')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLdouble),  intent(in), value :: s
        end subroutine glMultiTexCoord1d

        ! void glMultiTexCoord1dARB(GLenum target, GLdouble s)
        subroutine glMultiTexCoord1dARB(target, s) bind(c, name='glMultiTexCoord1dARB')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLdouble),  intent(in), value :: s
        end subroutine glMultiTexCoord1dARB

        ! void glMultiTexCoord1dv(GLenum target, const GLdouble *v)
        subroutine glMultiTexCoord1dv(target, v) bind(c, name='glMultiTexCoord1dv')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLdouble),  intent(in)        :: v(*)
        end subroutine glMultiTexCoord1dv

        ! void glMultiTexCoord1dvARB(GLenum target, const GLdouble *v)
        subroutine glMultiTexCoord1dvARB(target, v) bind(c, name='glMultiTexCoord1dvARB')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLdouble),  intent(in)        :: v(*)
        end subroutine glMultiTexCoord1dvARB

        ! void glMultiTexCoord1f(GLenum target, GLfloat s)
        subroutine glMultiTexCoord1f(target, s) bind(c, name='glMultiTexCoord1f')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLfloat),   intent(in), value :: s
        end subroutine glMultiTexCoord1f

        ! void glMultiTexCoord1fARB(GLenum target, GLfloat s)
        subroutine glMultiTexCoord1fARB(target, s) bind(c, name='glMultiTexCoord1fARB')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLfloat),   intent(in), value :: s
        end subroutine glMultiTexCoord1fARB

        ! void glMultiTexCoord1fv(GLenum target, const GLfloat *v)
        subroutine glMultiTexCoord1fv(target, v) bind(c, name='glMultiTexCoord1fv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLfloat),   intent(in)        :: v(*)
        end subroutine glMultiTexCoord1fv

        ! void glMultiTexCoord1fvARB(GLenum target, const GLfloat *v)
        subroutine glMultiTexCoord1fvARB(target, v) bind(c, name='glMultiTexCoord1fvARB')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLfloat),   intent(in)        :: v(*)
        end subroutine glMultiTexCoord1fvARB

        ! void glMultiTexCoord1i(GLenum target, GLint s)
        subroutine glMultiTexCoord1i(target, s) bind(c, name='glMultiTexCoord1i')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLint),  intent(in), value :: s
        end subroutine glMultiTexCoord1i

        ! void glMultiTexCoord1iARB(GLenum target, GLint s)
        subroutine glMultiTexCoord1iARB(target, s) bind(c, name='glMultiTexCoord1iARB')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLint),  intent(in), value :: s
        end subroutine glMultiTexCoord1iARB

        ! void glMultiTexCoord1iv(GLenum target, const GLint *v)
        subroutine glMultiTexCoord1iv(target, v) bind(c, name='glMultiTexCoord1iv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLint),  intent(in)        :: v(*)
        end subroutine glMultiTexCoord1iv

        ! void glMultiTexCoord1ivARB(GLenum target, const GLint *v)
        subroutine glMultiTexCoord1ivARB(target, v) bind(c, name='glMultiTexCoord1ivARB')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLint),  intent(in)        :: v(*)
        end subroutine glMultiTexCoord1ivARB

        ! void glMultiTexCoord1s(GLenum target, GLshort s)
        subroutine glMultiTexCoord1s(target, s) bind(c, name='glMultiTexCoord1s')
            import :: GLenum, GLshort
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLshort), intent(in), value :: s
        end subroutine glMultiTexCoord1s

        ! void glMultiTexCoord1sARB(GLenum target, GLshort s)
        subroutine glMultiTexCoord1sARB(target, s) bind(c, name='glMultiTexCoord1sARB')
            import :: GLenum, GLshort
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLshort), intent(in), value :: s
        end subroutine glMultiTexCoord1sARB

        ! void glMultiTexCoord1sv(GLenum target, const GLshort *v)
        subroutine glMultiTexCoord1sv(target, v) bind(c, name='glMultiTexCoord1sv')
            import :: GLenum, GLshort
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLshort), intent(in)        :: v(*)
        end subroutine glMultiTexCoord1sv

        ! void glMultiTexCoord1svARB(GLenum target, const GLshort *v)
        subroutine glMultiTexCoord1svARB(target, v) bind(c, name='glMultiTexCoord1svARB')
            import :: GLenum, GLshort
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLshort), intent(in)        :: v(*)
        end subroutine glMultiTexCoord1svARB

        ! void glMultiTexCoord2d(GLenum target, GLdouble s, GLdouble t)
        subroutine glMultiTexCoord2d(target, s, t) bind(c, name='glMultiTexCoord2d')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLdouble),  intent(in), value :: s
            real(GLdouble),  intent(in), value :: t
        end subroutine glMultiTexCoord2d

        ! void glMultiTexCoord2dARB(GLenum target, GLdouble s, GLdouble t)
        subroutine glMultiTexCoord2dARB(target, s, t) bind(c, name='glMultiTexCoord2dARB')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLdouble),  intent(in), value :: s
            real(GLdouble),  intent(in), value :: t
        end subroutine glMultiTexCoord2dARB

        ! void glMultiTexCoord2dv(GLenum target, const GLdouble *v)
        subroutine glMultiTexCoord2dv(target, v) bind(c, name='glMultiTexCoord2dv')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLdouble),  intent(in)        :: v(*)
        end subroutine glMultiTexCoord2dv

        ! void glMultiTexCoord2dvARB(GLenum target, const GLdouble *v)
        subroutine glMultiTexCoord2dvARB(target, v) bind(c, name='glMultiTexCoord2dvARB')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLdouble),  intent(in)        :: v(*)
        end subroutine glMultiTexCoord2dvARB

        ! void glMultiTexCoord2f(GLenum target, GLfloat s, GLfloat t)
        subroutine glMultiTexCoord2f(target, s, t) bind(c, name='glMultiTexCoord2f')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLfloat),   intent(in), value :: s
            real(GLfloat),   intent(in), value :: t
        end subroutine glMultiTexCoord2f

        ! void glMultiTexCoord2fARB(GLenum target, GLfloat s, GLfloat t)
        subroutine glMultiTexCoord2fARB(target, s, t) bind(c, name='glMultiTexCoord2fARB')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLfloat),   intent(in), value :: s
            real(GLfloat),   intent(in), value :: t
        end subroutine glMultiTexCoord2fARB

        ! void glMultiTexCoord2fv(GLenum target, const GLfloat *v)
        subroutine glMultiTexCoord2fv(target, v) bind(c, name='glMultiTexCoord2fv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLfloat),   intent(in)        :: v(*)
        end subroutine glMultiTexCoord2fv

        ! void glMultiTexCoord2fvARB(GLenum target, const GLfloat *v)
        subroutine glMultiTexCoord2fvARB(target, v) bind(c, name='glMultiTexCoord2fvARB')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLfloat),   intent(in)        :: v(*)
        end subroutine glMultiTexCoord2fvARB

        ! void glMultiTexCoord2i(GLenum target, GLint s, GLint t)
        subroutine glMultiTexCoord2i(target, s, t) bind(c, name='glMultiTexCoord2i')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLint),  intent(in), value :: s
            integer(GLint),  intent(in), value :: t
        end subroutine glMultiTexCoord2i

        ! void glMultiTexCoord2iARB(GLenum target, GLint s, GLint t)
        subroutine glMultiTexCoord2iARB(target, s, t) bind(c, name='glMultiTexCoord2iARB')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLint),  intent(in), value :: s
            integer(GLint),  intent(in), value :: t
        end subroutine glMultiTexCoord2iARB

        ! void glMultiTexCoord2iv(GLenum target, const GLint *v)
        subroutine glMultiTexCoord2iv(target, v) bind(c, name='glMultiTexCoord2iv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLint),  intent(in)        :: v(*)
        end subroutine glMultiTexCoord2iv

        ! void glMultiTexCoord2ivARB(GLenum target, const GLint *v)
        subroutine glMultiTexCoord2ivARB(target, v) bind(c, name='glMultiTexCoord2ivARB')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLint),  intent(in)        :: v(*)
        end subroutine glMultiTexCoord2ivARB

        ! void glMultiTexCoord2s(GLenum target, GLshort s, GLshort t)
        subroutine glMultiTexCoord2s(target, s, t) bind(c, name='glMultiTexCoord2s')
            import :: GLenum, GLshort
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLshort), intent(in), value :: s
            integer(GLshort), intent(in), value :: t
        end subroutine glMultiTexCoord2s

        ! void glMultiTexCoord2sARB(GLenum target, GLshort s, GLshort t)
        subroutine glMultiTexCoord2sARB(target, s, t) bind(c, name='glMultiTexCoord2sARB')
            import :: GLenum, GLshort
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLshort), intent(in), value :: s
            integer(GLshort), intent(in), value :: t
        end subroutine glMultiTexCoord2sARB

        ! void glMultiTexCoord2sv(GLenum target, const GLshort *v)
        subroutine glMultiTexCoord2sv(target, v) bind(c, name='glMultiTexCoord2sv')
            import :: GLenum, GLshort
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLshort), intent(in)        :: v(*)
        end subroutine glMultiTexCoord2sv

        ! void glMultiTexCoord2svARB(GLenum target, const GLshort *v)
        subroutine glMultiTexCoord2svARB(target, v) bind(c, name='glMultiTexCoord2svARB')
            import :: GLenum, GLshort
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLshort), intent(in)        :: v(*)
        end subroutine glMultiTexCoord2svARB

        ! void glMultiTexCoord3d(GLenum target, GLdouble s, GLdouble t, GLdouble r)
        subroutine glMultiTexCoord3d(target, s, t, r) bind(c, name='glMultiTexCoord3d')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLdouble),  intent(in), value :: s
            real(GLdouble),  intent(in), value :: t
            real(GLdouble),  intent(in), value :: r
        end subroutine glMultiTexCoord3d

        ! void glMultiTexCoord3dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r)
        subroutine glMultiTexCoord3dARB(target, s, t, r) bind(c, name='glMultiTexCoord3dARB')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLdouble),  intent(in), value :: s
            real(GLdouble),  intent(in), value :: t
            real(GLdouble),  intent(in), value :: r
        end subroutine glMultiTexCoord3dARB

        ! void glMultiTexCoord3dv(GLenum target, const GLdouble *v)
        subroutine glMultiTexCoord3dv(target, v) bind(c, name='glMultiTexCoord3dv')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLdouble),  intent(in)        :: v(*)
        end subroutine glMultiTexCoord3dv

        ! void glMultiTexCoord3dvARB(GLenum target, const GLdouble *v)
        subroutine glMultiTexCoord3dvARB(target, v) bind(c, name='glMultiTexCoord3dvARB')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLdouble),  intent(in)        :: v(*)
        end subroutine glMultiTexCoord3dvARB

        ! void glMultiTexCoord3f(GLenum target, GLfloat s, GLfloat t, GLfloat r)
        subroutine glMultiTexCoord3f(target, s, t, r) bind(c, name='glMultiTexCoord3f')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLfloat),   intent(in), value :: s
            real(GLfloat),   intent(in), value :: t
            real(GLfloat),   intent(in), value :: r
        end subroutine glMultiTexCoord3f

        ! void glMultiTexCoord3fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r)
        subroutine glMultiTexCoord3fARB(target, s, t, r) bind(c, name='glMultiTexCoord3fARB')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLfloat),   intent(in), value :: s
            real(GLfloat),   intent(in), value :: t
            real(GLfloat),   intent(in), value :: r
        end subroutine glMultiTexCoord3fARB

        ! void glMultiTexCoord3fv(GLenum target, const GLfloat *v)
        subroutine glMultiTexCoord3fv(target, v) bind(c, name='glMultiTexCoord3fv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLfloat),   intent(in)        :: v(*)
        end subroutine glMultiTexCoord3fv

        ! void glMultiTexCoord3fvARB(GLenum target, const GLfloat *v)
        subroutine glMultiTexCoord3fvARB(target, v) bind(c, name='glMultiTexCoord3fvARB')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLfloat),   intent(in)        :: v(*)
        end subroutine glMultiTexCoord3fvARB

        ! void glMultiTexCoord3i(GLenum target, GLint s, GLint t, GLint r)
        subroutine glMultiTexCoord3i(target, s, t, r) bind(c, name='glMultiTexCoord3i')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLint),  intent(in), value :: s
            integer(GLint),  intent(in), value :: t
            integer(GLint),  intent(in), value :: r
        end subroutine glMultiTexCoord3i

        ! void glMultiTexCoord3iARB(GLenum target, GLint s, GLint t, GLint r)
        subroutine glMultiTexCoord3iARB(target, s, t, r) bind(c, name='glMultiTexCoord3iARB')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLint),  intent(in), value :: s
            integer(GLint),  intent(in), value :: t
            integer(GLint),  intent(in), value :: r
        end subroutine glMultiTexCoord3iARB

        ! void glMultiTexCoord3iv(GLenum target, const GLint *v)
        subroutine glMultiTexCoord3iv(target, v) bind(c, name='glMultiTexCoord3iv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLint),  intent(in)        :: v(*)
        end subroutine glMultiTexCoord3iv

        ! void glMultiTexCoord3ivARB(GLenum target, const GLint *v)
        subroutine glMultiTexCoord3ivARB(target, v) bind(c, name='glMultiTexCoord3ivARB')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLint),  intent(in)        :: v(*)
        end subroutine glMultiTexCoord3ivARB

        ! void glMultiTexCoord3s(GLenum target, GLshort s, GLshort t, GLshort r)
        subroutine glMultiTexCoord3s(target, s, t, r) bind(c, name='glMultiTexCoord3s')
            import :: GLenum, GLshort
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLshort), intent(in), value :: s
            integer(GLshort), intent(in), value :: t
            integer(GLshort), intent(in), value :: r
        end subroutine glMultiTexCoord3s

        ! void glMultiTexCoord3sARB(GLenum target, GLshort s, GLshort t, GLshort r)
        subroutine glMultiTexCoord3sARB(target, s, t, r) bind(c, name='glMultiTexCoord3sARB')
            import :: GLenum, GLshort
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLshort), intent(in), value :: s
            integer(GLshort), intent(in), value :: t
            integer(GLshort), intent(in), value :: r
        end subroutine glMultiTexCoord3sARB

        ! void glMultiTexCoord3sv(GLenum target, const GLshort *v)
        subroutine glMultiTexCoord3sv(target, v) bind(c, name='glMultiTexCoord3sv')
            import :: GLenum, GLshort
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLshort), intent(in)        :: v(*)
        end subroutine glMultiTexCoord3sv

        ! void glMultiTexCoord3svARB(GLenum target, const GLshort *v)
        subroutine glMultiTexCoord3svARB(target, v) bind(c, name='glMultiTexCoord3svARB')
            import :: GLenum, GLshort
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLshort), intent(in)        :: v(*)
        end subroutine glMultiTexCoord3svARB

        ! void glMultiTexCoord4d(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q)
        subroutine glMultiTexCoord4d(target, s, t, r, q) bind(c, name='glMultiTexCoord4d')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLdouble),  intent(in), value :: s
            real(GLdouble),  intent(in), value :: t
            real(GLdouble),  intent(in), value :: r
            real(GLdouble),  intent(in), value :: q
        end subroutine glMultiTexCoord4d

        ! void glMultiTexCoord4dARB(GLenum target, GLdouble s, GLdouble t, GLdouble r, GLdouble q)
        subroutine glMultiTexCoord4dARB(target, s, t, r, q) bind(c, name='glMultiTexCoord4dARB')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLdouble),  intent(in), value :: s
            real(GLdouble),  intent(in), value :: t
            real(GLdouble),  intent(in), value :: r
            real(GLdouble),  intent(in), value :: q
        end subroutine glMultiTexCoord4dARB

        ! void glMultiTexCoord4dv(GLenum target, const GLdouble *v)
        subroutine glMultiTexCoord4dv(target, v) bind(c, name='glMultiTexCoord4dv')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLdouble),  intent(in)        :: v(*)
        end subroutine glMultiTexCoord4dv

        ! void glMultiTexCoord4dvARB(GLenum target, const GLdouble *v)
        subroutine glMultiTexCoord4dvARB(target, v) bind(c, name='glMultiTexCoord4dvARB')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLdouble),  intent(in)        :: v(*)
        end subroutine glMultiTexCoord4dvARB

        ! void glMultiTexCoord4f(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q)
        subroutine glMultiTexCoord4f(target, s, t, r, q) bind(c, name='glMultiTexCoord4f')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLfloat),   intent(in), value :: s
            real(GLfloat),   intent(in), value :: t
            real(GLfloat),   intent(in), value :: r
            real(GLfloat),   intent(in), value :: q
        end subroutine glMultiTexCoord4f

        ! void glMultiTexCoord4fARB(GLenum target, GLfloat s, GLfloat t, GLfloat r, GLfloat q)
        subroutine glMultiTexCoord4fARB(target, s, t, r, q) bind(c, name='glMultiTexCoord4fARB')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLfloat),   intent(in), value :: s
            real(GLfloat),   intent(in), value :: t
            real(GLfloat),   intent(in), value :: r
            real(GLfloat),   intent(in), value :: q
        end subroutine glMultiTexCoord4fARB

        ! void glMultiTexCoord4fv(GLenum target, const GLfloat *v)
        subroutine glMultiTexCoord4fv(target, v) bind(c, name='glMultiTexCoord4fv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLfloat),   intent(in)        :: v(*)
        end subroutine glMultiTexCoord4fv

        ! void glMultiTexCoord4fvARB(GLenum target, const GLfloat *v)
        subroutine glMultiTexCoord4fvARB(target, v) bind(c, name='glMultiTexCoord4fvARB')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            real(GLfloat),   intent(in)        :: v(*)
        end subroutine glMultiTexCoord4fvARB

        ! void glMultiTexCoord4i(GLenum target, GLint s, GLint t, GLint r, GLint q)
        subroutine glMultiTexCoord4i(target, s, t, r, q) bind(c, name='glMultiTexCoord4i')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLint),  intent(in), value :: s
            integer(GLint),  intent(in), value :: t
            integer(GLint),  intent(in), value :: r
            integer(GLint),  intent(in), value :: q
        end subroutine glMultiTexCoord4i

        ! void glMultiTexCoord4iARB(GLenum target, GLint s, GLint t, GLint r, GLint q)
        subroutine glMultiTexCoord4iARB(target, s, t, r, q) bind(c, name='glMultiTexCoord4iARB')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLint),  intent(in), value :: s
            integer(GLint),  intent(in), value :: t
            integer(GLint),  intent(in), value :: r
            integer(GLint),  intent(in), value :: q
        end subroutine glMultiTexCoord4iARB

        ! void glMultiTexCoord4iv(GLenum target, const GLint *v)
        subroutine glMultiTexCoord4iv(target, v) bind(c, name='glMultiTexCoord4iv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLint),  intent(in)        :: v(*)
        end subroutine glMultiTexCoord4iv

        ! void glMultiTexCoord4ivARB(GLenum target, const GLint *v)
        subroutine glMultiTexCoord4ivARB(target, v) bind(c, name='glMultiTexCoord4ivARB')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLint),  intent(in)        :: v(*)
        end subroutine glMultiTexCoord4ivARB

        ! void glMultiTexCoord4s(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q)
        subroutine glMultiTexCoord4s(target, s, t, r, q) bind(c, name='glMultiTexCoord4s')
            import :: GLenum, GLshort
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLshort), intent(in), value :: s
            integer(GLshort), intent(in), value :: t
            integer(GLshort), intent(in), value :: r
            integer(GLshort), intent(in), value :: q
        end subroutine glMultiTexCoord4s

        ! void glMultiTexCoord4sARB(GLenum target, GLshort s, GLshort t, GLshort r, GLshort q)
        subroutine glMultiTexCoord4sARB(target, s, t, r, q) bind(c, name='glMultiTexCoord4sARB')
            import :: GLenum, GLshort
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLshort), intent(in), value :: s
            integer(GLshort), intent(in), value :: t
            integer(GLshort), intent(in), value :: r
            integer(GLshort), intent(in), value :: q
        end subroutine glMultiTexCoord4sARB

        ! void glMultiTexCoord4sv(GLenum target, const GLshort *v)
        subroutine glMultiTexCoord4sv(target, v) bind(c, name='glMultiTexCoord4sv')
            import :: GLenum, GLshort
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLshort), intent(in)        :: v(*)
        end subroutine glMultiTexCoord4sv

        ! void glMultiTexCoord4svARB(GLenum target, const GLshort *v)
        subroutine glMultiTexCoord4svARB(target, v) bind(c, name='glMultiTexCoord4svARB')
            import :: GLenum, GLshort
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLshort), intent(in)        :: v(*)
        end subroutine glMultiTexCoord4svARB

        ! void glNewList(GLuint list, GLenum mode)
        subroutine glNewList(list, mode) bind(c, name='glNewList')
            import :: GLenum, GLuint
            implicit none
            integer(GLuint), intent(in), value :: list
            integer(GLenum), intent(in), value :: mode
        end subroutine glNewList

        ! void glNormal3b(GLbyte nx, GLbyte ny, GLbyte nz)
        subroutine glNormal3b(nx, ny, nz) bind(c, name='glNormal3b')
            import :: GLbyte
            implicit none
            integer(GLbyte), intent(in), value :: nx
            integer(GLbyte), intent(in), value :: ny
            integer(GLbyte), intent(in), value :: nz
        end subroutine glNormal3b

        ! void glNormal3bv(const GLbyte *v)
        subroutine glNormal3bv(v) bind(c, name='glNormal3bv')
            import :: GLbyte
            implicit none
            integer(GLbyte), intent(in) :: v(*)
        end subroutine glNormal3bv

        ! void glNormal3d(GLdouble nx, GLdouble ny, GLdouble nz)
        subroutine glNormal3d(nx, ny, nz) bind(c, name='glNormal3d')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: nx
            real(GLdouble), intent(in), value :: ny
            real(GLdouble), intent(in), value :: nz
        end subroutine glNormal3d

        ! void glNormal3dv(const GLdouble *v)
        subroutine glNormal3dv(v) bind(c, name='glNormal3dv')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in) :: v(*)
        end subroutine glNormal3dv

        ! void glNormal3f(GLfloat nx, GLfloat ny, GLfloat nz)
        subroutine glNormal3f(nx, ny, nz) bind(c, name='glNormal3f')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: nx
            real(GLfloat), intent(in), value :: ny
            real(GLfloat), intent(in), value :: nz
        end subroutine glNormal3f

        ! void glNormal3fv(const GLfloat *v)
        subroutine glNormal3fv(v) bind(c, name='glNormal3fv')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in) :: v(*)
        end subroutine glNormal3fv

        ! void glNormal3i(GLint nx, GLint ny, GLint nz)
        subroutine glNormal3i(nx, ny, nz) bind(c, name='glNormal3i')
            import :: GLint
            implicit none
            integer(GLint), intent(in), value :: nx
            integer(GLint), intent(in), value :: ny
            integer(GLint), intent(in), value :: nz
        end subroutine glNormal3i

        ! void glNormal3iv(const GLint *v)
        subroutine glNormal3iv(v) bind(c, name='glNormal3iv')
            import :: GLint
            implicit none
            integer(GLint), intent(in) :: v(*)
        end subroutine glNormal3iv

        ! void glNormal3s(GLshort nx, GLshort ny, GLshort nz)
        subroutine glNormal3s(nx, ny, nz) bind(c, name='glNormal3s')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in), value :: nx
            integer(GLshort), intent(in), value :: ny
            integer(GLshort), intent(in), value :: nz
        end subroutine glNormal3s

        ! void glNormal3sv(const GLshort *v)
        subroutine glNormal3sv(v) bind(c, name='glNormal3sv')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in) :: v(*)
        end subroutine glNormal3sv

        ! void glNormalPointer(GLenum type, GLsizei stride, const GLvoid *ptr)
        subroutine glNormalPointer(type, stride, ptr) bind(c, name='glNormalPointer')
            import :: GLenum, GLsizei, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: type
            integer(GLsizei), intent(in), value :: stride
            type(c_ptr),      intent(in), value :: ptr
        end subroutine glNormalPointer

        ! void glOrtho(GLdouble left, GLdouble right, GLdouble bottom, GLdouble top, GLdouble near_val, GLdouble far_val)
        subroutine glOrtho(left, right, bottom, top, near_val, far_val) bind(c, name='glOrtho')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: left
            real(GLdouble), intent(in), value :: right
            real(GLdouble), intent(in), value :: bottom
            real(GLdouble), intent(in), value :: top
            real(GLdouble), intent(in), value :: near_val
            real(GLdouble), intent(in), value :: far_val
        end subroutine glOrtho

        ! void glPassThrough(GLfloat token)
        subroutine glPassThrough(token) bind(c, name='glPassThrough')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: token
        end subroutine glPassThrough

        ! void glPixelMapfv(GLenum map, GLsizei mapsize, const GLfloat *values)
        subroutine glPixelMapfv(map, mapsize, values) bind(c, name='glPixelMapfv')
            import :: GLenum, GLfloat, GLsizei
            implicit none
            integer(GLenum),  intent(in), value :: map
            integer(GLsizei), intent(in), value :: mapsize
            real(GLfloat),    intent(in) :: values(*)
        end subroutine glPixelMapfv

        ! void glPixelMapuiv(GLenum map, GLsizei mapsize, const GLuint *values)
        subroutine glPixelMapuiv(map, mapsize, values) bind(c, name='glPixelMapuiv')
            import :: GLenum, GLsizei, GLuint
            implicit none
            integer(GLenum),  intent(in), value :: map
            integer(GLsizei), intent(in), value :: mapsize
            integer(GLuint),  intent(in) :: values(*)
        end subroutine glPixelMapuiv

        ! void glPixelMapusv(GLenum map, GLsizei mapsize, const GLushort *values)
        subroutine glPixelMapusv(map, mapsize, values) bind(c, name='glPixelMapusv')
            import :: GLenum, GLsizei, GLushort
            implicit none
            integer(GLenum),   intent(in), value :: map
            integer(GLsizei),  intent(in), value :: mapsize
            integer(GLushort), intent(in) :: values(*)
        end subroutine glPixelMapusv

        ! void glPixelStoref(GLenum pname, GLfloat param)
        subroutine glPixelStoref(pname, param) bind(c, name='glPixelStoref')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(in), value :: param
        end subroutine glPixelStoref

        ! void glPixelStorei(GLenum pname, GLint param)
        subroutine glPixelStorei(pname, param) bind(c, name='glPixelStorei')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(in), value :: param
        end subroutine glPixelStorei

        ! void glPixelTransferf(GLenum pname, GLfloat param)
        subroutine glPixelTransferf(pname, param) bind(c, name='glPixelTransferf')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(in), value :: param
        end subroutine glPixelTransferf

        ! void glPixelTransferi(GLenum pname, GLint param)
        subroutine glPixelTransferi(pname, param) bind(c, name='glPixelTransferi')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(in), value :: param
        end subroutine glPixelTransferi

        ! void glPixelZoom(GLfloat xfactor, GLfloat yfactor)
        subroutine glPixelZoom(xfactor, yfactor) bind(c, name='glPixelZoom')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: xfactor
            real(GLfloat), intent(in), value :: yfactor
        end subroutine glPixelZoom

        ! void glPointSize(GLfloat size)
        subroutine glPointSize(size) bind(c, name='glPointSize')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: size
        end subroutine glPointSize

        ! void glPolygonMode(GLenum face, GLenum mode)
        subroutine glPolygonMode(face, mode) bind(c, name='glPolygonMode')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: face
            integer(GLenum), intent(in), value :: mode
        end subroutine glPolygonMode

        ! void glPolygonOffset(GLfloat factor, GLfloat units)
        subroutine glPolygonOffset(factor, units) bind(c, name='glPolygonOffset')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: factor
            real(GLfloat), intent(in), value :: units
        end subroutine glPolygonOffset

        ! void glPolygonStipple(const GLubyte *mask)
        subroutine glPolygonStipple(mask) bind(c, name='glPolygonStipple')
            import :: GLubyte
            implicit none
            integer(GLubyte), intent(in) :: mask(*)
        end subroutine glPolygonStipple

        ! void glPopAttrib(void)
        subroutine glPopAttrib() bind(c, name='glPopAttrib')
        end subroutine glPopAttrib

        ! void glPopClientAttrib(void)
        subroutine glPopClientAttrib() bind(c, name='glPopClientAttrib')
        end subroutine glPopClientAttrib

        ! void glPopMatrix(void)
        subroutine glPopMatrix() bind(c, name='glPopMatrix')
        end subroutine glPopMatrix

        ! void glPopName(void)
        subroutine glPopName() bind(c, name='glPopName')
        end subroutine glPopName

        ! void glPrioritizeTextures(GLsizei n, const GLuint *textures, const GLclampf *priorities)
        subroutine glPrioritizeTextures(n, textures, priorities) bind(c, name='glPrioritizeTextures')
            import :: GLclampf, GLsizei, GLuint
            implicit none
            integer(GLsizei), intent(in), value :: n
            integer(GLuint),  intent(in) :: textures(*)
            real(GLclampf),   intent(in) :: priorities(*)
        end subroutine glPrioritizeTextures

        ! void glPushAttrib(GLbitfield mask)
        subroutine glPushAttrib(mask) bind(c, name='glPushAttrib')
            import :: GLbitfield
            implicit none
            integer(Glbitfield), intent(in), value :: mask
        end subroutine glPushAttrib

        ! void glPushClientAttrib(GLbitfield mask)
        subroutine glPushClientAttrib(mask) bind(c, name='glPushClientAttrib')
            import :: GLbitfield
            implicit none
            integer(Glbitfield), intent(in), value :: mask
        end subroutine glPushClientAttrib

        ! void glPushMatrix(void)
        subroutine glPushMatrix() bind(c, name='glPushMatrix')
        end subroutine glPushMatrix

        ! void glPushName(GLuint name)
        subroutine glPushName(name) bind(c, name='glPushName')
            import :: GLuint
            implicit none
            integer(GLuint), intent(in), value :: name
        end subroutine glPushName

        ! void glRasterPos2d(GLdouble x, GLdouble y)
        subroutine glRasterPos2d(x, y) bind(c, name='glRasterPos2d')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: x
            real(GLdouble), intent(in), value :: y
        end subroutine glRasterPos2d

        ! void glRasterPos2dv(const GLdouble *v)
        subroutine glRasterPos2dv(v) bind(c, name='glRasterPos2dv')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in) :: v(*)
        end subroutine glRasterPos2dv

        ! void glRasterPos2f(GLfloat x, GLfloat y)
        subroutine glRasterPos2f(x, y) bind(c, name='glRasterPos2f')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: x
            real(GLfloat), intent(in), value :: y
        end subroutine glRasterPos2f

        ! void glRasterPos2fv(const GLfloat *v)
        subroutine glRasterPos2fv(v) bind(c, name='glRasterPos2fv')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in) :: v(*)
        end subroutine glRasterPos2fv

        ! void glRasterPos2i(GLint x, GLint y)
        subroutine glRasterPos2i(x, y) bind(c, name='glRasterPos2i')
            import :: GLint
            implicit none
            integer(GLint), intent(in), value :: x
            integer(GLint), intent(in), value :: y
        end subroutine glRasterPos2i

        ! void glRasterPos2iv(const GLint *v)
        subroutine glRasterPos2iv(v) bind(c, name='glRasterPos2iv')
            import :: GLint
            implicit none
            integer(GLint), intent(in) :: v(*)
        end subroutine glRasterPos2iv

        ! void glRasterPos2s(GLshort x, GLshort y)
        subroutine glRasterPos2s(x, y) bind(c, name='glRasterPos2s')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in), value :: x
            integer(GLshort), intent(in), value :: y
        end subroutine glRasterPos2s

        ! void glRasterPos2sv(const GLshort *v)
        subroutine glRasterPos2sv(v) bind(c, name='glRasterPos2sv')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in) :: v(*)
        end subroutine glRasterPos2sv

        ! void glRasterPos3d(GLdouble x, GLdouble y, GLdouble z)
        subroutine glRasterPos3d(x, y, z) bind(c, name='glRasterPos3d')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: x
            real(GLdouble), intent(in), value :: y
            real(GLdouble), intent(in), value :: z
        end subroutine glRasterPos3d

        ! void glRasterPos3dv(const GLdouble *v)
        subroutine glRasterPos3dv(v) bind(c, name='glRasterPos3dv')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in) :: v(*)
        end subroutine glRasterPos3dv

        ! void glRasterPos3f(GLfloat x, GLfloat y, GLfloat z)
        subroutine glRasterPos3f(x, y, z) bind(c, name='glRasterPos3f')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: x
            real(GLfloat), intent(in), value :: y
            real(GLfloat), intent(in), value :: z
        end subroutine glRasterPos3f

        ! void glRasterPos3fv(const GLfloat *v)
        subroutine glRasterPos3fv(v) bind(c, name='glRasterPos3fv')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in) :: v(*)
        end subroutine glRasterPos3fv

        ! void glRasterPos3i(GLint x, GLint y, GLint z)
        subroutine glRasterPos3i(x, y, z) bind(c, name='glRasterPos3i')
            import :: GLint
            implicit none
            integer(GLint), intent(in), value :: x
            integer(GLint), intent(in), value :: y
            integer(GLint), intent(in), value :: z
        end subroutine glRasterPos3i

        ! void glRasterPos3iv(const GLint *v)
        subroutine glRasterPos3iv(v) bind(c, name='glRasterPos3iv')
            import :: GLint
            implicit none
            integer(GLint), intent(in) :: v(*)
        end subroutine glRasterPos3iv

        ! void glRasterPos3s(GLshort x, GLshort y, GLshort z)
        subroutine glRasterPos3s(x, y, z) bind(c, name='glRasterPos3s')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in), value :: x
            integer(GLshort), intent(in), value :: y
            integer(GLshort), intent(in), value :: z
        end subroutine glRasterPos3s

        ! void glRasterPos3sv(const GLshort *v)
        subroutine glRasterPos3sv(v) bind(c, name='glRasterPos3sv')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in) :: v(*)
        end subroutine glRasterPos3sv

        ! void glRasterPos4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w)
        subroutine glRasterPos4d(x, y, z, w) bind(c, name='glRasterPos4d')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: x
            real(GLdouble), intent(in), value :: y
            real(GLdouble), intent(in), value :: z
            real(GLdouble), intent(in), value :: w
        end subroutine glRasterPos4d

        ! void glRasterPos4dv(const GLdouble *v)
        subroutine glRasterPos4dv(v) bind(c, name='glRasterPos4dv')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in) :: v(*)
        end subroutine glRasterPos4dv

        ! void glRasterPos4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w)
        subroutine glRasterPos4f(x, y, z, w) bind(c, name='glRasterPos4f')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: x
            real(GLfloat), intent(in), value :: y
            real(GLfloat), intent(in), value :: z
            real(GLfloat), intent(in), value :: w
        end subroutine glRasterPos4f

        ! void glRasterPos4fv(const GLfloat *v)
        subroutine glRasterPos4fv(v) bind(c, name='glRasterPos4fv')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in) :: v(*)
        end subroutine glRasterPos4fv

        ! void glRasterPos4i(GLint x, GLint y, GLint z, GLint w)
        subroutine glRasterPos4i(x, y, z, w) bind(c, name='glRasterPos4i')
            import :: GLint
            implicit none
            integer(GLint), intent(in), value :: x
            integer(GLint), intent(in), value :: y
            integer(GLint), intent(in), value :: z
            integer(GLint), intent(in), value :: w
        end subroutine glRasterPos4i

        ! void glRasterPos4iv(const GLint *v)
        subroutine glRasterPos4iv(v) bind(c, name='glRasterPos4iv')
            import :: GLint
            implicit none
            integer(GLint), intent(in) :: v(*)
        end subroutine glRasterPos4iv

        ! void glRasterPos4s(GLshort x, GLshort y, GLshort z, GLshort w)
        subroutine glRasterPos4s(x, y, z, w) bind(c, name='glRasterPos4s')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in), value :: x
            integer(GLshort), intent(in), value :: y
            integer(GLshort), intent(in), value :: z
            integer(GLshort), intent(in), value :: w
        end subroutine glRasterPos4s

        ! void glRasterPos4sv(const GLshort *v)
        subroutine glRasterPos4sv(v) bind(c, name='glRasterPos4sv')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in) :: v(*)
        end subroutine glRasterPos4sv

        ! void glReadBuffer(GLenum mode)
        subroutine glReadBuffer(mode) bind(c, name='glReadBuffer')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: mode
        end subroutine glReadBuffer

        ! void glReadPixels(GLint x, GLint y, GLsizei width, GLsizei height, GLenum format, GLenum type, GLvoid *pixels)
        subroutine glReadPixels(x, y, width, height, format, type, pixels) bind(c, name='glReadPixels')
            import :: GLenum, GLint, GLsizei, c_ptr
            implicit none
            integer(GLint),   intent(in), value :: x
            integer(GLint),   intent(in), value :: y
            integer(GLsizei), intent(in), value :: width
            integer(GLsizei), intent(in), value :: height
            integer(GLenum),  intent(in), value :: format
            integer(GLenum),  intent(in), value :: type
            type(c_ptr),      intent(in), value :: pixels
        end subroutine glReadPixels

        ! void glRectd(GLdouble x1, GLdouble y1, GLdouble x2, GLdouble y2)
        subroutine glRectd(x1, y1, x2, y2) bind(c, name='glRectd')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: x1
            real(GLdouble), intent(in), value :: y1
            real(GLdouble), intent(in), value :: x2
            real(GLdouble), intent(in), value :: y2
        end subroutine glRectd

        ! void glRectdv(const GLdouble *v1, const GLdouble *v2)
        subroutine glRectdv(v1, v2) bind(c, name='glRectdv')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in) :: v1(*)
            real(GLdouble), intent(in) :: v2(*)
        end subroutine glRectdv

        ! void glRectf(GLfloat x1, GLfloat y1, GLfloat x2, GLfloat y2)
        subroutine glRectf(x1, y1, x2, y2) bind(c, name='glRectf')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: x1
            real(GLfloat), intent(in), value :: y1
            real(GLfloat), intent(in), value :: x2
            real(GLfloat), intent(in), value :: y2
        end subroutine glRectf

        ! void glRectfv(const GLfloat *v1, const GLfloat *v2)
        subroutine glRectfv(v1, v2) bind(c, name='glRectfv')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in) :: v1(*)
            real(GLfloat), intent(in) :: v2(*)
        end subroutine glRectfv

        ! void glRecti(GLint x1, GLint y1, GLint x2, GLint y2)
        subroutine glRecti(x1, y1, x2, y2) bind(c, name='glRecti')
            import :: GLint
            implicit none
            integer(GLint), intent(in), value :: x1
            integer(GLint), intent(in), value :: y1
            integer(GLint), intent(in), value :: x2
            integer(GLint), intent(in), value :: y2
        end subroutine glRecti

        ! void glRectiv(const GLint *v1, const GLint *v2)
        subroutine glRectiv(v1, v2) bind(c, name='glRectiv')
            import :: GLint
            implicit none
            integer(GLint), intent(in) :: v1(*)
            integer(GLint), intent(in) :: v2(*)
        end subroutine glRectiv

        ! void glRects(GLshort x1, GLshort y1, GLshort x2, GLshort y2)
        subroutine glRects(x1, y1, x2, y2) bind(c, name='glRects')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in), value :: x1
            integer(GLshort), intent(in), value :: y1
            integer(GLshort), intent(in), value :: x2
            integer(GLshort), intent(in), value :: y2
        end subroutine glRects

        ! void glRectsv(const GLshort *v1, const GLshort *v2)
        subroutine glRectsv(v1, v2) bind(c, name='glRectsv')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in) :: v1(*)
            integer(GLshort), intent(in) :: v2(*)
        end subroutine glRectsv

        ! GLint glRenderMode(GLenum mode)
        function glRenderMode(mode) bind(c, name='glRenderMode')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: mode
            integer(GLint)                     :: glRenderMode
        end function glRenderMode

        ! void glResetHistogram(GLenum target)
        subroutine glResetHistogram(target) bind(c, name='glResetHistogram')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: target
        end subroutine glResetHistogram

        ! void glResetMinmax(GLenum target)
        subroutine glResetMinmax(target) bind(c, name='glResetMinmax')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: target
        end subroutine glResetMinmax

        ! void glRotated(GLdouble angle, GLdouble x, GLdouble y, GLdouble z)
        subroutine glRotated(angle, x, y, z) bind(c, name='glRotated')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: angle
            real(GLdouble), intent(in), value :: x
            real(GLdouble), intent(in), value :: y
            real(GLdouble), intent(in), value :: z
        end subroutine glRotated

        ! void glRotatef(GLfloat angle, GLfloat x, GLfloat y, GLfloat z)
        subroutine glRotatef(angle, x, y, z) bind(c, name='glRotatef')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: angle
            real(GLfloat), intent(in), value :: x
            real(GLfloat), intent(in), value :: y
            real(GLfloat), intent(in), value :: z
        end subroutine glRotatef

        ! void glSampleCoverage(GLclampf value, GLboolean invert)
        subroutine glSampleCoverage(value, invert) bind(c, name='glSampleCoverage')
            import :: GLboolean, GLclampf
            implicit none
            real(GLclampf),     intent(in), value :: value
            integer(Glboolean), intent(in), value :: invert
        end subroutine glSampleCoverage

        ! void glScaled(GLdouble x, GLdouble y, GLdouble z)
        subroutine glScaled(x, y, z) bind(c, name='glScaled')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: x
            real(GLdouble), intent(in), value :: y
            real(GLdouble), intent(in), value :: z
        end subroutine glScaled

        ! void glScalef(GLfloat x, GLfloat y, GLfloat z)
        subroutine glScalef(x, y, z) bind(c, name='glScalef')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: x
            real(GLfloat), intent(in), value :: y
            real(GLfloat), intent(in), value :: z
        end subroutine glScalef

        ! void glScissor(GLint x, GLint y, GLsizei width, GLsizei height)
        subroutine glScissor(x, y, width, height) bind(c, name='glScissor')
            import :: GLint, GLsizei
            implicit none
            integer(GLint),   intent(in), value :: x
            integer(GLint),   intent(in), value :: y
            integer(GLsizei), intent(in), value :: width
            integer(GLsizei), intent(in), value :: height
        end subroutine glScissor

        ! void glSelectBuffer(GLsizei size, GLuint *buffer)
        subroutine glSelectBuffer(size, buffer) bind(c, name='glSelectBuffer')
            import :: GLsizei, GLuint
            implicit none
            integer(GLsizei), intent(in), value :: size
            integer(GLuint),  intent(out)       :: buffer(*)
        end subroutine glSelectBuffer

        ! void glSeparableFilter2D(GLenum target, GLenum internalformat, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *row, const GLvoid *column)
        subroutine glSeparableFilter2D(target, internalformat, width, height, format, type, row, column) bind(c, name='glSeparableFilter2D')
            import :: GLenum, GLsizei, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLenum),  intent(in), value :: internalformat
            integer(GLsizei), intent(in), value :: width
            integer(GLsizei), intent(in), value :: height
            integer(GLenum),  intent(in), value :: format
            integer(GLenum),  intent(in), value :: type
            type(c_ptr),      intent(in), value :: row
            type(c_ptr),      intent(in), value :: column
        end subroutine glSeparableFilter2D

        ! void glShadeModel(GLenum mode)
        subroutine glShadeModel(mode) bind(c, name='glShadeModel')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: mode
        end subroutine glShadeModel

        ! void glStencilFunc(GLenum func, GLint ref, GLuint mask)
        subroutine glStencilFunc(func, ref, mask) bind(c, name='glStencilFunc')
            import :: GLenum, GLint, GLuint
            implicit none
            integer(GLenum), intent(in), value :: func
            integer(GLint),  intent(in), value :: ref
            integer(GLuint), intent(in), value :: mask
        end subroutine glStencilFunc

        ! void glStencilMask(GLuint mask)
        subroutine glStencilMask(mask) bind(c, name='glStencilMask')
            import :: GLuint
            implicit none
            integer(GLuint), intent(in), value :: mask
        end subroutine glStencilMask

        ! void glStencilOp(GLenum fail, GLenum zfail, GLenum zpass)
        subroutine glStencilOp(fail, zfail, zpass) bind(c, name='glStencilOp')
            import :: GLenum
            implicit none
            integer(GLenum), intent(in), value :: fail
            integer(GLenum), intent(in), value :: zfail
            integer(GLenum), intent(in), value :: zpass
        end subroutine glStencilOp

        ! void glTexCoord1d(GLdouble s)
        subroutine glTexCoord1d(s) bind(c, name='glTexCoord1d')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: s
        end subroutine glTexCoord1d

        ! void glTexCoord1dv(const GLdouble *v)
        subroutine glTexCoord1dv(v) bind(c, name='glTexCoord1dv')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in) :: v(*)
        end subroutine glTexCoord1dv

        ! void glTexCoord1f(GLfloat s)
        subroutine glTexCoord1f(s) bind(c, name='glTexCoord1f')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: s
        end subroutine glTexCoord1f

        ! void glTexCoord1fv(const GLfloat *v)
        subroutine glTexCoord1fv(v) bind(c, name='glTexCoord1fv')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in) :: v(*)
        end subroutine glTexCoord1fv

        ! void glTexCoord1i(GLint s)
        subroutine glTexCoord1i(s) bind(c, name='glTexCoord1i')
            import :: GLint
            implicit none
            integer(GLint), intent(in), value :: s
        end subroutine glTexCoord1i

        ! void glTexCoord1iv(const GLint *v)
        subroutine glTexCoord1iv(v) bind(c, name='glTexCoord1iv')
            import :: GLint
            implicit none
            integer(GLint), intent(in) :: v(*)
        end subroutine glTexCoord1iv

        ! void glTexCoord1s(GLshort s)
        subroutine glTexCoord1s(s) bind(c, name='glTexCoord1s')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in), value :: s
        end subroutine glTexCoord1s

        ! void glTexCoord1sv(const GLshort *v)
        subroutine glTexCoord1sv(v) bind(c, name='glTexCoord1sv')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in) :: v(*)
        end subroutine glTexCoord1sv

        ! void glTexCoord2d(GLdouble s, GLdouble t)
        subroutine glTexCoord2d(s, t) bind(c, name='glTexCoord2d')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: s
            real(GLdouble), intent(in), value :: t
        end subroutine glTexCoord2d

        ! void glTexCoord2dv(const GLdouble *v)
        subroutine glTexCoord2dv(v) bind(c, name='glTexCoord2dv')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in) :: v(*)
        end subroutine glTexCoord2dv

        ! void glTexCoord2f(GLfloat s, GLfloat t)
        subroutine glTexCoord2f(s, t) bind(c, name='glTexCoord2f')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: s
            real(GLfloat), intent(in), value :: t
        end subroutine glTexCoord2f

        ! void glTexCoord2fv(const GLfloat *v)
        subroutine glTexCoord2fv(v) bind(c, name='glTexCoord2fv')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in) :: v(*)
        end subroutine glTexCoord2fv

        ! void glTexCoord2i(GLint s, GLint t)
        subroutine glTexCoord2i(s, t) bind(c, name='glTexCoord2i')
            import :: GLint
            implicit none
            integer(GLint), intent(in), value :: s
            integer(GLint), intent(in), value :: t
        end subroutine glTexCoord2i

        ! void glTexCoord2iv(const GLint *v)
        subroutine glTexCoord2iv(v) bind(c, name='glTexCoord2iv')
            import :: GLint
            implicit none
            integer(GLint), intent(in) :: v(*)
        end subroutine glTexCoord2iv

        ! void glTexCoord2s(GLshort s, GLshort t)
        subroutine glTexCoord2s(s, t) bind(c, name='glTexCoord2s')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in), value :: s
            integer(GLshort), intent(in), value :: t
        end subroutine glTexCoord2s

        ! void glTexCoord2sv(const GLshort *v)
        subroutine glTexCoord2sv(v) bind(c, name='glTexCoord2sv')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in) :: v(*)
        end subroutine glTexCoord2sv

        ! void glTexCoord3d(GLdouble s, GLdouble t, GLdouble r)
        subroutine glTexCoord3d(s, t, r) bind(c, name='glTexCoord3d')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: s
            real(GLdouble), intent(in), value :: t
            real(GLdouble), intent(in), value :: r
        end subroutine glTexCoord3d

        ! void glTexCoord3dv(const GLdouble *v)
        subroutine glTexCoord3dv(v) bind(c, name='glTexCoord3dv')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in) :: v(*)
        end subroutine glTexCoord3dv

        ! void glTexCoord3f(GLfloat s, GLfloat t, GLfloat r)
        subroutine glTexCoord3f(s, t, r) bind(c, name='glTexCoord3f')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: s
            real(GLfloat), intent(in), value :: t
            real(GLfloat), intent(in), value :: r
        end subroutine glTexCoord3f

        ! void glTexCoord3fv(const GLfloat *v)
        subroutine glTexCoord3fv(v) bind(c, name='glTexCoord3fv')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in) :: v(*)
        end subroutine glTexCoord3fv

        ! void glTexCoord3i(GLint s, GLint t, GLint r)
        subroutine glTexCoord3i(s, t, r) bind(c, name='glTexCoord3i')
            import :: GLint
            implicit none
            integer(GLint), intent(in), value :: s
            integer(GLint), intent(in), value :: t
            integer(GLint), intent(in), value :: r
        end subroutine glTexCoord3i

        ! void glTexCoord3iv(const GLint *v)
        subroutine glTexCoord3iv(v) bind(c, name='glTexCoord3iv')
            import :: GLint
            implicit none
            integer(GLint), intent(in) :: v(*)
        end subroutine glTexCoord3iv

        ! void glTexCoord3s(GLshort s, GLshort t, GLshort r)
        subroutine glTexCoord3s(s, t, r) bind(c, name='glTexCoord3s')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in), value :: s
            integer(GLshort), intent(in), value :: t
            integer(GLshort), intent(in), value :: r
        end subroutine glTexCoord3s

        ! void glTexCoord3sv(const GLshort *v)
        subroutine glTexCoord3sv(v) bind(c, name='glTexCoord3sv')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in) :: v(*)
        end subroutine glTexCoord3sv

        ! void glTexCoord4d(GLdouble s, GLdouble t, GLdouble r, GLdouble q)
        subroutine glTexCoord4d(s, t, r, q) bind(c, name='glTexCoord4d')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: s
            real(GLdouble), intent(in), value :: t
            real(GLdouble), intent(in), value :: r
            real(GLdouble), intent(in), value :: q
        end subroutine glTexCoord4d

        ! void glTexCoord4dv(const GLdouble *v)
        subroutine glTexCoord4dv(v) bind(c, name='glTexCoord4dv')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in) :: v(*)
        end subroutine glTexCoord4dv

        ! void glTexCoord4f(GLfloat s, GLfloat t, GLfloat r, GLfloat q)
        subroutine glTexCoord4f(s, t, r, q) bind(c, name='glTexCoord4f')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: s
            real(GLfloat), intent(in), value :: t
            real(GLfloat), intent(in), value :: r
            real(GLfloat), intent(in), value :: q
        end subroutine glTexCoord4f

        ! void glTexCoord4fv(const GLfloat *v)
        subroutine glTexCoord4fv(v) bind(c, name='glTexCoord4fv')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in) :: v(*)
        end subroutine glTexCoord4fv

        ! void glTexCoord4i(GLint s, GLint t, GLint r, GLint q)
        subroutine glTexCoord4i(s, t, r, q) bind(c, name='glTexCoord4i')
            import :: GLint
            implicit none
            integer(GLint), intent(in), value :: s
            integer(GLint), intent(in), value :: t
            integer(GLint), intent(in), value :: r
            integer(GLint), intent(in), value :: q
        end subroutine glTexCoord4i

        ! void glTexCoord4iv(const GLint *v)
        subroutine glTexCoord4iv(v) bind(c, name='glTexCoord4iv')
            import :: GLint
            implicit none
            integer(GLint), intent(in) :: v(*)
        end subroutine glTexCoord4iv

        ! void glTexCoord4s(GLshort s, GLshort t, GLshort r, GLshort q)
        subroutine glTexCoord4s(s, t, r, q) bind(c, name='glTexCoord4s')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in), value :: s
            integer(GLshort), intent(in), value :: t
            integer(GLshort), intent(in), value :: r
            integer(GLshort), intent(in), value :: q
        end subroutine glTexCoord4s

        ! void glTexCoord4sv(const GLshort *v)
        subroutine glTexCoord4sv(v) bind(c, name='glTexCoord4sv')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in) :: v(*)
        end subroutine glTexCoord4sv

        ! void glTexCoordPointer(GLint size, GLenum type, GLsizei stride, const GLvoid *ptr)
        subroutine glTexCoordPointer(size, type, stride, ptr) bind(c, name='glTexCoordPointer')
            import :: GLenum, GLint, GLsizei, c_ptr
            implicit none
            integer(GLint),   intent(in), value :: size
            integer(GLenum),  intent(in), value :: type
            integer(GLsizei), intent(in), value :: stride
            type(c_ptr),      intent(in), value :: ptr
        end subroutine glTexCoordPointer

        ! void glTexEnvf(GLenum target, GLenum pname, GLfloat param)
        subroutine glTexEnvf(target, pname, param) bind(c, name='glTexEnvf')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(in), value :: param
        end subroutine glTexEnvf

        ! void glTexEnvfv(GLenum target, GLenum pname, const GLfloat *params)
        subroutine glTexEnvfv(target, pname, params) bind(c, name='glTexEnvfv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(in)        :: params(*)
        end subroutine glTexEnvfv

        ! void glTexEnvi(GLenum target, GLenum pname, GLint param)
        subroutine glTexEnvi(target, pname, param) bind(c, name='glTexEnvi')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(in), value :: param
        end subroutine glTexEnvi

        ! void glTexEnviv(GLenum target, GLenum pname, const GLint *params)
        subroutine glTexEnviv(target, pname, params) bind(c, name='glTexEnviv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(in)        :: params(*)
        end subroutine glTexEnviv

        ! void glTexGend(GLenum coord, GLenum pname, GLdouble param)
        subroutine glTexGend(coord, pname, param) bind(c, name='glTexGend')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: coord
            integer(GLenum), intent(in), value :: pname
            real(GLdouble),  intent(in), value :: param
        end subroutine glTexGend

        ! void glTexGendv(GLenum coord, GLenum pname, const GLdouble *params)
        subroutine glTexGendv(coord, pname, params) bind(c, name='glTexGendv')
            import :: GLdouble, GLenum
            implicit none
            integer(GLenum), intent(in), value :: coord
            integer(GLenum), intent(in), value :: pname
            real(GLdouble),  intent(in)        :: params(*)
        end subroutine glTexGendv

        ! void glTexGenf(GLenum coord, GLenum pname, GLfloat param)
        subroutine glTexGenf(coord, pname, param) bind(c, name='glTexGenf')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: coord
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(in), value :: param
        end subroutine glTexGenf

        ! void glTexGenfv(GLenum coord, GLenum pname, const GLfloat *params)
        subroutine glTexGenfv(coord, pname, params) bind(c, name='glTexGenfv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: coord
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(in)        :: params(*)
        end subroutine glTexGenfv

        ! void glTexGeni(GLenum coord, GLenum pname, GLint param)
        subroutine glTexGeni(coord, pname, param) bind(c, name='glTexGeni')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: coord
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(in), value :: param
        end subroutine glTexGeni

        ! void glTexGeniv(GLenum coord, GLenum pname, const GLint *params)
        subroutine glTexGeniv(coord, pname, params) bind(c, name='glTexGeniv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: coord
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(in)        :: params(*)
        end subroutine glTexGeniv

        ! void glTexImage1D(GLenum target, GLint level, GLint internalFormat, GLsizei width, GLint border, GLenum format, GLenum type, const GLvoid *pixels)
        subroutine glTexImage1D(target, level, internalFormat, width, border, format, type, pixels) bind(c, name='glTexImage1D')
            import :: GLenum, GLint, GLsizei, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLint),   intent(in), value :: level
            integer(GLint),   intent(in), value :: internalFormat
            integer(GLsizei), intent(in), value :: width
            integer(GLint),   intent(in), value :: border
            integer(GLenum),  intent(in), value :: format
            integer(GLenum),  intent(in), value :: type
            type(c_ptr),      intent(in), value :: pixels
        end subroutine glTexImage1D

        ! void glTexImage2D(GLenum target, GLint level, GLint internalFormat, GLsizei width, GLsizei height, GLint border, GLenum format, GLenum type, const GLvoid *pixels)
        subroutine glTexImage2D(target, level, internalFormat, width, height, border, format, type, pixels) bind(c, name='glTexImage2D')
            import :: GLenum, GLint, GLsizei, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLint),   intent(in), value :: level
            integer(GLint),   intent(in), value :: internalFormat
            integer(GLsizei), intent(in), value :: width
            integer(GLsizei), intent(in), value :: height
            integer(GLint),   intent(in), value :: border
            integer(GLenum),  intent(in), value :: format
            integer(GLenum),  intent(in), value :: type
            type(c_ptr),      intent(in), value :: pixels
        end subroutine glTexImage2D

        ! void glTexImage3D(GLenum target, GLint level, GLint internalFormat, GLsizei width, GLsizei height, GLsizei depth, GLint border, GLenum format, GLenum type, const GLvoid *pixels)
        subroutine glTexImage3D(target, level, internalFormat, width, height, depth, border, format, type, pixels) bind(c, name='glTexImage3D')
            import :: GLenum, GLint, GLsizei, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLint),   intent(in), value :: level
            integer(GLint),   intent(in), value :: internalFormat
            integer(GLsizei), intent(in), value :: width
            integer(GLsizei), intent(in), value :: height
            integer(GLsizei), intent(in), value :: depth
            integer(GLint),   intent(in), value :: border
            integer(GLenum),  intent(in), value :: format
            integer(GLenum),  intent(in), value :: type
            type(c_ptr),      intent(in), value :: pixels
        end subroutine glTexImage3D

        ! void glTexParameterf(GLenum target, GLenum pname, GLfloat param)
        subroutine glTexParameterf(target, pname, param) bind(c, name='glTexParameterf')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(in), value :: param
        end subroutine glTexParameterf

        ! void glTexParameterfv(GLenum target, GLenum pname, const GLfloat *params)
        subroutine glTexParameterfv(target, pname, params) bind(c, name='glTexParameterfv')
            import :: GLenum, GLfloat
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            real(GLfloat),   intent(in)        :: params(*)
        end subroutine glTexParameterfv

        ! void glTexParameteri(GLenum target, GLenum pname, GLint param)
        subroutine glTexParameteri(target, pname, param) bind(c, name='glTexParameteri')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(in), value :: param
        end subroutine glTexParameteri

        ! void glTexParameteriv(GLenum target, GLenum pname, const GLint *params)
        subroutine glTexParameteriv(target, pname, params) bind(c, name='glTexParameteriv')
            import :: GLenum, GLint
            implicit none
            integer(GLenum), intent(in), value :: target
            integer(GLenum), intent(in), value :: pname
            integer(GLint),  intent(in)        :: params(*)
        end subroutine glTexParameteriv

        ! void glTexSubImage1D(GLenum target, GLint level, GLint xoffset, GLsizei width, GLenum format, GLenum type, const GLvoid *pixels)
        subroutine glTexSubImage1D(target, level, xoffset, width, format, type, pixels) bind(c, name='glTexSubImage1D')
            import :: GLenum, GLint, GLsizei, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLint),   intent(in), value :: level
            integer(GLint),   intent(in), value :: xoffset
            integer(GLsizei), intent(in), value :: width
            integer(GLenum),  intent(in), value :: format
            integer(GLenum),  intent(in), value :: type
            type(c_ptr),      intent(in), value :: pixels
        end subroutine glTexSubImage1D

        ! void glTexSubImage2D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLsizei width, GLsizei height, GLenum format, GLenum type, const GLvoid *pixels)
        subroutine glTexSubImage2D(target, level, xoffset, yoffset, width, height, format, type, pixels) bind(c, name='glTexSubImage2D')
            import :: GLenum, GLint, GLsizei, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLint),   intent(in), value :: level
            integer(GLint),   intent(in), value :: xoffset
            integer(GLint),   intent(in), value :: yoffset
            integer(GLsizei), intent(in), value :: width
            integer(GLsizei), intent(in), value :: height
            integer(GLenum),  intent(in), value :: format
            integer(GLenum),  intent(in), value :: type
            type(c_ptr),      intent(in), value :: pixels
        end subroutine glTexSubImage2D

        ! void glTexSubImage3D(GLenum target, GLint level, GLint xoffset, GLint yoffset, GLint zoffset, GLsizei width, GLsizei height, GLsizei depth, GLenum format, GLenum type, const GLvoid *pixels)
        subroutine glTexSubImage3D(target, level, xoffset, yoffset, zoffset, width, height, depth, format, type, pixels) bind(c, name='glTexSubImage3D')
            import :: GLenum, GLint, GLsizei, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: target
            integer(GLint),   intent(in), value :: level
            integer(GLint),   intent(in), value :: xoffset
            integer(GLint),   intent(in), value :: yoffset
            integer(GLint),   intent(in), value :: zoffset
            integer(GLsizei), intent(in), value :: width
            integer(GLsizei), intent(in), value :: height
            integer(GLsizei), intent(in), value :: depth
            integer(GLenum),  intent(in), value :: format
            integer(GLenum),  intent(in), value :: type
            type(c_ptr),      intent(in), value :: pixels
        end subroutine glTexSubImage3D

        ! void glTranslated(GLdouble x, GLdouble y, GLdouble z)
        subroutine glTranslated(x, y, z) bind(c, name='glTranslated')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: x
            real(GLdouble), intent(in), value :: y
            real(GLdouble), intent(in), value :: z
        end subroutine glTranslated

        ! void glTranslatef(GLfloat x, GLfloat y, GLfloat z)
        subroutine glTranslatef(x, y, z) bind(c, name='glTranslatef')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: x
            real(GLfloat), intent(in), value :: y
            real(GLfloat), intent(in), value :: z
        end subroutine glTranslatef

        ! void glVertex2d(GLdouble x, GLdouble y)
        subroutine glVertex2d(x, y) bind(c, name='glVertex2d')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: x
            real(GLdouble), intent(in), value :: y
        end subroutine glVertex2d

        ! void glVertex2dv(const GLdouble *v)
        subroutine glVertex2dv(v) bind(c, name='glVertex2dv')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in) :: v(*)
        end subroutine glVertex2dv

        ! void glVertex2f(GLfloat x, GLfloat y)
        subroutine glVertex2f(x, y) bind(c, name='glVertex2f')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: x
            real(GLfloat), intent(in), value :: y
        end subroutine glVertex2f

        ! void glVertex2fv(const GLfloat *v)
        subroutine glVertex2fv(v) bind(c, name='glVertex2fv')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in) :: v(*)
        end subroutine glVertex2fv

        ! void glVertex2i(GLint x, GLint y)
        subroutine glVertex2i(x, y) bind(c, name='glVertex2i')
            import :: GLint
            implicit none
            integer(GLint), intent(in), value :: x
            integer(GLint), intent(in), value :: y
        end subroutine glVertex2i

        ! void glVertex2iv(const GLint *v)
        subroutine glVertex2iv(v) bind(c, name='glVertex2iv')
            import :: GLint
            implicit none
            integer(GLint), intent(in) :: v(*)
        end subroutine glVertex2iv

        ! void glVertex2s(GLshort x, GLshort y)
        subroutine glVertex2s(x, y) bind(c, name='glVertex2s')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in), value :: x
            integer(GLshort), intent(in), value :: y
        end subroutine glVertex2s

        ! void glVertex2sv(const GLshort *v)
        subroutine glVertex2sv(v) bind(c, name='glVertex2sv')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in) :: v(*)
        end subroutine glVertex2sv

        ! void glVertex3d(GLdouble x, GLdouble y, GLdouble z)
        subroutine glVertex3d(x, y, z) bind(c, name='glVertex3d')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: x
            real(GLdouble), intent(in), value :: y
            real(GLdouble), intent(in), value :: z
        end subroutine glVertex3d

        ! void glVertex3dv(const GLdouble *v)
        subroutine glVertex3dv(v) bind(c, name='glVertex3dv')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in) :: v(*)
        end subroutine glVertex3dv

        ! void glVertex3f(GLfloat x, GLfloat y, GLfloat z)
        subroutine glVertex3f(x, y, z) bind(c, name='glVertex3f')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: x
            real(GLfloat), intent(in), value :: y
            real(GLfloat), intent(in), value :: z
        end subroutine glVertex3f

        ! void glVertex3fv(const GLfloat *v)
        subroutine glVertex3fv(v) bind(c, name='glVertex3fv')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in) :: v(*)
        end subroutine glVertex3fv

        ! void glVertex3i(GLint x, GLint y, GLint z)
        subroutine glVertex3i(x, y, z) bind(c, name='glVertex3i')
            import :: GLint
            implicit none
            integer(GLint), intent(in), value :: x
            integer(GLint), intent(in), value :: y
            integer(GLint), intent(in), value :: z
        end subroutine glVertex3i

        ! void glVertex3iv(const GLint *v)
        subroutine glVertex3iv(v) bind(c, name='glVertex3iv')
            import :: GLint
            implicit none
            integer(GLint), intent(in) :: v(*)
        end subroutine glVertex3iv

        ! void glVertex3s(GLshort x, GLshort y, GLshort z)
        subroutine glVertex3s(x, y, z) bind(c, name='glVertex3s')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in), value :: x
            integer(GLshort), intent(in), value :: y
            integer(GLshort), intent(in), value :: z
        end subroutine glVertex3s

        ! void glVertex3sv(const GLshort *v)
        subroutine glVertex3sv(v) bind(c, name='glVertex3sv')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in) :: v(*)
        end subroutine glVertex3sv

        ! void glVertex4d(GLdouble x, GLdouble y, GLdouble z, GLdouble w)
        subroutine glVertex4d(x, y, z, w) bind(c, name='glVertex4d')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in), value :: x
            real(GLdouble), intent(in), value :: y
            real(GLdouble), intent(in), value :: z
            real(GLdouble), intent(in), value :: w
        end subroutine glVertex4d

        ! void glVertex4dv(const GLdouble *v)
        subroutine glVertex4dv(v) bind(c, name='glVertex4dv')
            import :: GLdouble
            implicit none
            real(GLdouble), intent(in) :: v(*)
        end subroutine glVertex4dv

        ! void glVertex4f(GLfloat x, GLfloat y, GLfloat z, GLfloat w)
        subroutine glVertex4f(x, y, z, w) bind(c, name='glVertex4f')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in), value :: x
            real(GLfloat), intent(in), value :: y
            real(GLfloat), intent(in), value :: z
            real(GLfloat), intent(in), value :: w
        end subroutine glVertex4f

        ! void glVertex4fv(const GLfloat *v)
        subroutine glVertex4fv(v) bind(c, name='glVertex4fv')
            import :: GLfloat
            implicit none
            real(GLfloat), intent(in) :: v(*)
        end subroutine glVertex4fv

        ! void glVertex4i(GLint x, GLint y, GLint z, GLint w)
        subroutine glVertex4i(x, y, z, w) bind(c, name='glVertex4i')
            import :: GLint
            implicit none
            integer(GLint), intent(in), value :: x
            integer(GLint), intent(in), value :: y
            integer(GLint), intent(in), value :: z
            integer(GLint), intent(in), value :: w
        end subroutine glVertex4i

        ! void glVertex4iv(const GLint *v)
        subroutine glVertex4iv(v) bind(c, name='glVertex4iv')
            import :: GLint
            implicit none
            integer(GLint), intent(in) :: v(*)
        end subroutine glVertex4iv

        ! void glVertex4s(GLshort x, GLshort y, GLshort z, GLshort w)
        subroutine glVertex4s(x, y, z, w) bind(c, name='glVertex4s')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in), value :: x
            integer(GLshort), intent(in), value :: y
            integer(GLshort), intent(in), value :: z
            integer(GLshort), intent(in), value :: w
        end subroutine glVertex4s

        ! void glVertex4sv(const GLshort *v)
        subroutine glVertex4sv(v) bind(c, name='glVertex4sv')
            import :: GLshort
            implicit none
            integer(GLshort), intent(in) :: v(*)
        end subroutine glVertex4sv

        ! void glVertexPointer(GLint size, GLenum type, GLsizei stride, const GLvoid *ptr)
        subroutine glVertexPointer(size, type, stride, ptr) bind(c, name='glVertexPointer')
            import :: GLenum, GLint, GLsizei, c_ptr
            implicit none
            integer(GLint),   intent(in), value :: size
            integer(GLenum),  intent(in), value :: type
            integer(GLsizei), intent(in), value :: stride
            type(c_ptr),      intent(in), value :: ptr
        end subroutine glVertexPointer

        ! void glViewport(GLint x, GLint y, GLsizei width, GLsizei height)
        subroutine glViewport(x, y, width, height) bind(c, name='glViewport')
            import :: GLint, GLsizei
            implicit none
            integer(GLint),   intent(in), value :: x
            integer(GLint),   intent(in), value :: y
            integer(GLsizei), intent(in), value :: width
            integer(GLsizei), intent(in), value :: height
        end subroutine glViewport
    end interface
end module sdl3_opengl
