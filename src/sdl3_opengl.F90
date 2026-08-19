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
    integer(GLboolean), parameter, public :: GL_FALSE = 0_GLBoolean
    integer(GLboolean), parameter, public :: GL_TRUE  = 1_GLBoolean

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
    integer(c_int), parameter, public :: GL_UNSIGNED_BYTE_3_3_2                                                            = int(z'8032')
    integer(c_int), parameter, public :: GL_UNSIGNED_SHORT_4_4_4_4                                                         = int(z'8033')
    integer(c_int), parameter, public :: GL_UNSIGNED_SHORT_5_5_5_1                                                         = int(z'8034')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_8_8_8_8                                                           = int(z'8035')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_10_10_10_2                                                        = int(z'8036')
    integer(c_int), parameter, public :: GL_TEXTURE_BINDING_3D                                                             = int(z'806A')
    integer(c_int), parameter, public :: GL_PACK_SKIP_IMAGES                                                               = int(z'806B')
    integer(c_int), parameter, public :: GL_PACK_IMAGE_HEIGHT                                                              = int(z'806C')
    integer(c_int), parameter, public :: GL_UNPACK_SKIP_IMAGES                                                             = int(z'806D')
    integer(c_int), parameter, public :: GL_UNPACK_IMAGE_HEIGHT                                                            = int(z'806E')
    integer(c_int), parameter, public :: GL_TEXTURE_3D                                                                     = int(z'806F')
    integer(c_int), parameter, public :: GL_PROXY_TEXTURE_3D                                                               = int(z'8070')
    integer(c_int), parameter, public :: GL_TEXTURE_DEPTH                                                                  = int(z'8071')
    integer(c_int), parameter, public :: GL_TEXTURE_WRAP_R                                                                 = int(z'8072')
    integer(c_int), parameter, public :: GL_MAX_3D_TEXTURE_SIZE                                                            = int(z'8073')
    integer(c_int), parameter, public :: GL_UNSIGNED_BYTE_2_3_3_REV                                                        = int(z'8362')
    integer(c_int), parameter, public :: GL_UNSIGNED_SHORT_5_6_5                                                           = int(z'8363')
    integer(c_int), parameter, public :: GL_UNSIGNED_SHORT_5_6_5_REV                                                       = int(z'8364')
    integer(c_int), parameter, public :: GL_UNSIGNED_SHORT_4_4_4_4_REV                                                     = int(z'8365')
    integer(c_int), parameter, public :: GL_UNSIGNED_SHORT_1_5_5_5_REV                                                     = int(z'8366')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_8_8_8_8_REV                                                       = int(z'8367')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_2_10_10_10_REV                                                    = int(z'8368')
    integer(c_int), parameter, public :: GL_BGR                                                                            = int(z'80E0')
    integer(c_int), parameter, public :: GL_BGRA                                                                           = int(z'80E1')
    integer(c_int), parameter, public :: GL_MAX_ELEMENTS_VERTICES                                                          = int(z'80E8')
    integer(c_int), parameter, public :: GL_MAX_ELEMENTS_INDICES                                                           = int(z'80E9')
    integer(c_int), parameter, public :: GL_CLAMP_TO_EDGE                                                                  = int(z'812F')
    integer(c_int), parameter, public :: GL_TEXTURE_MIN_LOD                                                                = int(z'813A')
    integer(c_int), parameter, public :: GL_TEXTURE_MAX_LOD                                                                = int(z'813B')
    integer(c_int), parameter, public :: GL_TEXTURE_BASE_LEVEL                                                             = int(z'813C')
    integer(c_int), parameter, public :: GL_TEXTURE_MAX_LEVEL                                                              = int(z'813D')
    integer(c_int), parameter, public :: GL_SMOOTH_POINT_SIZE_RANGE                                                        = int(z'0B12')
    integer(c_int), parameter, public :: GL_SMOOTH_POINT_SIZE_GRANULARITY                                                  = int(z'0B13')
    integer(c_int), parameter, public :: GL_SMOOTH_LINE_WIDTH_RANGE                                                        = int(z'0B22')
    integer(c_int), parameter, public :: GL_SMOOTH_LINE_WIDTH_GRANULARITY                                                  = int(z'0B23')
    integer(c_int), parameter, public :: GL_ALIASED_LINE_WIDTH_RANGE                                                       = int(z'846E')
    integer(c_int), parameter, public :: GL_RESCALE_NORMAL                                                                 = int(z'803A')
    integer(c_int), parameter, public :: GL_LIGHT_MODEL_COLOR_CONTROL                                                      = int(z'81F8')
    integer(c_int), parameter, public :: GL_SINGLE_COLOR                                                                   = int(z'81F9')
    integer(c_int), parameter, public :: GL_SEPARATE_SPECULAR_COLOR                                                        = int(z'81FA')
    integer(c_int), parameter, public :: GL_ALIASED_POINT_SIZE_RANGE                                                       = int(z'846D')

    ! OpenGL 1.3
    integer(c_int), parameter, public :: GL_TEXTURE0                                                                       = int(z'84C0')
    integer(c_int), parameter, public :: GL_TEXTURE1                                                                       = int(z'84C1')
    integer(c_int), parameter, public :: GL_TEXTURE2                                                                       = int(z'84C2')
    integer(c_int), parameter, public :: GL_TEXTURE3                                                                       = int(z'84C3')
    integer(c_int), parameter, public :: GL_TEXTURE4                                                                       = int(z'84C4')
    integer(c_int), parameter, public :: GL_TEXTURE5                                                                       = int(z'84C5')
    integer(c_int), parameter, public :: GL_TEXTURE6                                                                       = int(z'84C6')
    integer(c_int), parameter, public :: GL_TEXTURE7                                                                       = int(z'84C7')
    integer(c_int), parameter, public :: GL_TEXTURE8                                                                       = int(z'84C8')
    integer(c_int), parameter, public :: GL_TEXTURE9                                                                       = int(z'84C9')
    integer(c_int), parameter, public :: GL_TEXTURE10                                                                      = int(z'84CA')
    integer(c_int), parameter, public :: GL_TEXTURE11                                                                      = int(z'84CB')
    integer(c_int), parameter, public :: GL_TEXTURE12                                                                      = int(z'84CC')
    integer(c_int), parameter, public :: GL_TEXTURE13                                                                      = int(z'84CD')
    integer(c_int), parameter, public :: GL_TEXTURE14                                                                      = int(z'84CE')
    integer(c_int), parameter, public :: GL_TEXTURE15                                                                      = int(z'84CF')
    integer(c_int), parameter, public :: GL_TEXTURE16                                                                      = int(z'84D0')
    integer(c_int), parameter, public :: GL_TEXTURE17                                                                      = int(z'84D1')
    integer(c_int), parameter, public :: GL_TEXTURE18                                                                      = int(z'84D2')
    integer(c_int), parameter, public :: GL_TEXTURE19                                                                      = int(z'84D3')
    integer(c_int), parameter, public :: GL_TEXTURE20                                                                      = int(z'84D4')
    integer(c_int), parameter, public :: GL_TEXTURE21                                                                      = int(z'84D5')
    integer(c_int), parameter, public :: GL_TEXTURE22                                                                      = int(z'84D6')
    integer(c_int), parameter, public :: GL_TEXTURE23                                                                      = int(z'84D7')
    integer(c_int), parameter, public :: GL_TEXTURE24                                                                      = int(z'84D8')
    integer(c_int), parameter, public :: GL_TEXTURE25                                                                      = int(z'84D9')
    integer(c_int), parameter, public :: GL_TEXTURE26                                                                      = int(z'84DA')
    integer(c_int), parameter, public :: GL_TEXTURE27                                                                      = int(z'84DB')
    integer(c_int), parameter, public :: GL_TEXTURE28                                                                      = int(z'84DC')
    integer(c_int), parameter, public :: GL_TEXTURE29                                                                      = int(z'84DD')
    integer(c_int), parameter, public :: GL_TEXTURE30                                                                      = int(z'84DE')
    integer(c_int), parameter, public :: GL_TEXTURE31                                                                      = int(z'84DF')
    integer(c_int), parameter, public :: GL_ACTIVE_TEXTURE                                                                 = int(z'84E0')
    integer(c_int), parameter, public :: GL_MULTISAMPLE                                                                    = int(z'809D')
    integer(c_int), parameter, public :: GL_SAMPLE_ALPHA_TO_COVERAGE                                                       = int(z'809E')
    integer(c_int), parameter, public :: GL_SAMPLE_ALPHA_TO_ONE                                                            = int(z'809F')
    integer(c_int), parameter, public :: GL_SAMPLE_COVERAGE                                                                = int(z'80A0')
    integer(c_int), parameter, public :: GL_SAMPLE_BUFFERS                                                                 = int(z'80A8')
    integer(c_int), parameter, public :: GL_SAMPLES                                                                        = int(z'80A9')
    integer(c_int), parameter, public :: GL_SAMPLE_COVERAGE_VALUE                                                          = int(z'80AA')
    integer(c_int), parameter, public :: GL_SAMPLE_COVERAGE_INVERT                                                         = int(z'80AB')
    integer(c_int), parameter, public :: GL_TEXTURE_CUBE_MAP                                                               = int(z'8513')
    integer(c_int), parameter, public :: GL_TEXTURE_BINDING_CUBE_MAP                                                       = int(z'8514')
    integer(c_int), parameter, public :: GL_TEXTURE_CUBE_MAP_POSITIVE_X                                                    = int(z'8515')
    integer(c_int), parameter, public :: GL_TEXTURE_CUBE_MAP_NEGATIVE_X                                                    = int(z'8516')
    integer(c_int), parameter, public :: GL_TEXTURE_CUBE_MAP_POSITIVE_Y                                                    = int(z'8517')
    integer(c_int), parameter, public :: GL_TEXTURE_CUBE_MAP_NEGATIVE_Y                                                    = int(z'8518')
    integer(c_int), parameter, public :: GL_TEXTURE_CUBE_MAP_POSITIVE_Z                                                    = int(z'8519')
    integer(c_int), parameter, public :: GL_TEXTURE_CUBE_MAP_NEGATIVE_Z                                                    = int(z'851A')
    integer(c_int), parameter, public :: GL_PROXY_TEXTURE_CUBE_MAP                                                         = int(z'851B')
    integer(c_int), parameter, public :: GL_MAX_CUBE_MAP_TEXTURE_SIZE                                                      = int(z'851C')
    integer(c_int), parameter, public :: GL_COMPRESSED_RGB                                                                 = int(z'84ED')
    integer(c_int), parameter, public :: GL_COMPRESSED_RGBA                                                                = int(z'84EE')
    integer(c_int), parameter, public :: GL_TEXTURE_COMPRESSION_HINT                                                       = int(z'84EF')
    integer(c_int), parameter, public :: GL_TEXTURE_COMPRESSED_IMAGE_SIZE                                                  = int(z'86A0')
    integer(c_int), parameter, public :: GL_TEXTURE_COMPRESSED                                                             = int(z'86A1')
    integer(c_int), parameter, public :: GL_NUM_COMPRESSED_TEXTURE_FORMATS                                                 = int(z'86A2')
    integer(c_int), parameter, public :: GL_COMPRESSED_TEXTURE_FORMATS                                                     = int(z'86A3')
    integer(c_int), parameter, public :: GL_CLAMP_TO_BORDER                                                                = int(z'812D')
    integer(c_int), parameter, public :: GL_CLIENT_ACTIVE_TEXTURE                                                          = int(z'84E1')
    integer(c_int), parameter, public :: GL_MAX_TEXTURE_UNITS                                                              = int(z'84E2')
    integer(c_int), parameter, public :: GL_TRANSPOSE_MODELVIEW_MATRIX                                                     = int(z'84E3')
    integer(c_int), parameter, public :: GL_TRANSPOSE_PROJECTION_MATRIX                                                    = int(z'84E4')
    integer(c_int), parameter, public :: GL_TRANSPOSE_TEXTURE_MATRIX                                                       = int(z'84E5')
    integer(c_int), parameter, public :: GL_TRANSPOSE_COLOR_MATRIX                                                         = int(z'84E6')
    integer(c_int), parameter, public :: GL_MULTISAMPLE_BIT                                                                = int(z'20000000')
    integer(c_int), parameter, public :: GL_NORMAL_MAP                                                                     = int(z'8511')
    integer(c_int), parameter, public :: GL_REFLECTION_MAP                                                                 = int(z'8512')
    integer(c_int), parameter, public :: GL_COMPRESSED_ALPHA                                                               = int(z'84E9')
    integer(c_int), parameter, public :: GL_COMPRESSED_LUMINANCE                                                           = int(z'84EA')
    integer(c_int), parameter, public :: GL_COMPRESSED_LUMINANCE_ALPHA                                                     = int(z'84EB')
    integer(c_int), parameter, public :: GL_COMPRESSED_INTENSITY                                                           = int(z'84EC')
    integer(c_int), parameter, public :: GL_COMBINE                                                                        = int(z'8570')
    integer(c_int), parameter, public :: GL_COMBINE_RGB                                                                    = int(z'8571')
    integer(c_int), parameter, public :: GL_COMBINE_ALPHA                                                                  = int(z'8572')
    integer(c_int), parameter, public :: GL_SOURCE0_RGB                                                                    = int(z'8580')
    integer(c_int), parameter, public :: GL_SOURCE1_RGB                                                                    = int(z'8581')
    integer(c_int), parameter, public :: GL_SOURCE2_RGB                                                                    = int(z'8582')
    integer(c_int), parameter, public :: GL_SOURCE0_ALPHA                                                                  = int(z'8588')
    integer(c_int), parameter, public :: GL_SOURCE1_ALPHA                                                                  = int(z'8589')
    integer(c_int), parameter, public :: GL_SOURCE2_ALPHA                                                                  = int(z'858A')
    integer(c_int), parameter, public :: GL_OPERAND0_RGB                                                                   = int(z'8590')
    integer(c_int), parameter, public :: GL_OPERAND1_RGB                                                                   = int(z'8591')
    integer(c_int), parameter, public :: GL_OPERAND2_RGB                                                                   = int(z'8592')
    integer(c_int), parameter, public :: GL_OPERAND0_ALPHA                                                                 = int(z'8598')
    integer(c_int), parameter, public :: GL_OPERAND1_ALPHA                                                                 = int(z'8599')
    integer(c_int), parameter, public :: GL_OPERAND2_ALPHA                                                                 = int(z'859A')
    integer(c_int), parameter, public :: GL_RGB_SCALE                                                                      = int(z'8573')
    integer(c_int), parameter, public :: GL_ADD_SIGNED                                                                     = int(z'8574')
    integer(c_int), parameter, public :: GL_INTERPOLATE                                                                    = int(z'8575')
    integer(c_int), parameter, public :: GL_SUBTRACT                                                                       = int(z'84E7')
    integer(c_int), parameter, public :: GL_CONSTANT                                                                       = int(z'8576')
    integer(c_int), parameter, public :: GL_PRIMARY_COLOR                                                                  = int(z'8577')
    integer(c_int), parameter, public :: GL_PREVIOUS                                                                       = int(z'8578')
    integer(c_int), parameter, public :: GL_DOT3_RGB                                                                       = int(z'86AE')
    integer(c_int), parameter, public :: GL_DOT3_RGBA                                                                      = int(z'86AF')

    ! OpenGL 1.3
    integer(c_int), parameter, public :: GL_BLEND_DST_RGB                                                                  = int(z'80C8')
    integer(c_int), parameter, public :: GL_BLEND_SRC_RGB                                                                  = int(z'80C9')
    integer(c_int), parameter, public :: GL_BLEND_DST_ALPHA                                                                = int(z'80CA')
    integer(c_int), parameter, public :: GL_BLEND_SRC_ALPHA                                                                = int(z'80CB')
    integer(c_int), parameter, public :: GL_POINT_FADE_THRESHOLD_SIZE                                                      = int(z'8128')
    integer(c_int), parameter, public :: GL_DEPTH_COMPONENT16                                                              = int(z'81A5')
    integer(c_int), parameter, public :: GL_DEPTH_COMPONENT24                                                              = int(z'81A6')
    integer(c_int), parameter, public :: GL_DEPTH_COMPONENT32                                                              = int(z'81A7')
    integer(c_int), parameter, public :: GL_MIRRORED_REPEAT                                                                = int(z'8370')
    integer(c_int), parameter, public :: GL_MAX_TEXTURE_LOD_BIAS                                                           = int(z'84FD')
    integer(c_int), parameter, public :: GL_TEXTURE_LOD_BIAS                                                               = int(z'8501')
    integer(c_int), parameter, public :: GL_INCR_WRAP                                                                      = int(z'8507')
    integer(c_int), parameter, public :: GL_DECR_WRAP                                                                      = int(z'8508')
    integer(c_int), parameter, public :: GL_TEXTURE_DEPTH_SIZE                                                             = int(z'884A')
    integer(c_int), parameter, public :: GL_TEXTURE_COMPARE_MODE                                                           = int(z'884C')
    integer(c_int), parameter, public :: GL_TEXTURE_COMPARE_FUNC                                                           = int(z'884D')
    integer(c_int), parameter, public :: GL_POINT_SIZE_MIN                                                                 = int(z'8126')
    integer(c_int), parameter, public :: GL_POINT_SIZE_MAX                                                                 = int(z'8127')
    integer(c_int), parameter, public :: GL_POINT_DISTANCE_ATTENUATION                                                     = int(z'8129')
    integer(c_int), parameter, public :: GL_GENERATE_MIPMAP                                                                = int(z'8191')
    integer(c_int), parameter, public :: GL_GENERATE_MIPMAP_HINT                                                           = int(z'8192')
    integer(c_int), parameter, public :: GL_FOG_COORDINATE_SOURCE                                                          = int(z'8450')
    integer(c_int), parameter, public :: GL_FOG_COORDINATE                                                                 = int(z'8451')
    integer(c_int), parameter, public :: GL_FRAGMENT_DEPTH                                                                 = int(z'8452')
    integer(c_int), parameter, public :: GL_CURRENT_FOG_COORDINATE                                                         = int(z'8453')
    integer(c_int), parameter, public :: GL_FOG_COORDINATE_ARRAY_TYPE                                                      = int(z'8454')
    integer(c_int), parameter, public :: GL_FOG_COORDINATE_ARRAY_STRIDE                                                    = int(z'8455')
    integer(c_int), parameter, public :: GL_FOG_COORDINATE_ARRAY_POINTER                                                   = int(z'8456')
    integer(c_int), parameter, public :: GL_FOG_COORDINATE_ARRAY                                                           = int(z'8457')
    integer(c_int), parameter, public :: GL_COLOR_SUM                                                                      = int(z'8458')
    integer(c_int), parameter, public :: GL_CURRENT_SECONDARY_COLOR                                                        = int(z'8459')
    integer(c_int), parameter, public :: GL_SECONDARY_COLOR_ARRAY_SIZE                                                     = int(z'845A')
    integer(c_int), parameter, public :: GL_SECONDARY_COLOR_ARRAY_TYPE                                                     = int(z'845B')
    integer(c_int), parameter, public :: GL_SECONDARY_COLOR_ARRAY_STRIDE                                                   = int(z'845C')
    integer(c_int), parameter, public :: GL_SECONDARY_COLOR_ARRAY_POINTER                                                  = int(z'845D')
    integer(c_int), parameter, public :: GL_SECONDARY_COLOR_ARRAY                                                          = int(z'845E')
    integer(c_int), parameter, public :: GL_TEXTURE_FILTER_CONTROL                                                         = int(z'8500')
    integer(c_int), parameter, public :: GL_DEPTH_TEXTURE_MODE                                                             = int(z'884B')
    integer(c_int), parameter, public :: GL_COMPARE_R_TO_TEXTURE                                                           = int(z'884E')
    integer(c_int), parameter, public :: GL_BLEND_COLOR                                                                    = int(z'8005')
    integer(c_int), parameter, public :: GL_BLEND_EQUATION                                                                 = int(z'8009')
    integer(c_int), parameter, public :: GL_CONSTANT_COLOR                                                                 = int(z'8001')
    integer(c_int), parameter, public :: GL_ONE_MINUS_CONSTANT_COLOR                                                       = int(z'8002')
    integer(c_int), parameter, public :: GL_CONSTANT_ALPHA                                                                 = int(z'8003')
    integer(c_int), parameter, public :: GL_ONE_MINUS_CONSTANT_ALPHA                                                       = int(z'8004')
    integer(c_int), parameter, public :: GL_FUNC_ADD                                                                       = int(z'8006')
    integer(c_int), parameter, public :: GL_FUNC_REVERSE_SUBTRACT                                                          = int(z'800B')
    integer(c_int), parameter, public :: GL_FUNC_SUBTRACT                                                                  = int(z'800A')
    integer(c_int), parameter, public :: GL_MIN                                                                            = int(z'8007')
    integer(c_int), parameter, public :: GL_MAX                                                                            = int(z'8008')

    ! OpenGL 1.4
    integer(c_int), parameter, public :: GL_BUFFER_SIZE                                                                    = int(z'8764')
    integer(c_int), parameter, public :: GL_BUFFER_USAGE                                                                   = int(z'8765')
    integer(c_int), parameter, public :: GL_QUERY_COUNTER_BITS                                                             = int(z'8864')
    integer(c_int), parameter, public :: GL_CURRENT_QUERY                                                                  = int(z'8865')
    integer(c_int), parameter, public :: GL_QUERY_RESULT                                                                   = int(z'8866')
    integer(c_int), parameter, public :: GL_QUERY_RESULT_AVAILABLE                                                         = int(z'8867')
    integer(c_int), parameter, public :: GL_ARRAY_BUFFER                                                                   = int(z'8892')
    integer(c_int), parameter, public :: GL_ELEMENT_ARRAY_BUFFER                                                           = int(z'8893')
    integer(c_int), parameter, public :: GL_ARRAY_BUFFER_BINDING                                                           = int(z'8894')
    integer(c_int), parameter, public :: GL_ELEMENT_ARRAY_BUFFER_BINDING                                                   = int(z'8895')
    integer(c_int), parameter, public :: GL_VERTEX_ATTRIB_ARRAY_BUFFER_BINDING                                             = int(z'889F')
    integer(c_int), parameter, public :: GL_READ_ONLY                                                                      = int(z'88B8')
    integer(c_int), parameter, public :: GL_WRITE_ONLY                                                                     = int(z'88B9')
    integer(c_int), parameter, public :: GL_READ_WRITE                                                                     = int(z'88BA')
    integer(c_int), parameter, public :: GL_BUFFER_ACCESS                                                                  = int(z'88BB')
    integer(c_int), parameter, public :: GL_BUFFER_MAPPED                                                                  = int(z'88BC')
    integer(c_int), parameter, public :: GL_BUFFER_MAP_POINTER                                                             = int(z'88BD')
    integer(c_int), parameter, public :: GL_STREAM_DRAW                                                                    = int(z'88E0')
    integer(c_int), parameter, public :: GL_STREAM_READ                                                                    = int(z'88E1')
    integer(c_int), parameter, public :: GL_STREAM_COPY                                                                    = int(z'88E2')
    integer(c_int), parameter, public :: GL_STATIC_DRAW                                                                    = int(z'88E4')
    integer(c_int), parameter, public :: GL_STATIC_READ                                                                    = int(z'88E5')
    integer(c_int), parameter, public :: GL_STATIC_COPY                                                                    = int(z'88E6')
    integer(c_int), parameter, public :: GL_DYNAMIC_DRAW                                                                   = int(z'88E8')
    integer(c_int), parameter, public :: GL_DYNAMIC_READ                                                                   = int(z'88E9')
    integer(c_int), parameter, public :: GL_DYNAMIC_COPY                                                                   = int(z'88EA')
    integer(c_int), parameter, public :: GL_SAMPLES_PASSED                                                                 = int(z'8914')
    integer(c_int), parameter, public :: GL_SRC1_ALPHA                                                                     = int(z'8589')
    integer(c_int), parameter, public :: GL_VERTEX_ARRAY_BUFFER_BINDING                                                    = int(z'8896')
    integer(c_int), parameter, public :: GL_NORMAL_ARRAY_BUFFER_BINDING                                                    = int(z'8897')
    integer(c_int), parameter, public :: GL_COLOR_ARRAY_BUFFER_BINDING                                                     = int(z'8898')
    integer(c_int), parameter, public :: GL_INDEX_ARRAY_BUFFER_BINDING                                                     = int(z'8899')
    integer(c_int), parameter, public :: GL_TEXTURE_COORD_ARRAY_BUFFER_BINDING                                             = int(z'889A')
    integer(c_int), parameter, public :: GL_EDGE_FLAG_ARRAY_BUFFER_BINDING                                                 = int(z'889B')
    integer(c_int), parameter, public :: GL_SECONDARY_COLOR_ARRAY_BUFFER_BINDING                                           = int(z'889C')
    integer(c_int), parameter, public :: GL_FOG_COORDINATE_ARRAY_BUFFER_BINDING                                            = int(z'889D')
    integer(c_int), parameter, public :: GL_WEIGHT_ARRAY_BUFFER_BINDING                                                    = int(z'889E')
    integer(c_int), parameter, public :: GL_FOG_COORD_SRC                                                                  = int(z'8450')
    integer(c_int), parameter, public :: GL_FOG_COORD                                                                      = int(z'8451')
    integer(c_int), parameter, public :: GL_CURRENT_FOG_COORD                                                              = int(z'8453')
    integer(c_int), parameter, public :: GL_FOG_COORD_ARRAY_TYPE                                                           = int(z'8454')
    integer(c_int), parameter, public :: GL_FOG_COORD_ARRAY_STRIDE                                                         = int(z'8455')
    integer(c_int), parameter, public :: GL_FOG_COORD_ARRAY_POINTER                                                        = int(z'8456')
    integer(c_int), parameter, public :: GL_FOG_COORD_ARRAY                                                                = int(z'8457')
    integer(c_int), parameter, public :: GL_FOG_COORD_ARRAY_BUFFER_BINDING                                                 = int(z'889D')
    integer(c_int), parameter, public :: GL_SRC0_RGB                                                                       = int(z'8580')
    integer(c_int), parameter, public :: GL_SRC1_RGB                                                                       = int(z'8581')
    integer(c_int), parameter, public :: GL_SRC2_RGB                                                                       = int(z'8582')
    integer(c_int), parameter, public :: GL_SRC0_ALPHA                                                                     = int(z'8588')
    integer(c_int), parameter, public :: GL_SRC2_ALPHA                                                                     = int(z'858A')

    ! OpenGL 1.5
    integer(c_int), parameter, public :: GL_BLEND_EQUATION_RGB               = int(z'8009')
    integer(c_int), parameter, public :: GL_VERTEX_ATTRIB_ARRAY_ENABLED      = int(z'8622')
    integer(c_int), parameter, public :: GL_VERTEX_ATTRIB_ARRAY_SIZE         = int(z'8623')
    integer(c_int), parameter, public :: GL_VERTEX_ATTRIB_ARRAY_STRIDE       = int(z'8624')
    integer(c_int), parameter, public :: GL_VERTEX_ATTRIB_ARRAY_TYPE         = int(z'8625')
    integer(c_int), parameter, public :: GL_CURRENT_VERTEX_ATTRIB            = int(z'8626')
    integer(c_int), parameter, public :: GL_VERTEX_PROGRAM_POINT_SIZE        = int(z'8642')
    integer(c_int), parameter, public :: GL_VERTEX_ATTRIB_ARRAY_POINTER      = int(z'8645')
    integer(c_int), parameter, public :: GL_STENCIL_BACK_FUNC                = int(z'8800')
    integer(c_int), parameter, public :: GL_STENCIL_BACK_FAIL                = int(z'8801')
    integer(c_int), parameter, public :: GL_STENCIL_BACK_PASS_DEPTH_FAIL     = int(z'8802')
    integer(c_int), parameter, public :: GL_STENCIL_BACK_PASS_DEPTH_PASS     = int(z'8803')
    integer(c_int), parameter, public :: GL_MAX_DRAW_BUFFERS                 = int(z'8824')
    integer(c_int), parameter, public :: GL_DRAW_BUFFER0                     = int(z'8825')
    integer(c_int), parameter, public :: GL_DRAW_BUFFER1                     = int(z'8826')
    integer(c_int), parameter, public :: GL_DRAW_BUFFER2                     = int(z'8827')
    integer(c_int), parameter, public :: GL_DRAW_BUFFER3                     = int(z'8828')
    integer(c_int), parameter, public :: GL_DRAW_BUFFER4                     = int(z'8829')
    integer(c_int), parameter, public :: GL_DRAW_BUFFER5                     = int(z'882A')
    integer(c_int), parameter, public :: GL_DRAW_BUFFER6                     = int(z'882B')
    integer(c_int), parameter, public :: GL_DRAW_BUFFER7                     = int(z'882C')
    integer(c_int), parameter, public :: GL_DRAW_BUFFER8                     = int(z'882D')
    integer(c_int), parameter, public :: GL_DRAW_BUFFER9                     = int(z'882E')
    integer(c_int), parameter, public :: GL_DRAW_BUFFER10                    = int(z'882F')
    integer(c_int), parameter, public :: GL_DRAW_BUFFER11                    = int(z'8830')
    integer(c_int), parameter, public :: GL_DRAW_BUFFER12                    = int(z'8831')
    integer(c_int), parameter, public :: GL_DRAW_BUFFER13                    = int(z'8832')
    integer(c_int), parameter, public :: GL_DRAW_BUFFER14                    = int(z'8833')
    integer(c_int), parameter, public :: GL_DRAW_BUFFER15                    = int(z'8834')
    integer(c_int), parameter, public :: GL_BLEND_EQUATION_ALPHA             = int(z'883D')
    integer(c_int), parameter, public :: GL_MAX_VERTEX_ATTRIBS               = int(z'8869')
    integer(c_int), parameter, public :: GL_VERTEX_ATTRIB_ARRAY_NORMALIZED   = int(z'886A')
    integer(c_int), parameter, public :: GL_MAX_TEXTURE_IMAGE_UNITS          = int(z'8872')
    integer(c_int), parameter, public :: GL_FRAGMENT_SHADER                  = int(z'8B30')
    integer(c_int), parameter, public :: GL_VERTEX_SHADER                    = int(z'8B31')
    integer(c_int), parameter, public :: GL_MAX_FRAGMENT_UNIFORM_COMPONENTS  = int(z'8B49')
    integer(c_int), parameter, public :: GL_MAX_VERTEX_UNIFORM_COMPONENTS    = int(z'8B4A')
    integer(c_int), parameter, public :: GL_MAX_VARYING_FLOATS               = int(z'8B4B')
    integer(c_int), parameter, public :: GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS   = int(z'8B4C')
    integer(c_int), parameter, public :: GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS = int(z'8B4D')
    integer(c_int), parameter, public :: GL_SHADER_TYPE                      = int(z'8B4F')
    integer(c_int), parameter, public :: GL_FLOAT_VEC2                       = int(z'8B50')
    integer(c_int), parameter, public :: GL_FLOAT_VEC3                       = int(z'8B51')
    integer(c_int), parameter, public :: GL_FLOAT_VEC4                       = int(z'8B52')
    integer(c_int), parameter, public :: GL_INT_VEC2                         = int(z'8B53')
    integer(c_int), parameter, public :: GL_INT_VEC3                         = int(z'8B54')
    integer(c_int), parameter, public :: GL_INT_VEC4                         = int(z'8B55')
    integer(c_int), parameter, public :: GL_BOOL                             = int(z'8B56')
    integer(c_int), parameter, public :: GL_BOOL_VEC2                        = int(z'8B57')
    integer(c_int), parameter, public :: GL_BOOL_VEC3                        = int(z'8B58')
    integer(c_int), parameter, public :: GL_BOOL_VEC4                        = int(z'8B59')
    integer(c_int), parameter, public :: GL_FLOAT_MAT2                       = int(z'8B5A')
    integer(c_int), parameter, public :: GL_FLOAT_MAT3                       = int(z'8B5B')
    integer(c_int), parameter, public :: GL_FLOAT_MAT4                       = int(z'8B5C')
    integer(c_int), parameter, public :: GL_SAMPLER_1D                       = int(z'8B5D')
    integer(c_int), parameter, public :: GL_SAMPLER_2D                       = int(z'8B5E')
    integer(c_int), parameter, public :: GL_SAMPLER_3D                       = int(z'8B5F')
    integer(c_int), parameter, public :: GL_SAMPLER_CUBE                     = int(z'8B60')
    integer(c_int), parameter, public :: GL_SAMPLER_1D_SHADOW                = int(z'8B61')
    integer(c_int), parameter, public :: GL_SAMPLER_2D_SHADOW                = int(z'8B62')
    integer(c_int), parameter, public :: GL_DELETE_STATUS                    = int(z'8B80')
    integer(c_int), parameter, public :: GL_COMPILE_STATUS                   = int(z'8B81')
    integer(c_int), parameter, public :: GL_LINK_STATUS                      = int(z'8B82')
    integer(c_int), parameter, public :: GL_VALIDATE_STATUS                  = int(z'8B83')
    integer(c_int), parameter, public :: GL_INFO_LOG_LENGTH                  = int(z'8B84')
    integer(c_int), parameter, public :: GL_ATTACHED_SHADERS                 = int(z'8B85')
    integer(c_int), parameter, public :: GL_ACTIVE_UNIFORMS                  = int(z'8B86')
    integer(c_int), parameter, public :: GL_ACTIVE_UNIFORM_MAX_LENGTH        = int(z'8B87')
    integer(c_int), parameter, public :: GL_SHADER_SOURCE_LENGTH             = int(z'8B88')
    integer(c_int), parameter, public :: GL_ACTIVE_ATTRIBUTES                = int(z'8B89')
    integer(c_int), parameter, public :: GL_ACTIVE_ATTRIBUTE_MAX_LENGTH      = int(z'8B8A')
    integer(c_int), parameter, public :: GL_FRAGMENT_SHADER_DERIVATIVE_HINT  = int(z'8B8B')
    integer(c_int), parameter, public :: GL_SHADING_LANGUAGE_VERSION         = int(z'8B8C')
    integer(c_int), parameter, public :: GL_CURRENT_PROGRAM                  = int(z'8B8D')
    integer(c_int), parameter, public :: GL_POINT_SPRITE_COORD_ORIGIN        = int(z'8CA0')
    integer(c_int), parameter, public :: GL_LOWER_LEFT                       = int(z'8CA1')
    integer(c_int), parameter, public :: GL_UPPER_LEFT                       = int(z'8CA2')
    integer(c_int), parameter, public :: GL_STENCIL_BACK_REF                 = int(z'8CA3')
    integer(c_int), parameter, public :: GL_STENCIL_BACK_VALUE_MASK          = int(z'8CA4')
    integer(c_int), parameter, public :: GL_STENCIL_BACK_WRITEMASK           = int(z'8CA5')
    integer(c_int), parameter, public :: GL_VERTEX_PROGRAM_TWO_SIDE          = int(z'8643')
    integer(c_int), parameter, public :: GL_POINT_SPRITE                     = int(z'8861')
    integer(c_int), parameter, public :: GL_COORD_REPLACE                    = int(z'8862')
    integer(c_int), parameter, public :: GL_MAX_TEXTURE_COORDS               = int(z'8871')

    ! OpenGL 2.0
    ! integer(c_int), parameter, public :: GL_BLEND_EQUATION_RGB               = int(z'8009')
    ! integer(c_int), parameter, public :: GL_VERTEX_ATTRIB_ARRAY_ENABLED      = int(z'8622')
    ! integer(c_int), parameter, public :: GL_VERTEX_ATTRIB_ARRAY_SIZE         = int(z'8623')
    ! integer(c_int), parameter, public :: GL_VERTEX_ATTRIB_ARRAY_STRIDE       = int(z'8624')
    ! integer(c_int), parameter, public :: GL_VERTEX_ATTRIB_ARRAY_TYPE         = int(z'8625')
    ! integer(c_int), parameter, public :: GL_CURRENT_VERTEX_ATTRIB            = int(z'8626')
    ! integer(c_int), parameter, public :: GL_VERTEX_PROGRAM_POINT_SIZE        = int(z'8642')
    ! integer(c_int), parameter, public :: GL_VERTEX_ATTRIB_ARRAY_POINTER      = int(z'8645')
    ! integer(c_int), parameter, public :: GL_STENCIL_BACK_FUNC                = int(z'8800')
    ! integer(c_int), parameter, public :: GL_STENCIL_BACK_FAIL                = int(z'8801')
    ! integer(c_int), parameter, public :: GL_STENCIL_BACK_PASS_DEPTH_FAIL     = int(z'8802')
    ! integer(c_int), parameter, public :: GL_STENCIL_BACK_PASS_DEPTH_PASS     = int(z'8803')
    ! integer(c_int), parameter, public :: GL_MAX_DRAW_BUFFERS                 = int(z'8824')
    ! integer(c_int), parameter, public :: GL_DRAW_BUFFER0                     = int(z'8825')
    ! integer(c_int), parameter, public :: GL_DRAW_BUFFER1                     = int(z'8826')
    ! integer(c_int), parameter, public :: GL_DRAW_BUFFER2                     = int(z'8827')
    ! integer(c_int), parameter, public :: GL_DRAW_BUFFER3                     = int(z'8828')
    ! integer(c_int), parameter, public :: GL_DRAW_BUFFER4                     = int(z'8829')
    ! integer(c_int), parameter, public :: GL_DRAW_BUFFER5                     = int(z'882A')
    ! integer(c_int), parameter, public :: GL_DRAW_BUFFER6                     = int(z'882B')
    ! integer(c_int), parameter, public :: GL_DRAW_BUFFER7                     = int(z'882C')
    ! integer(c_int), parameter, public :: GL_DRAW_BUFFER8                     = int(z'882D')
    ! integer(c_int), parameter, public :: GL_DRAW_BUFFER9                     = int(z'882E')
    ! integer(c_int), parameter, public :: GL_DRAW_BUFFER10                    = int(z'882F')
    ! integer(c_int), parameter, public :: GL_DRAW_BUFFER11                    = int(z'8830')
    ! integer(c_int), parameter, public :: GL_DRAW_BUFFER12                    = int(z'8831')
    ! integer(c_int), parameter, public :: GL_DRAW_BUFFER13                    = int(z'8832')
    ! integer(c_int), parameter, public :: GL_DRAW_BUFFER14                    = int(z'8833')
    ! integer(c_int), parameter, public :: GL_DRAW_BUFFER15                    = int(z'8834')
    ! integer(c_int), parameter, public :: GL_BLEND_EQUATION_ALPHA             = int(z'883D')
    ! integer(c_int), parameter, public :: GL_MAX_VERTEX_ATTRIBS               = int(z'8869')
    ! integer(c_int), parameter, public :: GL_VERTEX_ATTRIB_ARRAY_NORMALIZED   = int(z'886A')
    ! integer(c_int), parameter, public :: GL_MAX_TEXTURE_IMAGE_UNITS          = int(z'8872')
    ! integer(c_int), parameter, public :: GL_FRAGMENT_SHADER                  = int(z'8B30')
    ! integer(c_int), parameter, public :: GL_VERTEX_SHADER                    = int(z'8B31')
    ! integer(c_int), parameter, public :: GL_MAX_FRAGMENT_UNIFORM_COMPONENTS  = int(z'8B49')
    ! integer(c_int), parameter, public :: GL_MAX_VERTEX_UNIFORM_COMPONENTS    = int(z'8B4A')
    ! integer(c_int), parameter, public :: GL_MAX_VARYING_FLOATS               = int(z'8B4B')
    ! integer(c_int), parameter, public :: GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS   = int(z'8B4C')
    ! integer(c_int), parameter, public :: GL_MAX_COMBINED_TEXTURE_IMAGE_UNITS = int(z'8B4D')
    ! integer(c_int), parameter, public :: GL_SHADER_TYPE                      = int(z'8B4F')
    ! integer(c_int), parameter, public :: GL_FLOAT_VEC2                       = int(z'8B50')
    ! integer(c_int), parameter, public :: GL_FLOAT_VEC3                       = int(z'8B51')
    ! integer(c_int), parameter, public :: GL_FLOAT_VEC4                       = int(z'8B52')
    ! integer(c_int), parameter, public :: GL_INT_VEC2                         = int(z'8B53')
    ! integer(c_int), parameter, public :: GL_INT_VEC3                         = int(z'8B54')
    ! integer(c_int), parameter, public :: GL_INT_VEC4                         = int(z'8B55')
    ! integer(c_int), parameter, public :: GL_BOOL                             = int(z'8B56')
    ! integer(c_int), parameter, public :: GL_BOOL_VEC2                        = int(z'8B57')
    ! integer(c_int), parameter, public :: GL_BOOL_VEC3                        = int(z'8B58')
    ! integer(c_int), parameter, public :: GL_BOOL_VEC4                        = int(z'8B59')
    ! integer(c_int), parameter, public :: GL_FLOAT_MAT2                       = int(z'8B5A')
    ! integer(c_int), parameter, public :: GL_FLOAT_MAT3                       = int(z'8B5B')
    ! integer(c_int), parameter, public :: GL_FLOAT_MAT4                       = int(z'8B5C')
    ! integer(c_int), parameter, public :: GL_SAMPLER_1D                       = int(z'8B5D')
    ! integer(c_int), parameter, public :: GL_SAMPLER_2D                       = int(z'8B5E')
    ! integer(c_int), parameter, public :: GL_SAMPLER_3D                       = int(z'8B5F')
    ! integer(c_int), parameter, public :: GL_SAMPLER_CUBE                     = int(z'8B60')
    ! integer(c_int), parameter, public :: GL_SAMPLER_1D_SHADOW                = int(z'8B61')
    ! integer(c_int), parameter, public :: GL_SAMPLER_2D_SHADOW                = int(z'8B62')
    ! integer(c_int), parameter, public :: GL_DELETE_STATUS                    = int(z'8B80')
    ! integer(c_int), parameter, public :: GL_COMPILE_STATUS                   = int(z'8B81')
    ! integer(c_int), parameter, public :: GL_LINK_STATUS                      = int(z'8B82')
    ! integer(c_int), parameter, public :: GL_VALIDATE_STATUS                  = int(z'8B83')
    ! integer(c_int), parameter, public :: GL_INFO_LOG_LENGTH                  = int(z'8B84')
    ! integer(c_int), parameter, public :: GL_ATTACHED_SHADERS                 = int(z'8B85')
    ! integer(c_int), parameter, public :: GL_ACTIVE_UNIFORMS                  = int(z'8B86')
    ! integer(c_int), parameter, public :: GL_ACTIVE_UNIFORM_MAX_LENGTH        = int(z'8B87')
    ! integer(c_int), parameter, public :: GL_SHADER_SOURCE_LENGTH             = int(z'8B88')
    ! integer(c_int), parameter, public :: GL_ACTIVE_ATTRIBUTES                = int(z'8B89')
    ! integer(c_int), parameter, public :: GL_ACTIVE_ATTRIBUTE_MAX_LENGTH      = int(z'8B8A')
    ! integer(c_int), parameter, public :: GL_FRAGMENT_SHADER_DERIVATIVE_HINT  = int(z'8B8B')
    ! integer(c_int), parameter, public :: GL_SHADING_LANGUAGE_VERSION         = int(z'8B8C')
    ! integer(c_int), parameter, public :: GL_CURRENT_PROGRAM                  = int(z'8B8D')
    ! integer(c_int), parameter, public :: GL_POINT_SPRITE_COORD_ORIGIN        = int(z'8CA0')
    ! integer(c_int), parameter, public :: GL_LOWER_LEFT                       = int(z'8CA1')
    ! integer(c_int), parameter, public :: GL_UPPER_LEFT                       = int(z'8CA2')
    ! integer(c_int), parameter, public :: GL_STENCIL_BACK_REF                 = int(z'8CA3')
    ! integer(c_int), parameter, public :: GL_STENCIL_BACK_VALUE_MASK          = int(z'8CA4')
    ! integer(c_int), parameter, public :: GL_STENCIL_BACK_WRITEMASK           = int(z'8CA5')
    ! integer(c_int), parameter, public :: GL_VERTEX_PROGRAM_TWO_SIDE          = int(z'8643')
    ! integer(c_int), parameter, public :: GL_POINT_SPRITE                     = int(z'8861')
    ! integer(c_int), parameter, public :: GL_COORD_REPLACE                    = int(z'8862')
    ! integer(c_int), parameter, public :: GL_MAX_TEXTURE_COORDS               = int(z'8871')

    ! OpenGL 2.1
    integer(c_int), parameter, public :: GL_PIXEL_PACK_BUFFER              = int(z'88EB')
    integer(c_int), parameter, public :: GL_PIXEL_UNPACK_BUFFER            = int(z'88EC')
    integer(c_int), parameter, public :: GL_PIXEL_PACK_BUFFER_BINDING      = int(z'88ED')
    integer(c_int), parameter, public :: GL_PIXEL_UNPACK_BUFFER_BINDING    = int(z'88EF')
    integer(c_int), parameter, public :: GL_FLOAT_MAT2x3                   = int(z'8B65')
    integer(c_int), parameter, public :: GL_FLOAT_MAT2x4                   = int(z'8B66')
    integer(c_int), parameter, public :: GL_FLOAT_MAT3x2                   = int(z'8B67')
    integer(c_int), parameter, public :: GL_FLOAT_MAT3x4                   = int(z'8B68')
    integer(c_int), parameter, public :: GL_FLOAT_MAT4x2                   = int(z'8B69')
    integer(c_int), parameter, public :: GL_FLOAT_MAT4x3                   = int(z'8B6A')
    integer(c_int), parameter, public :: GL_SRGB                           = int(z'8C40')
    integer(c_int), parameter, public :: GL_SRGB8                          = int(z'8C41')
    integer(c_int), parameter, public :: GL_SRGB_ALPHA                     = int(z'8C42')
    integer(c_int), parameter, public :: GL_SRGB8_ALPHA8                   = int(z'8C43')
    integer(c_int), parameter, public :: GL_COMPRESSED_SRGB                = int(z'8C48')
    integer(c_int), parameter, public :: GL_COMPRESSED_SRGB_ALPHA          = int(z'8C49')
    integer(c_int), parameter, public :: GL_CURRENT_RASTER_SECONDARY_COLOR = int(z'845F')
    integer(c_int), parameter, public :: GL_SLUMINANCE_ALPHA               = int(z'8C44')
    integer(c_int), parameter, public :: GL_SLUMINANCE8_ALPHA8             = int(z'8C45')
    integer(c_int), parameter, public :: GL_SLUMINANCE                     = int(z'8C46')
    integer(c_int), parameter, public :: GL_SLUMINANCE8                    = int(z'8C47')
    integer(c_int), parameter, public :: GL_COMPRESSED_SLUMINANCE          = int(z'8C4A')
    integer(c_int), parameter, public :: GL_COMPRESSED_SLUMINANCE_ALPHA    = int(z'8C4B')

    ! OpenGL 3.0
    integer(c_int), parameter, public :: GL_COMPARE_REF_TO_TEXTURE                        = int(z'884E')
    integer(c_int), parameter, public :: GL_CLIP_DISTANCE0                                = int(z'3000')
    integer(c_int), parameter, public :: GL_CLIP_DISTANCE1                                = int(z'3001')
    integer(c_int), parameter, public :: GL_CLIP_DISTANCE2                                = int(z'3002')
    integer(c_int), parameter, public :: GL_CLIP_DISTANCE3                                = int(z'3003')
    integer(c_int), parameter, public :: GL_CLIP_DISTANCE4                                = int(z'3004')
    integer(c_int), parameter, public :: GL_CLIP_DISTANCE5                                = int(z'3005')
    integer(c_int), parameter, public :: GL_CLIP_DISTANCE6                                = int(z'3006')
    integer(c_int), parameter, public :: GL_CLIP_DISTANCE7                                = int(z'3007')
    integer(c_int), parameter, public :: GL_MAX_CLIP_DISTANCES                            = int(z'0D32')
    integer(c_int), parameter, public :: GL_MAJOR_VERSION                                 = int(z'821B')
    integer(c_int), parameter, public :: GL_MINOR_VERSION                                 = int(z'821C')
    integer(c_int), parameter, public :: GL_NUM_EXTENSIONS                                = int(z'821D')
    integer(c_int), parameter, public :: GL_CONTEXT_FLAGS                                 = int(z'821E')
    integer(c_int), parameter, public :: GL_COMPRESSED_RED                                = int(z'8225')
    integer(c_int), parameter, public :: GL_COMPRESSED_RG                                 = int(z'8226')
    integer(c_int), parameter, public :: GL_CONTEXT_FLAG_FORWARD_COMPATIBLE_BIT           = int(z'00000001')
    integer(c_int), parameter, public :: GL_RGBA32F                                       = int(z'8814')
    integer(c_int), parameter, public :: GL_RGB32F                                        = int(z'8815')
    integer(c_int), parameter, public :: GL_RGBA16F                                       = int(z'881A')
    integer(c_int), parameter, public :: GL_RGB16F                                        = int(z'881B')
    integer(c_int), parameter, public :: GL_VERTEX_ATTRIB_ARRAY_INTEGER                   = int(z'88FD')
    integer(c_int), parameter, public :: GL_MAX_ARRAY_TEXTURE_LAYERS                      = int(z'88FF')
    integer(c_int), parameter, public :: GL_MIN_PROGRAM_TEXEL_OFFSET                      = int(z'8904')
    integer(c_int), parameter, public :: GL_MAX_PROGRAM_TEXEL_OFFSET                      = int(z'8905')
    integer(c_int), parameter, public :: GL_CLAMP_READ_COLOR                              = int(z'891C')
    integer(c_int), parameter, public :: GL_FIXED_ONLY                                    = int(z'891D')
    integer(c_int), parameter, public :: GL_MAX_VARYING_COMPONENTS                        = int(z'8B4B')
    integer(c_int), parameter, public :: GL_TEXTURE_1D_ARRAY                              = int(z'8C18')
    integer(c_int), parameter, public :: GL_PROXY_TEXTURE_1D_ARRAY                        = int(z'8C19')
    integer(c_int), parameter, public :: GL_TEXTURE_2D_ARRAY                              = int(z'8C1A')
    integer(c_int), parameter, public :: GL_PROXY_TEXTURE_2D_ARRAY                        = int(z'8C1B')
    integer(c_int), parameter, public :: GL_TEXTURE_BINDING_1D_ARRAY                      = int(z'8C1C')
    integer(c_int), parameter, public :: GL_TEXTURE_BINDING_2D_ARRAY                      = int(z'8C1D')
    integer(c_int), parameter, public :: GL_R11F_G11F_B10F                                = int(z'8C3A')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_10F_11F_11F_REV                  = int(z'8C3B')
    integer(c_int), parameter, public :: GL_RGB9_E5                                       = int(z'8C3D')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_5_9_9_9_REV                      = int(z'8C3E')
    integer(c_int), parameter, public :: GL_TEXTURE_SHARED_SIZE                           = int(z'8C3F')
    integer(c_int), parameter, public :: GL_TRANSFORM_FEEDBACK_VARYING_MAX_LENGTH         = int(z'8C76')
    integer(c_int), parameter, public :: GL_TRANSFORM_FEEDBACK_BUFFER_MODE                = int(z'8C7F')
    integer(c_int), parameter, public :: GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_COMPONENTS    = int(z'8C80')
    integer(c_int), parameter, public :: GL_TRANSFORM_FEEDBACK_VARYINGS                   = int(z'8C83')
    integer(c_int), parameter, public :: GL_TRANSFORM_FEEDBACK_BUFFER_START               = int(z'8C84')
    integer(c_int), parameter, public :: GL_TRANSFORM_FEEDBACK_BUFFER_SIZE                = int(z'8C85')
    integer(c_int), parameter, public :: GL_PRIMITIVES_GENERATED                          = int(z'8C87')
    integer(c_int), parameter, public :: GL_TRANSFORM_FEEDBACK_PRIMITIVES_WRITTEN         = int(z'8C88')
    integer(c_int), parameter, public :: GL_RASTERIZER_DISCARD                            = int(z'8C89')
    integer(c_int), parameter, public :: GL_MAX_TRANSFORM_FEEDBACK_INTERLEAVED_COMPONENTS = int(z'8C8A')
    integer(c_int), parameter, public :: GL_MAX_TRANSFORM_FEEDBACK_SEPARATE_ATTRIBS       = int(z'8C8B')
    integer(c_int), parameter, public :: GL_INTERLEAVED_ATTRIBS                           = int(z'8C8C')
    integer(c_int), parameter, public :: GL_SEPARATE_ATTRIBS                              = int(z'8C8D')
    integer(c_int), parameter, public :: GL_TRANSFORM_FEEDBACK_BUFFER                     = int(z'8C8E')
    integer(c_int), parameter, public :: GL_TRANSFORM_FEEDBACK_BUFFER_BINDING             = int(z'8C8F')
    integer(c_int), parameter, public :: GL_RGBA32UI                                      = int(z'8D70')
    integer(c_int), parameter, public :: GL_RGB32UI                                       = int(z'8D71')
    integer(c_int), parameter, public :: GL_RGBA16UI                                      = int(z'8D76')
    integer(c_int), parameter, public :: GL_RGB16UI                                       = int(z'8D77')
    integer(c_int), parameter, public :: GL_RGBA8UI                                       = int(z'8D7C')
    integer(c_int), parameter, public :: GL_RGB8UI                                        = int(z'8D7D')
    integer(c_int), parameter, public :: GL_RGBA32I                                       = int(z'8D82')
    integer(c_int), parameter, public :: GL_RGB32I                                        = int(z'8D83')
    integer(c_int), parameter, public :: GL_RGBA16I                                       = int(z'8D88')
    integer(c_int), parameter, public :: GL_RGB16I                                        = int(z'8D89')
    integer(c_int), parameter, public :: GL_RGBA8I                                        = int(z'8D8E')
    integer(c_int), parameter, public :: GL_RGB8I                                         = int(z'8D8F')
    integer(c_int), parameter, public :: GL_RED_INTEGER                                   = int(z'8D94')
    integer(c_int), parameter, public :: GL_GREEN_INTEGER                                 = int(z'8D95')
    integer(c_int), parameter, public :: GL_BLUE_INTEGER                                  = int(z'8D96')
    integer(c_int), parameter, public :: GL_RGB_INTEGER                                   = int(z'8D98')
    integer(c_int), parameter, public :: GL_RGBA_INTEGER                                  = int(z'8D99')
    integer(c_int), parameter, public :: GL_BGR_INTEGER                                   = int(z'8D9A')
    integer(c_int), parameter, public :: GL_BGRA_INTEGER                                  = int(z'8D9B')
    integer(c_int), parameter, public :: GL_SAMPLER_1D_ARRAY                              = int(z'8DC0')
    integer(c_int), parameter, public :: GL_SAMPLER_2D_ARRAY                              = int(z'8DC1')
    integer(c_int), parameter, public :: GL_SAMPLER_1D_ARRAY_SHADOW                       = int(z'8DC3')
    integer(c_int), parameter, public :: GL_SAMPLER_2D_ARRAY_SHADOW                       = int(z'8DC4')
    integer(c_int), parameter, public :: GL_SAMPLER_CUBE_SHADOW                           = int(z'8DC5')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_VEC2                             = int(z'8DC6')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_VEC3                             = int(z'8DC7')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_VEC4                             = int(z'8DC8')
    integer(c_int), parameter, public :: GL_INT_SAMPLER_1D                                = int(z'8DC9')
    integer(c_int), parameter, public :: GL_INT_SAMPLER_2D                                = int(z'8DCA')
    integer(c_int), parameter, public :: GL_INT_SAMPLER_3D                                = int(z'8DCB')
    integer(c_int), parameter, public :: GL_INT_SAMPLER_CUBE                              = int(z'8DCC')
    integer(c_int), parameter, public :: GL_INT_SAMPLER_1D_ARRAY                          = int(z'8DCE')
    integer(c_int), parameter, public :: GL_INT_SAMPLER_2D_ARRAY                          = int(z'8DCF')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_SAMPLER_1D                       = int(z'8DD1')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_SAMPLER_2D                       = int(z'8DD2')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_SAMPLER_3D                       = int(z'8DD3')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_SAMPLER_CUBE                     = int(z'8DD4')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_SAMPLER_1D_ARRAY                 = int(z'8DD6')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_SAMPLER_2D_ARRAY                 = int(z'8DD7')
    integer(c_int), parameter, public :: GL_QUERY_WAIT                                    = int(z'8E13')
    integer(c_int), parameter, public :: GL_QUERY_NO_WAIT                                 = int(z'8E14')
    integer(c_int), parameter, public :: GL_QUERY_BY_REGION_WAIT                          = int(z'8E15')
    integer(c_int), parameter, public :: GL_QUERY_BY_REGION_NO_WAIT                       = int(z'8E16')
    integer(c_int), parameter, public :: GL_BUFFER_ACCESS_FLAGS                           = int(z'911F')
    integer(c_int), parameter, public :: GL_BUFFER_MAP_LENGTH                             = int(z'9120')
    integer(c_int), parameter, public :: GL_BUFFER_MAP_OFFSET                             = int(z'9121')
    integer(c_int), parameter, public :: GL_DEPTH_COMPONENT32F                            = int(z'8CAC')
    integer(c_int), parameter, public :: GL_DEPTH32F_STENCIL8                             = int(z'8CAD')
    integer(c_int), parameter, public :: GL_FLOAT_32_UNSIGNED_INT_24_8_REV                = int(z'8DAD')
    integer(c_int), parameter, public :: GL_INVALID_FRAMEBUFFER_OPERATION                 = int(z'0506')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING         = int(z'8210')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE         = int(z'8211')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_ATTACHMENT_RED_SIZE               = int(z'8212')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_ATTACHMENT_GREEN_SIZE             = int(z'8213')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_ATTACHMENT_BLUE_SIZE              = int(z'8214')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_ATTACHMENT_ALPHA_SIZE             = int(z'8215')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_ATTACHMENT_DEPTH_SIZE             = int(z'8216')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_ATTACHMENT_STENCIL_SIZE           = int(z'8217')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_DEFAULT                           = int(z'8218')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_UNDEFINED                         = int(z'8219')
    integer(c_int), parameter, public :: GL_DEPTH_STENCIL_ATTACHMENT                      = int(z'821A')
    integer(c_int), parameter, public :: GL_MAX_RENDERBUFFER_SIZE                         = int(z'84E8')
    integer(c_int), parameter, public :: GL_DEPTH_STENCIL                                 = int(z'84F9')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_24_8                             = int(z'84FA')
    integer(c_int), parameter, public :: GL_DEPTH24_STENCIL8                              = int(z'88F0')
    integer(c_int), parameter, public :: GL_TEXTURE_STENCIL_SIZE                          = int(z'88F1')
    integer(c_int), parameter, public :: GL_TEXTURE_RED_TYPE                              = int(z'8C10')
    integer(c_int), parameter, public :: GL_TEXTURE_GREEN_TYPE                            = int(z'8C11')
    integer(c_int), parameter, public :: GL_TEXTURE_BLUE_TYPE                             = int(z'8C12')
    integer(c_int), parameter, public :: GL_TEXTURE_ALPHA_TYPE                            = int(z'8C13')
    integer(c_int), parameter, public :: GL_TEXTURE_DEPTH_TYPE                            = int(z'8C16')
    integer(c_int), parameter, public :: GL_UNSIGNED_NORMALIZED                           = int(z'8C17')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_BINDING                           = int(z'8CA6')
    integer(c_int), parameter, public :: GL_DRAW_FRAMEBUFFER_BINDING                      = int(z'8CA6')
    integer(c_int), parameter, public :: GL_RENDERBUFFER_BINDING                          = int(z'8CA7')
    integer(c_int), parameter, public :: GL_READ_FRAMEBUFFER                              = int(z'8CA8')
    integer(c_int), parameter, public :: GL_DRAW_FRAMEBUFFER                              = int(z'8CA9')
    integer(c_int), parameter, public :: GL_READ_FRAMEBUFFER_BINDING                      = int(z'8CAA')
    integer(c_int), parameter, public :: GL_RENDERBUFFER_SAMPLES                          = int(z'8CAB')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_ATTACHMENT_OBJECT_TYPE            = int(z'8CD0')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_ATTACHMENT_OBJECT_NAME            = int(z'8CD1')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LEVEL          = int(z'8CD2')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_CUBE_MAP_FACE  = int(z'8CD3')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_ATTACHMENT_TEXTURE_LAYER          = int(z'8CD4')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_COMPLETE                          = int(z'8CD5')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_INCOMPLETE_ATTACHMENT             = int(z'8CD6')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_INCOMPLETE_MISSING_ATTACHMENT     = int(z'8CD7')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_INCOMPLETE_DRAW_BUFFER            = int(z'8CDB')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_INCOMPLETE_READ_BUFFER            = int(z'8CDC')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_UNSUPPORTED                       = int(z'8CDD')
    integer(c_int), parameter, public :: GL_MAX_COLOR_ATTACHMENTS                         = int(z'8CDF')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT0                             = int(z'8CE0')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT1                             = int(z'8CE1')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT2                             = int(z'8CE2')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT3                             = int(z'8CE3')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT4                             = int(z'8CE4')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT5                             = int(z'8CE5')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT6                             = int(z'8CE6')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT7                             = int(z'8CE7')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT8                             = int(z'8CE8')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT9                             = int(z'8CE9')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT10                            = int(z'8CEA')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT11                            = int(z'8CEB')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT12                            = int(z'8CEC')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT13                            = int(z'8CED')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT14                            = int(z'8CEE')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT15                            = int(z'8CEF')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT16                            = int(z'8CF0')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT17                            = int(z'8CF1')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT18                            = int(z'8CF2')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT19                            = int(z'8CF3')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT20                            = int(z'8CF4')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT21                            = int(z'8CF5')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT22                            = int(z'8CF6')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT23                            = int(z'8CF7')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT24                            = int(z'8CF8')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT25                            = int(z'8CF9')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT26                            = int(z'8CFA')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT27                            = int(z'8CFB')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT28                            = int(z'8CFC')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT29                            = int(z'8CFD')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT30                            = int(z'8CFE')
    integer(c_int), parameter, public :: GL_COLOR_ATTACHMENT31                            = int(z'8CFF')
    integer(c_int), parameter, public :: GL_DEPTH_ATTACHMENT                              = int(z'8D00')
    integer(c_int), parameter, public :: GL_STENCIL_ATTACHMENT                            = int(z'8D20')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER                                   = int(z'8D40')
    integer(c_int), parameter, public :: GL_RENDERBUFFER                                  = int(z'8D41')
    integer(c_int), parameter, public :: GL_RENDERBUFFER_WIDTH                            = int(z'8D42')
    integer(c_int), parameter, public :: GL_RENDERBUFFER_HEIGHT                           = int(z'8D43')
    integer(c_int), parameter, public :: GL_RENDERBUFFER_INTERNAL_FORMAT                  = int(z'8D44')
    integer(c_int), parameter, public :: GL_STENCIL_INDEX1                                = int(z'8D46')
    integer(c_int), parameter, public :: GL_STENCIL_INDEX4                                = int(z'8D47')
    integer(c_int), parameter, public :: GL_STENCIL_INDEX8                                = int(z'8D48')
    integer(c_int), parameter, public :: GL_STENCIL_INDEX16                               = int(z'8D49')
    integer(c_int), parameter, public :: GL_RENDERBUFFER_RED_SIZE                         = int(z'8D50')
    integer(c_int), parameter, public :: GL_RENDERBUFFER_GREEN_SIZE                       = int(z'8D51')
    integer(c_int), parameter, public :: GL_RENDERBUFFER_BLUE_SIZE                        = int(z'8D52')
    integer(c_int), parameter, public :: GL_RENDERBUFFER_ALPHA_SIZE                       = int(z'8D53')
    integer(c_int), parameter, public :: GL_RENDERBUFFER_DEPTH_SIZE                       = int(z'8D54')
    integer(c_int), parameter, public :: GL_RENDERBUFFER_STENCIL_SIZE                     = int(z'8D55')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_INCOMPLETE_MULTISAMPLE            = int(z'8D56')
    integer(c_int), parameter, public :: GL_MAX_SAMPLES                                   = int(z'8D57')
    integer(c_int), parameter, public :: GL_INDEX                                         = int(z'8222')
    integer(c_int), parameter, public :: GL_TEXTURE_LUMINANCE_TYPE                        = int(z'8C14')
    integer(c_int), parameter, public :: GL_TEXTURE_INTENSITY_TYPE                        = int(z'8C15')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_SRGB                              = int(z'8DB9')
    integer(c_int), parameter, public :: GL_HALF_FLOAT                                    = int(z'140B')
    integer(c_int), parameter, public :: GL_MAP_READ_BIT                                  = int(z'0001')
    integer(c_int), parameter, public :: GL_MAP_WRITE_BIT                                 = int(z'0002')
    integer(c_int), parameter, public :: GL_MAP_INVALIDATE_RANGE_BIT                      = int(z'0004')
    integer(c_int), parameter, public :: GL_MAP_INVALIDATE_BUFFER_BIT                     = int(z'0008')
    integer(c_int), parameter, public :: GL_MAP_FLUSH_EXPLICIT_BIT                        = int(z'0010')
    integer(c_int), parameter, public :: GL_MAP_UNSYNCHRONIZED_BIT                        = int(z'0020')
    integer(c_int), parameter, public :: GL_COMPRESSED_RED_RGTC1                          = int(z'8DBB')
    integer(c_int), parameter, public :: GL_COMPRESSED_SIGNED_RED_RGTC1                   = int(z'8DBC')
    integer(c_int), parameter, public :: GL_COMPRESSED_RG_RGTC2                           = int(z'8DBD')
    integer(c_int), parameter, public :: GL_COMPRESSED_SIGNED_RG_RGTC2                    = int(z'8DBE')
    integer(c_int), parameter, public :: GL_RG                                            = int(z'8227')
    integer(c_int), parameter, public :: GL_RG_INTEGER                                    = int(z'8228')
    integer(c_int), parameter, public :: GL_R8                                            = int(z'8229')
    integer(c_int), parameter, public :: GL_R16                                           = int(z'822A')
    integer(c_int), parameter, public :: GL_RG8                                           = int(z'822B')
    integer(c_int), parameter, public :: GL_RG16                                          = int(z'822C')
    integer(c_int), parameter, public :: GL_R16F                                          = int(z'822D')
    integer(c_int), parameter, public :: GL_R32F                                          = int(z'822E')
    integer(c_int), parameter, public :: GL_RG16F                                         = int(z'822F')
    integer(c_int), parameter, public :: GL_RG32F                                         = int(z'8230')
    integer(c_int), parameter, public :: GL_R8I                                           = int(z'8231')
    integer(c_int), parameter, public :: GL_R8UI                                          = int(z'8232')
    integer(c_int), parameter, public :: GL_R16I                                          = int(z'8233')
    integer(c_int), parameter, public :: GL_R16UI                                         = int(z'8234')
    integer(c_int), parameter, public :: GL_R32I                                          = int(z'8235')
    integer(c_int), parameter, public :: GL_R32UI                                         = int(z'8236')
    integer(c_int), parameter, public :: GL_RG8I                                          = int(z'8237')
    integer(c_int), parameter, public :: GL_RG8UI                                         = int(z'8238')
    integer(c_int), parameter, public :: GL_RG16I                                         = int(z'8239')
    integer(c_int), parameter, public :: GL_RG16UI                                        = int(z'823A')
    integer(c_int), parameter, public :: GL_RG32I                                         = int(z'823B')
    integer(c_int), parameter, public :: GL_RG32UI                                        = int(z'823C')
    integer(c_int), parameter, public :: GL_VERTEX_ARRAY_BINDING                          = int(z'85B5')
    integer(c_int), parameter, public :: GL_CLAMP_VERTEX_COLOR                            = int(z'891A')
    integer(c_int), parameter, public :: GL_CLAMP_FRAGMENT_COLOR                          = int(z'891B')
    integer(c_int), parameter, public :: GL_ALPHA_INTEGER                                 = int(z'8D97')

    ! OpenGL 3.1
    integer(c_int), parameter, public :: GL_SAMPLER_2D_RECT                             = int(z'8B63')
    integer(c_int), parameter, public :: GL_SAMPLER_2D_RECT_SHADOW                      = int(z'8B64')
    integer(c_int), parameter, public :: GL_SAMPLER_BUFFER                              = int(z'8DC2')
    integer(c_int), parameter, public :: GL_INT_SAMPLER_2D_RECT                         = int(z'8DCD')
    integer(c_int), parameter, public :: GL_INT_SAMPLER_BUFFER                          = int(z'8DD0')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_SAMPLER_2D_RECT                = int(z'8DD5')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_SAMPLER_BUFFER                 = int(z'8DD8')
    integer(c_int), parameter, public :: GL_TEXTURE_BUFFER                              = int(z'8C2A')
    integer(c_int), parameter, public :: GL_MAX_TEXTURE_BUFFER_SIZE                     = int(z'8C2B')
    integer(c_int), parameter, public :: GL_TEXTURE_BINDING_BUFFER                      = int(z'8C2C')
    integer(c_int), parameter, public :: GL_TEXTURE_BUFFER_DATA_STORE_BINDING           = int(z'8C2D')
    integer(c_int), parameter, public :: GL_TEXTURE_RECTANGLE                           = int(z'84F5')
    integer(c_int), parameter, public :: GL_TEXTURE_BINDING_RECTANGLE                   = int(z'84F6')
    integer(c_int), parameter, public :: GL_PROXY_TEXTURE_RECTANGLE                     = int(z'84F7')
    integer(c_int), parameter, public :: GL_MAX_RECTANGLE_TEXTURE_SIZE                  = int(z'84F8')
    integer(c_int), parameter, public :: GL_R8_SNORM                                    = int(z'8F94')
    integer(c_int), parameter, public :: GL_RG8_SNORM                                   = int(z'8F95')
    integer(c_int), parameter, public :: GL_RGB8_SNORM                                  = int(z'8F96')
    integer(c_int), parameter, public :: GL_RGBA8_SNORM                                 = int(z'8F97')
    integer(c_int), parameter, public :: GL_R16_SNORM                                   = int(z'8F98')
    integer(c_int), parameter, public :: GL_RG16_SNORM                                  = int(z'8F99')
    integer(c_int), parameter, public :: GL_RGB16_SNORM                                 = int(z'8F9A')
    integer(c_int), parameter, public :: GL_RGBA16_SNORM                                = int(z'8F9B')
    integer(c_int), parameter, public :: GL_SIGNED_NORMALIZED                           = int(z'8F9C')
    integer(c_int), parameter, public :: GL_PRIMITIVE_RESTART                           = int(z'8F9D')
    integer(c_int), parameter, public :: GL_PRIMITIVE_RESTART_INDEX                     = int(z'8F9E')
    integer(c_int), parameter, public :: GL_COPY_READ_BUFFER                            = int(z'8F36')
    integer(c_int), parameter, public :: GL_COPY_WRITE_BUFFER                           = int(z'8F37')
    integer(c_int), parameter, public :: GL_UNIFORM_BUFFER                              = int(z'8A11')
    integer(c_int), parameter, public :: GL_UNIFORM_BUFFER_BINDING                      = int(z'8A28')
    integer(c_int), parameter, public :: GL_UNIFORM_BUFFER_START                        = int(z'8A29')
    integer(c_int), parameter, public :: GL_UNIFORM_BUFFER_SIZE                         = int(z'8A2A')
    integer(c_int), parameter, public :: GL_MAX_VERTEX_UNIFORM_BLOCKS                   = int(z'8A2B')
    integer(c_int), parameter, public :: GL_MAX_GEOMETRY_UNIFORM_BLOCKS                 = int(z'8A2C')
    integer(c_int), parameter, public :: GL_MAX_FRAGMENT_UNIFORM_BLOCKS                 = int(z'8A2D')
    integer(c_int), parameter, public :: GL_MAX_COMBINED_UNIFORM_BLOCKS                 = int(z'8A2E')
    integer(c_int), parameter, public :: GL_MAX_UNIFORM_BUFFER_BINDINGS                 = int(z'8A2F')
    integer(c_int), parameter, public :: GL_MAX_UNIFORM_BLOCK_SIZE                      = int(z'8A30')
    integer(c_int), parameter, public :: GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS      = int(z'8A31')
    integer(c_int), parameter, public :: GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS    = int(z'8A32')
    integer(c_int), parameter, public :: GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS    = int(z'8A33')
    integer(c_int), parameter, public :: GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT             = int(z'8A34')
    integer(c_int), parameter, public :: GL_ACTIVE_UNIFORM_BLOCK_MAX_NAME_LENGTH        = int(z'8A35')
    integer(c_int), parameter, public :: GL_ACTIVE_UNIFORM_BLOCKS                       = int(z'8A36')
    integer(c_int), parameter, public :: GL_UNIFORM_TYPE                                = int(z'8A37')
    integer(c_int), parameter, public :: GL_UNIFORM_SIZE                                = int(z'8A38')
    integer(c_int), parameter, public :: GL_UNIFORM_NAME_LENGTH                         = int(z'8A39')
    integer(c_int), parameter, public :: GL_UNIFORM_BLOCK_INDEX                         = int(z'8A3A')
    integer(c_int), parameter, public :: GL_UNIFORM_OFFSET                              = int(z'8A3B')
    integer(c_int), parameter, public :: GL_UNIFORM_ARRAY_STRIDE                        = int(z'8A3C')
    integer(c_int), parameter, public :: GL_UNIFORM_MATRIX_STRIDE                       = int(z'8A3D')
    integer(c_int), parameter, public :: GL_UNIFORM_IS_ROW_MAJOR                        = int(z'8A3E')
    integer(c_int), parameter, public :: GL_UNIFORM_BLOCK_BINDING                       = int(z'8A3F')
    integer(c_int), parameter, public :: GL_UNIFORM_BLOCK_DATA_SIZE                     = int(z'8A40')
    integer(c_int), parameter, public :: GL_UNIFORM_BLOCK_NAME_LENGTH                   = int(z'8A41')
    integer(c_int), parameter, public :: GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS               = int(z'8A42')
    integer(c_int), parameter, public :: GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES        = int(z'8A43')
    integer(c_int), parameter, public :: GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER   = int(z'8A44')
    integer(c_int), parameter, public :: GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER = int(z'8A45')
    integer(c_int), parameter, public :: GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = int(z'8A46')

    integer(c_unsigned), parameter, public :: GL_INVALID_INDEX = int(z'FFFFFFFF', c_unsigned)

    ! OpenGL 3.2
    integer(c_int), parameter, public :: GL_CONTEXT_CORE_PROFILE_BIT                  = int(z'00000001')
    integer(c_int), parameter, public :: GL_CONTEXT_COMPATIBILITY_PROFILE_BIT         = int(z'00000002')
    integer(c_int), parameter, public :: GL_LINES_ADJACENCY                           = int(z'000A')
    integer(c_int), parameter, public :: GL_LINE_STRIP_ADJACENCY                      = int(z'000B')
    integer(c_int), parameter, public :: GL_TRIANGLES_ADJACENCY                       = int(z'000C')
    integer(c_int), parameter, public :: GL_TRIANGLE_STRIP_ADJACENCY                  = int(z'000D')
    integer(c_int), parameter, public :: GL_PROGRAM_POINT_SIZE                        = int(z'8642')
    integer(c_int), parameter, public :: GL_MAX_GEOMETRY_TEXTURE_IMAGE_UNITS          = int(z'8C29')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_ATTACHMENT_LAYERED            = int(z'8DA7')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_INCOMPLETE_LAYER_TARGETS      = int(z'8DA8')
    integer(c_int), parameter, public :: GL_GEOMETRY_SHADER                           = int(z'8DD9')
    integer(c_int), parameter, public :: GL_GEOMETRY_VERTICES_OUT                     = int(z'8916')
    integer(c_int), parameter, public :: GL_GEOMETRY_INPUT_TYPE                       = int(z'8917')
    integer(c_int), parameter, public :: GL_GEOMETRY_OUTPUT_TYPE                      = int(z'8918')
    integer(c_int), parameter, public :: GL_MAX_GEOMETRY_UNIFORM_COMPONENTS           = int(z'8DDF')
    integer(c_int), parameter, public :: GL_MAX_GEOMETRY_OUTPUT_VERTICES              = int(z'8DE0')
    integer(c_int), parameter, public :: GL_MAX_GEOMETRY_TOTAL_OUTPUT_COMPONENTS      = int(z'8DE1')
    integer(c_int), parameter, public :: GL_MAX_VERTEX_OUTPUT_COMPONENTS              = int(z'9122')
    integer(c_int), parameter, public :: GL_MAX_GEOMETRY_INPUT_COMPONENTS             = int(z'9123')
    integer(c_int), parameter, public :: GL_MAX_GEOMETRY_OUTPUT_COMPONENTS            = int(z'9124')
    integer(c_int), parameter, public :: GL_MAX_FRAGMENT_INPUT_COMPONENTS             = int(z'9125')
    integer(c_int), parameter, public :: GL_CONTEXT_PROFILE_MASK                      = int(z'9126')
    integer(c_int), parameter, public :: GL_DEPTH_CLAMP                               = int(z'864F')
    integer(c_int), parameter, public :: GL_QUADS_FOLLOW_PROVOKING_VERTEX_CONVENTION  = int(z'8E4C')
    integer(c_int), parameter, public :: GL_FIRST_VERTEX_CONVENTION                   = int(z'8E4D')
    integer(c_int), parameter, public :: GL_LAST_VERTEX_CONVENTION                    = int(z'8E4E')
    integer(c_int), parameter, public :: GL_PROVOKING_VERTEX                          = int(z'8E4F')
    integer(c_int), parameter, public :: GL_TEXTURE_CUBE_MAP_SEAMLESS                 = int(z'884F')
    integer(c_int), parameter, public :: GL_MAX_SERVER_WAIT_TIMEOUT                   = int(z'9111')
    integer(c_int), parameter, public :: GL_OBJECT_TYPE                               = int(z'9112')
    integer(c_int), parameter, public :: GL_SYNC_CONDITION                            = int(z'9113')
    integer(c_int), parameter, public :: GL_SYNC_STATUS                               = int(z'9114')
    integer(c_int), parameter, public :: GL_SYNC_FLAGS                                = int(z'9115')
    integer(c_int), parameter, public :: GL_SYNC_FENCE                                = int(z'9116')
    integer(c_int), parameter, public :: GL_SYNC_GPU_COMMANDS_COMPLETE                = int(z'9117')
    integer(c_int), parameter, public :: GL_UNSIGNALED                                = int(z'9118')
    integer(c_int), parameter, public :: GL_SIGNALED                                  = int(z'9119')
    integer(c_int), parameter, public :: GL_ALREADY_SIGNALED                          = int(z'911A')
    integer(c_int), parameter, public :: GL_TIMEOUT_EXPIRED                           = int(z'911B')
    integer(c_int), parameter, public :: GL_CONDITION_SATISFIED                       = int(z'911C')
    integer(c_int), parameter, public :: GL_WAIT_FAILED                               = int(z'911D')

    integer(c_unsigned_long_long), parameter, public :: GL_TIMEOUT_IGNORED = int(z'FFFFFFFFFFFFFFFF', kind=c_unsigned_long_long)

    integer(c_int), parameter, public :: GL_SYNC_FLUSH_COMMANDS_BIT                   = int(z'00000001')
    integer(c_int), parameter, public :: GL_SAMPLE_POSITION                           = int(z'8E50')
    integer(c_int), parameter, public :: GL_SAMPLE_MASK                               = int(z'8E51')
    integer(c_int), parameter, public :: GL_SAMPLE_MASK_VALUE                         = int(z'8E52')
    integer(c_int), parameter, public :: GL_MAX_SAMPLE_MASK_WORDS                     = int(z'8E59')
    integer(c_int), parameter, public :: GL_TEXTURE_2D_MULTISAMPLE                    = int(z'9100')
    integer(c_int), parameter, public :: GL_PROXY_TEXTURE_2D_MULTISAMPLE              = int(z'9101')
    integer(c_int), parameter, public :: GL_TEXTURE_2D_MULTISAMPLE_ARRAY              = int(z'9102')
    integer(c_int), parameter, public :: GL_PROXY_TEXTURE_2D_MULTISAMPLE_ARRAY        = int(z'9103')
    integer(c_int), parameter, public :: GL_TEXTURE_BINDING_2D_MULTISAMPLE            = int(z'9104')
    integer(c_int), parameter, public :: GL_TEXTURE_BINDING_2D_MULTISAMPLE_ARRAY      = int(z'9105')
    integer(c_int), parameter, public :: GL_TEXTURE_SAMPLES                           = int(z'9106')
    integer(c_int), parameter, public :: GL_TEXTURE_FIXED_SAMPLE_LOCATIONS            = int(z'9107')
    integer(c_int), parameter, public :: GL_SAMPLER_2D_MULTISAMPLE                    = int(z'9108')
    integer(c_int), parameter, public :: GL_INT_SAMPLER_2D_MULTISAMPLE                = int(z'9109')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE       = int(z'910A')
    integer(c_int), parameter, public :: GL_SAMPLER_2D_MULTISAMPLE_ARRAY              = int(z'910B')
    integer(c_int), parameter, public :: GL_INT_SAMPLER_2D_MULTISAMPLE_ARRAY          = int(z'910C')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_SAMPLER_2D_MULTISAMPLE_ARRAY = int(z'910D')
    integer(c_int), parameter, public :: GL_MAX_COLOR_TEXTURE_SAMPLES                 = int(z'910E')
    integer(c_int), parameter, public :: GL_MAX_DEPTH_TEXTURE_SAMPLES                 = int(z'910F')
    integer(c_int), parameter, public :: GL_MAX_INTEGER_SAMPLES                       = int(z'9110')

    ! OpenGL 3.3
    integer(c_int), parameter, public :: GL_VERTEX_ATTRIB_ARRAY_DIVISOR  = int(z'88FE')
    integer(c_int), parameter, public :: GL_SRC1_COLOR                   = int(z'88F9')
    integer(c_int), parameter, public :: GL_ONE_MINUS_SRC1_COLOR         = int(z'88FA')
    integer(c_int), parameter, public :: GL_ONE_MINUS_SRC1_ALPHA         = int(z'88FB')
    integer(c_int), parameter, public :: GL_MAX_DUAL_SOURCE_DRAW_BUFFERS = int(z'88FC')
    integer(c_int), parameter, public :: GL_ANY_SAMPLES_PASSED           = int(z'8C2F')
    integer(c_int), parameter, public :: GL_SAMPLER_BINDING              = int(z'8919')
    integer(c_int), parameter, public :: GL_RGB10_A2UI                   = int(z'906F')
    integer(c_int), parameter, public :: GL_TEXTURE_SWIZZLE_R            = int(z'8E42')
    integer(c_int), parameter, public :: GL_TEXTURE_SWIZZLE_G            = int(z'8E43')
    integer(c_int), parameter, public :: GL_TEXTURE_SWIZZLE_B            = int(z'8E44')
    integer(c_int), parameter, public :: GL_TEXTURE_SWIZZLE_A            = int(z'8E45')
    integer(c_int), parameter, public :: GL_TEXTURE_SWIZZLE_RGBA         = int(z'8E46')
    integer(c_int), parameter, public :: GL_TIME_ELAPSED                 = int(z'88BF')
    integer(c_int), parameter, public :: GL_TIMESTAMP                    = int(z'8E28')
    integer(c_int), parameter, public :: GL_INT_2_10_10_10_REV           = int(z'8D9F')

    ! OpenGL 4.0
    integer(c_int), parameter, public :: GL_SAMPLE_SHADING                                     = int(z'8C36')
    integer(c_int), parameter, public :: GL_MIN_SAMPLE_SHADING_VALUE                           = int(z'8C37')
    integer(c_int), parameter, public :: GL_MIN_PROGRAM_TEXTURE_GATHER_OFFSET                  = int(z'8E5E')
    integer(c_int), parameter, public :: GL_MAX_PROGRAM_TEXTURE_GATHER_OFFSET                  = int(z'8E5F')
    integer(c_int), parameter, public :: GL_TEXTURE_CUBE_MAP_ARRAY                             = int(z'9009')
    integer(c_int), parameter, public :: GL_TEXTURE_BINDING_CUBE_MAP_ARRAY                     = int(z'900A')
    integer(c_int), parameter, public :: GL_PROXY_TEXTURE_CUBE_MAP_ARRAY                       = int(z'900B')
    integer(c_int), parameter, public :: GL_SAMPLER_CUBE_MAP_ARRAY                             = int(z'900C')
    integer(c_int), parameter, public :: GL_SAMPLER_CUBE_MAP_ARRAY_SHADOW                      = int(z'900D')
    integer(c_int), parameter, public :: GL_INT_SAMPLER_CUBE_MAP_ARRAY                         = int(z'900E')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_SAMPLER_CUBE_MAP_ARRAY                = int(z'900F')
    integer(c_int), parameter, public :: GL_DRAW_INDIRECT_BUFFER                               = int(z'8F3F')
    integer(c_int), parameter, public :: GL_DRAW_INDIRECT_BUFFER_BINDING                       = int(z'8F43')
    integer(c_int), parameter, public :: GL_GEOMETRY_SHADER_INVOCATIONS                        = int(z'887F')
    integer(c_int), parameter, public :: GL_MAX_GEOMETRY_SHADER_INVOCATIONS                    = int(z'8E5A')
    integer(c_int), parameter, public :: GL_MIN_FRAGMENT_INTERPOLATION_OFFSET                  = int(z'8E5B')
    integer(c_int), parameter, public :: GL_MAX_FRAGMENT_INTERPOLATION_OFFSET                  = int(z'8E5C')
    integer(c_int), parameter, public :: GL_FRAGMENT_INTERPOLATION_OFFSET_BITS                 = int(z'8E5D')
    integer(c_int), parameter, public :: GL_MAX_VERTEX_STREAMS                                 = int(z'8E71')
    integer(c_int), parameter, public :: GL_DOUBLE_VEC2                                        = int(z'8FFC')
    integer(c_int), parameter, public :: GL_DOUBLE_VEC3                                        = int(z'8FFD')
    integer(c_int), parameter, public :: GL_DOUBLE_VEC4                                        = int(z'8FFE')
    integer(c_int), parameter, public :: GL_DOUBLE_MAT2                                        = int(z'8F46')
    integer(c_int), parameter, public :: GL_DOUBLE_MAT3                                        = int(z'8F47')
    integer(c_int), parameter, public :: GL_DOUBLE_MAT4                                        = int(z'8F48')
    integer(c_int), parameter, public :: GL_DOUBLE_MAT2x3                                      = int(z'8F49')
    integer(c_int), parameter, public :: GL_DOUBLE_MAT2x4                                      = int(z'8F4A')
    integer(c_int), parameter, public :: GL_DOUBLE_MAT3x2                                      = int(z'8F4B')
    integer(c_int), parameter, public :: GL_DOUBLE_MAT3x4                                      = int(z'8F4C')
    integer(c_int), parameter, public :: GL_DOUBLE_MAT4x2                                      = int(z'8F4D')
    integer(c_int), parameter, public :: GL_DOUBLE_MAT4x3                                      = int(z'8F4E')
    integer(c_int), parameter, public :: GL_ACTIVE_SUBROUTINES                                 = int(z'8DE5')
    integer(c_int), parameter, public :: GL_ACTIVE_SUBROUTINE_UNIFORMS                         = int(z'8DE6')
    integer(c_int), parameter, public :: GL_ACTIVE_SUBROUTINE_UNIFORM_LOCATIONS                = int(z'8E47')
    integer(c_int), parameter, public :: GL_ACTIVE_SUBROUTINE_MAX_LENGTH                       = int(z'8E48')
    integer(c_int), parameter, public :: GL_ACTIVE_SUBROUTINE_UNIFORM_MAX_LENGTH               = int(z'8E49')
    integer(c_int), parameter, public :: GL_MAX_SUBROUTINES                                    = int(z'8DE7')
    integer(c_int), parameter, public :: GL_MAX_SUBROUTINE_UNIFORM_LOCATIONS                   = int(z'8DE8')
    integer(c_int), parameter, public :: GL_NUM_COMPATIBLE_SUBROUTINES                         = int(z'8E4A')
    integer(c_int), parameter, public :: GL_COMPATIBLE_SUBROUTINES                             = int(z'8E4B')
    integer(c_int), parameter, public :: GL_PATCHES                                            = int(z'000E')
    integer(c_int), parameter, public :: GL_PATCH_VERTICES                                     = int(z'8E72')
    integer(c_int), parameter, public :: GL_PATCH_DEFAULT_INNER_LEVEL                          = int(z'8E73')
    integer(c_int), parameter, public :: GL_PATCH_DEFAULT_OUTER_LEVEL                          = int(z'8E74')
    integer(c_int), parameter, public :: GL_TESS_CONTROL_OUTPUT_VERTICES                       = int(z'8E75')
    integer(c_int), parameter, public :: GL_TESS_GEN_MODE                                      = int(z'8E76')
    integer(c_int), parameter, public :: GL_TESS_GEN_SPACING                                   = int(z'8E77')
    integer(c_int), parameter, public :: GL_TESS_GEN_VERTEX_ORDER                              = int(z'8E78')
    integer(c_int), parameter, public :: GL_TESS_GEN_POINT_MODE                                = int(z'8E79')
    integer(c_int), parameter, public :: GL_ISOLINES                                           = int(z'8E7A')
    integer(c_int), parameter, public :: GL_FRACTIONAL_ODD                                     = int(z'8E7B')
    integer(c_int), parameter, public :: GL_FRACTIONAL_EVEN                                    = int(z'8E7C')
    integer(c_int), parameter, public :: GL_MAX_PATCH_VERTICES                                 = int(z'8E7D')
    integer(c_int), parameter, public :: GL_MAX_TESS_GEN_LEVEL                                 = int(z'8E7E')
    integer(c_int), parameter, public :: GL_MAX_TESS_CONTROL_UNIFORM_COMPONENTS                = int(z'8E7F')
    integer(c_int), parameter, public :: GL_MAX_TESS_EVALUATION_UNIFORM_COMPONENTS             = int(z'8E80')
    integer(c_int), parameter, public :: GL_MAX_TESS_CONTROL_TEXTURE_IMAGE_UNITS               = int(z'8E81')
    integer(c_int), parameter, public :: GL_MAX_TESS_EVALUATION_TEXTURE_IMAGE_UNITS            = int(z'8E82')
    integer(c_int), parameter, public :: GL_MAX_TESS_CONTROL_OUTPUT_COMPONENTS                 = int(z'8E83')
    integer(c_int), parameter, public :: GL_MAX_TESS_PATCH_COMPONENTS                          = int(z'8E84')
    integer(c_int), parameter, public :: GL_MAX_TESS_CONTROL_TOTAL_OUTPUT_COMPONENTS           = int(z'8E85')
    integer(c_int), parameter, public :: GL_MAX_TESS_EVALUATION_OUTPUT_COMPONENTS              = int(z'8E86')
    integer(c_int), parameter, public :: GL_MAX_TESS_CONTROL_UNIFORM_BLOCKS                    = int(z'8E89')
    integer(c_int), parameter, public :: GL_MAX_TESS_EVALUATION_UNIFORM_BLOCKS                 = int(z'8E8A')
    integer(c_int), parameter, public :: GL_MAX_TESS_CONTROL_INPUT_COMPONENTS                  = int(z'886C')
    integer(c_int), parameter, public :: GL_MAX_TESS_EVALUATION_INPUT_COMPONENTS               = int(z'886D')
    integer(c_int), parameter, public :: GL_MAX_COMBINED_TESS_CONTROL_UNIFORM_COMPONENTS       = int(z'8E1E')
    integer(c_int), parameter, public :: GL_MAX_COMBINED_TESS_EVALUATION_UNIFORM_COMPONENTS    = int(z'8E1F')
    integer(c_int), parameter, public :: GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_CONTROL_SHADER    = int(z'84F0')
    integer(c_int), parameter, public :: GL_UNIFORM_BLOCK_REFERENCED_BY_TESS_EVALUATION_SHADER = int(z'84F1')
    integer(c_int), parameter, public :: GL_TESS_EVALUATION_SHADER                             = int(z'8E87')
    integer(c_int), parameter, public :: GL_TESS_CONTROL_SHADER                                = int(z'8E88')
    integer(c_int), parameter, public :: GL_TRANSFORM_FEEDBACK                                 = int(z'8E22')
    integer(c_int), parameter, public :: GL_TRANSFORM_FEEDBACK_BUFFER_PAUSED                   = int(z'8E23')
    integer(c_int), parameter, public :: GL_TRANSFORM_FEEDBACK_BUFFER_ACTIVE                   = int(z'8E24')
    integer(c_int), parameter, public :: GL_TRANSFORM_FEEDBACK_BINDING                         = int(z'8E25')
    integer(c_int), parameter, public :: GL_MAX_TRANSFORM_FEEDBACK_BUFFERS                     = int(z'8E70')

    ! OpenGL 4.1
    integer(c_int), parameter, public :: GL_FIXED                            = int(z'140C')
    integer(c_int), parameter, public :: GL_IMPLEMENTATION_COLOR_READ_TYPE   = int(z'8B9A')
    integer(c_int), parameter, public :: GL_IMPLEMENTATION_COLOR_READ_FORMAT = int(z'8B9B')
    integer(c_int), parameter, public :: GL_LOW_FLOAT                        = int(z'8DF0')
    integer(c_int), parameter, public :: GL_MEDIUM_FLOAT                     = int(z'8DF1')
    integer(c_int), parameter, public :: GL_HIGH_FLOAT                       = int(z'8DF2')
    integer(c_int), parameter, public :: GL_LOW_INT                          = int(z'8DF3')
    integer(c_int), parameter, public :: GL_MEDIUM_INT                       = int(z'8DF4')
    integer(c_int), parameter, public :: GL_HIGH_INT                         = int(z'8DF5')
    integer(c_int), parameter, public :: GL_SHADER_COMPILER                  = int(z'8DFA')
    integer(c_int), parameter, public :: GL_SHADER_BINARY_FORMATS            = int(z'8DF8')
    integer(c_int), parameter, public :: GL_NUM_SHADER_BINARY_FORMATS        = int(z'8DF9')
    integer(c_int), parameter, public :: GL_MAX_VERTEX_UNIFORM_VECTORS       = int(z'8DFB')
    integer(c_int), parameter, public :: GL_MAX_VARYING_VECTORS              = int(z'8DFC')
    integer(c_int), parameter, public :: GL_MAX_FRAGMENT_UNIFORM_VECTORS     = int(z'8DFD')
    integer(c_int), parameter, public :: GL_RGB565                           = int(z'8D62')
    integer(c_int), parameter, public :: GL_PROGRAM_BINARY_RETRIEVABLE_HINT  = int(z'8257')
    integer(c_int), parameter, public :: GL_PROGRAM_BINARY_LENGTH            = int(z'8741')
    integer(c_int), parameter, public :: GL_NUM_PROGRAM_BINARY_FORMATS       = int(z'87FE')
    integer(c_int), parameter, public :: GL_PROGRAM_BINARY_FORMATS           = int(z'87FF')
    integer(c_int), parameter, public :: GL_VERTEX_SHADER_BIT                = int(z'00000001')
    integer(c_int), parameter, public :: GL_FRAGMENT_SHADER_BIT              = int(z'00000002')
    integer(c_int), parameter, public :: GL_GEOMETRY_SHADER_BIT              = int(z'00000004')
    integer(c_int), parameter, public :: GL_TESS_CONTROL_SHADER_BIT          = int(z'00000008')
    integer(c_int), parameter, public :: GL_TESS_EVALUATION_SHADER_BIT       = int(z'00000010')
    integer(c_int), parameter, public :: GL_ALL_SHADER_BITS                  = int(z'FFFFFFFF')
    integer(c_int), parameter, public :: GL_PROGRAM_SEPARABLE                = int(z'8258')
    integer(c_int), parameter, public :: GL_ACTIVE_PROGRAM                   = int(z'8259')
    integer(c_int), parameter, public :: GL_PROGRAM_PIPELINE_BINDING         = int(z'825A')
    integer(c_int), parameter, public :: GL_MAX_VIEWPORTS                    = int(z'825B')
    integer(c_int), parameter, public :: GL_VIEWPORT_SUBPIXEL_BITS           = int(z'825C')
    integer(c_int), parameter, public :: GL_VIEWPORT_BOUNDS_RANGE            = int(z'825D')
    integer(c_int), parameter, public :: GL_LAYER_PROVOKING_VERTEX           = int(z'825E')
    integer(c_int), parameter, public :: GL_VIEWPORT_INDEX_PROVOKING_VERTEX  = int(z'825F')
    integer(c_int), parameter, public :: GL_UNDEFINED_VERTEX                 = int(z'8260')

    ! OpenGL 4.2
    integer(c_int), parameter, public :: GL_COPY_READ_BUFFER_BINDING                                   = int(z'8F36')
    integer(c_int), parameter, public :: GL_COPY_WRITE_BUFFER_BINDING                                  = int(z'8F37')
    integer(c_int), parameter, public :: GL_TRANSFORM_FEEDBACK_ACTIVE                                  = int(z'8E24')
    integer(c_int), parameter, public :: GL_TRANSFORM_FEEDBACK_PAUSED                                  = int(z'8E23')
    integer(c_int), parameter, public :: GL_UNPACK_COMPRESSED_BLOCK_WIDTH                              = int(z'9127')
    integer(c_int), parameter, public :: GL_UNPACK_COMPRESSED_BLOCK_HEIGHT                             = int(z'9128')
    integer(c_int), parameter, public :: GL_UNPACK_COMPRESSED_BLOCK_DEPTH                              = int(z'9129')
    integer(c_int), parameter, public :: GL_UNPACK_COMPRESSED_BLOCK_SIZE                               = int(z'912A')
    integer(c_int), parameter, public :: GL_PACK_COMPRESSED_BLOCK_WIDTH                                = int(z'912B')
    integer(c_int), parameter, public :: GL_PACK_COMPRESSED_BLOCK_HEIGHT                               = int(z'912C')
    integer(c_int), parameter, public :: GL_PACK_COMPRESSED_BLOCK_DEPTH                                = int(z'912D')
    integer(c_int), parameter, public :: GL_PACK_COMPRESSED_BLOCK_SIZE                                 = int(z'912E')
    integer(c_int), parameter, public :: GL_NUM_SAMPLE_COUNTS                                          = int(z'9380')
    integer(c_int), parameter, public :: GL_MIN_MAP_BUFFER_ALIGNMENT                                   = int(z'90BC')
    integer(c_int), parameter, public :: GL_ATOMIC_COUNTER_BUFFER                                      = int(z'92C0')
    integer(c_int), parameter, public :: GL_ATOMIC_COUNTER_BUFFER_BINDING                              = int(z'92C1')
    integer(c_int), parameter, public :: GL_ATOMIC_COUNTER_BUFFER_START                                = int(z'92C2')
    integer(c_int), parameter, public :: GL_ATOMIC_COUNTER_BUFFER_SIZE                                 = int(z'92C3')
    integer(c_int), parameter, public :: GL_ATOMIC_COUNTER_BUFFER_DATA_SIZE                            = int(z'92C4')
    integer(c_int), parameter, public :: GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTERS               = int(z'92C5')
    integer(c_int), parameter, public :: GL_ATOMIC_COUNTER_BUFFER_ACTIVE_ATOMIC_COUNTER_INDICES        = int(z'92C6')
    integer(c_int), parameter, public :: GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_VERTEX_SHADER          = int(z'92C7')
    integer(c_int), parameter, public :: GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_CONTROL_SHADER    = int(z'92C8')
    integer(c_int), parameter, public :: GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_TESS_EVALUATION_SHADER = int(z'92C9')
    integer(c_int), parameter, public :: GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_GEOMETRY_SHADER        = int(z'92CA')
    integer(c_int), parameter, public :: GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_FRAGMENT_SHADER        = int(z'92CB')
    integer(c_int), parameter, public :: GL_MAX_VERTEX_ATOMIC_COUNTER_BUFFERS                          = int(z'92CC')
    integer(c_int), parameter, public :: GL_MAX_TESS_CONTROL_ATOMIC_COUNTER_BUFFERS                    = int(z'92CD')
    integer(c_int), parameter, public :: GL_MAX_TESS_EVALUATION_ATOMIC_COUNTER_BUFFERS                 = int(z'92CE')
    integer(c_int), parameter, public :: GL_MAX_GEOMETRY_ATOMIC_COUNTER_BUFFERS                        = int(z'92CF')
    integer(c_int), parameter, public :: GL_MAX_FRAGMENT_ATOMIC_COUNTER_BUFFERS                        = int(z'92D0')
    integer(c_int), parameter, public :: GL_MAX_COMBINED_ATOMIC_COUNTER_BUFFERS                        = int(z'92D1')
    integer(c_int), parameter, public :: GL_MAX_VERTEX_ATOMIC_COUNTERS                                 = int(z'92D2')
    integer(c_int), parameter, public :: GL_MAX_TESS_CONTROL_ATOMIC_COUNTERS                           = int(z'92D3')
    integer(c_int), parameter, public :: GL_MAX_TESS_EVALUATION_ATOMIC_COUNTERS                        = int(z'92D4')
    integer(c_int), parameter, public :: GL_MAX_GEOMETRY_ATOMIC_COUNTERS                               = int(z'92D5')
    integer(c_int), parameter, public :: GL_MAX_FRAGMENT_ATOMIC_COUNTERS                               = int(z'92D6')
    integer(c_int), parameter, public :: GL_MAX_COMBINED_ATOMIC_COUNTERS                               = int(z'92D7')
    integer(c_int), parameter, public :: GL_MAX_ATOMIC_COUNTER_BUFFER_SIZE                             = int(z'92D8')
    integer(c_int), parameter, public :: GL_MAX_ATOMIC_COUNTER_BUFFER_BINDINGS                         = int(z'92DC')
    integer(c_int), parameter, public :: GL_ACTIVE_ATOMIC_COUNTER_BUFFERS                              = int(z'92D9')
    integer(c_int), parameter, public :: GL_UNIFORM_ATOMIC_COUNTER_BUFFER_INDEX                        = int(z'92DA')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_ATOMIC_COUNTER                                = int(z'92DB')
    integer(c_int), parameter, public :: GL_VERTEX_ATTRIB_ARRAY_BARRIER_BIT                            = int(z'00000001')
    integer(c_int), parameter, public :: GL_ELEMENT_ARRAY_BARRIER_BIT                                  = int(z'00000002')
    integer(c_int), parameter, public :: GL_UNIFORM_BARRIER_BIT                                        = int(z'00000004')
    integer(c_int), parameter, public :: GL_TEXTURE_FETCH_BARRIER_BIT                                  = int(z'00000008')
    integer(c_int), parameter, public :: GL_SHADER_IMAGE_ACCESS_BARRIER_BIT                            = int(z'00000020')
    integer(c_int), parameter, public :: GL_COMMAND_BARRIER_BIT                                        = int(z'00000040')
    integer(c_int), parameter, public :: GL_PIXEL_BUFFER_BARRIER_BIT                                   = int(z'00000080')
    integer(c_int), parameter, public :: GL_TEXTURE_UPDATE_BARRIER_BIT                                 = int(z'00000100')
    integer(c_int), parameter, public :: GL_BUFFER_UPDATE_BARRIER_BIT                                  = int(z'00000200')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_BARRIER_BIT                                    = int(z'00000400')
    integer(c_int), parameter, public :: GL_TRANSFORM_FEEDBACK_BARRIER_BIT                             = int(z'00000800')
    integer(c_int), parameter, public :: GL_ATOMIC_COUNTER_BARRIER_BIT                                 = int(z'00001000')
    integer(c_int), parameter, public :: GL_ALL_BARRIER_BITS                                           = int(z'FFFFFFFF')
    integer(c_int), parameter, public :: GL_MAX_IMAGE_UNITS                                            = int(z'8F38')
    integer(c_int), parameter, public :: GL_MAX_COMBINED_IMAGE_UNITS_AND_FRAGMENT_OUTPUTS              = int(z'8F39')
    integer(c_int), parameter, public :: GL_IMAGE_BINDING_NAME                                         = int(z'8F3A')
    integer(c_int), parameter, public :: GL_IMAGE_BINDING_LEVEL                                        = int(z'8F3B')
    integer(c_int), parameter, public :: GL_IMAGE_BINDING_LAYERED                                      = int(z'8F3C')
    integer(c_int), parameter, public :: GL_IMAGE_BINDING_LAYER                                        = int(z'8F3D')
    integer(c_int), parameter, public :: GL_IMAGE_BINDING_ACCESS                                       = int(z'8F3E')
    integer(c_int), parameter, public :: GL_IMAGE_1D                                                   = int(z'904C')
    integer(c_int), parameter, public :: GL_IMAGE_2D                                                   = int(z'904D')
    integer(c_int), parameter, public :: GL_IMAGE_3D                                                   = int(z'904E')
    integer(c_int), parameter, public :: GL_IMAGE_2D_RECT                                              = int(z'904F')
    integer(c_int), parameter, public :: GL_IMAGE_CUBE                                                 = int(z'9050')
    integer(c_int), parameter, public :: GL_IMAGE_BUFFER                                               = int(z'9051')
    integer(c_int), parameter, public :: GL_IMAGE_1D_ARRAY                                             = int(z'9052')
    integer(c_int), parameter, public :: GL_IMAGE_2D_ARRAY                                             = int(z'9053')
    integer(c_int), parameter, public :: GL_IMAGE_CUBE_MAP_ARRAY                                       = int(z'9054')
    integer(c_int), parameter, public :: GL_IMAGE_2D_MULTISAMPLE                                       = int(z'9055')
    integer(c_int), parameter, public :: GL_IMAGE_2D_MULTISAMPLE_ARRAY                                 = int(z'9056')
    integer(c_int), parameter, public :: GL_INT_IMAGE_1D                                               = int(z'9057')
    integer(c_int), parameter, public :: GL_INT_IMAGE_2D                                               = int(z'9058')
    integer(c_int), parameter, public :: GL_INT_IMAGE_3D                                               = int(z'9059')
    integer(c_int), parameter, public :: GL_INT_IMAGE_2D_RECT                                          = int(z'905A')
    integer(c_int), parameter, public :: GL_INT_IMAGE_CUBE                                             = int(z'905B')
    integer(c_int), parameter, public :: GL_INT_IMAGE_BUFFER                                           = int(z'905C')
    integer(c_int), parameter, public :: GL_INT_IMAGE_1D_ARRAY                                         = int(z'905D')
    integer(c_int), parameter, public :: GL_INT_IMAGE_2D_ARRAY                                         = int(z'905E')
    integer(c_int), parameter, public :: GL_INT_IMAGE_CUBE_MAP_ARRAY                                   = int(z'905F')
    integer(c_int), parameter, public :: GL_INT_IMAGE_2D_MULTISAMPLE                                   = int(z'9060')
    integer(c_int), parameter, public :: GL_INT_IMAGE_2D_MULTISAMPLE_ARRAY                             = int(z'9061')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_IMAGE_1D                                      = int(z'9062')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_IMAGE_2D                                      = int(z'9063')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_IMAGE_3D                                      = int(z'9064')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_IMAGE_2D_RECT                                 = int(z'9065')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_IMAGE_CUBE                                    = int(z'9066')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_IMAGE_BUFFER                                  = int(z'9067')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_IMAGE_1D_ARRAY                                = int(z'9068')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_IMAGE_2D_ARRAY                                = int(z'9069')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_IMAGE_CUBE_MAP_ARRAY                          = int(z'906A')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE                          = int(z'906B')
    integer(c_int), parameter, public :: GL_UNSIGNED_INT_IMAGE_2D_MULTISAMPLE_ARRAY                    = int(z'906C')
    integer(c_int), parameter, public :: GL_MAX_IMAGE_SAMPLES                                          = int(z'906D')
    integer(c_int), parameter, public :: GL_IMAGE_BINDING_FORMAT                                       = int(z'906E')
    integer(c_int), parameter, public :: GL_IMAGE_FORMAT_COMPATIBILITY_TYPE                            = int(z'90C7')
    integer(c_int), parameter, public :: GL_IMAGE_FORMAT_COMPATIBILITY_BY_SIZE                         = int(z'90C8')
    integer(c_int), parameter, public :: GL_IMAGE_FORMAT_COMPATIBILITY_BY_CLASS                        = int(z'90C9')
    integer(c_int), parameter, public :: GL_MAX_VERTEX_IMAGE_UNIFORMS                                  = int(z'90CA')
    integer(c_int), parameter, public :: GL_MAX_TESS_CONTROL_IMAGE_UNIFORMS                            = int(z'90CB')
    integer(c_int), parameter, public :: GL_MAX_TESS_EVALUATION_IMAGE_UNIFORMS                         = int(z'90CC')
    integer(c_int), parameter, public :: GL_MAX_GEOMETRY_IMAGE_UNIFORMS                                = int(z'90CD')
    integer(c_int), parameter, public :: GL_MAX_FRAGMENT_IMAGE_UNIFORMS                                = int(z'90CE')
    integer(c_int), parameter, public :: GL_MAX_COMBINED_IMAGE_UNIFORMS                                = int(z'90CF')
    integer(c_int), parameter, public :: GL_COMPRESSED_RGBA_BPTC_UNORM                                 = int(z'8E8C')
    integer(c_int), parameter, public :: GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM                           = int(z'8E8D')
    integer(c_int), parameter, public :: GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT                           = int(z'8E8E')
    integer(c_int), parameter, public :: GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT                         = int(z'8E8F')
    integer(c_int), parameter, public :: GL_TEXTURE_IMMUTABLE_FORMAT                                   = int(z'912F')

    ! OpenGL 4.3
    integer(c_int), parameter, public :: GL_NUM_SHADING_LANGUAGE_VERSIONS                      = int(z'82E9')
    integer(c_int), parameter, public :: GL_VERTEX_ATTRIB_ARRAY_LONG                           = int(z'874E')
    integer(c_int), parameter, public :: GL_COMPRESSED_RGB8_ETC2                               = int(z'9274')
    integer(c_int), parameter, public :: GL_COMPRESSED_SRGB8_ETC2                              = int(z'9275')
    integer(c_int), parameter, public :: GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2           = int(z'9276')
    integer(c_int), parameter, public :: GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2          = int(z'9277')
    integer(c_int), parameter, public :: GL_COMPRESSED_RGBA8_ETC2_EAC                          = int(z'9278')
    integer(c_int), parameter, public :: GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC                   = int(z'9279')
    integer(c_int), parameter, public :: GL_COMPRESSED_R11_EAC                                 = int(z'9270')
    integer(c_int), parameter, public :: GL_COMPRESSED_SIGNED_R11_EAC                          = int(z'9271')
    integer(c_int), parameter, public :: GL_COMPRESSED_RG11_EAC                                = int(z'9272')
    integer(c_int), parameter, public :: GL_COMPRESSED_SIGNED_RG11_EAC                         = int(z'9273')
    integer(c_int), parameter, public :: GL_PRIMITIVE_RESTART_FIXED_INDEX                      = int(z'8D69')
    integer(c_int), parameter, public :: GL_ANY_SAMPLES_PASSED_CONSERVATIVE                    = int(z'8D6A')
    integer(c_int), parameter, public :: GL_MAX_ELEMENT_INDEX                                  = int(z'8D6B')
    integer(c_int), parameter, public :: GL_COMPUTE_SHADER                                     = int(z'91B9')
    integer(c_int), parameter, public :: GL_MAX_COMPUTE_UNIFORM_BLOCKS                         = int(z'91BB')
    integer(c_int), parameter, public :: GL_MAX_COMPUTE_TEXTURE_IMAGE_UNITS                    = int(z'91BC')
    integer(c_int), parameter, public :: GL_MAX_COMPUTE_IMAGE_UNIFORMS                         = int(z'91BD')
    integer(c_int), parameter, public :: GL_MAX_COMPUTE_SHARED_MEMORY_SIZE                     = int(z'8262')
    integer(c_int), parameter, public :: GL_MAX_COMPUTE_UNIFORM_COMPONENTS                     = int(z'8263')
    integer(c_int), parameter, public :: GL_MAX_COMPUTE_ATOMIC_COUNTER_BUFFERS                 = int(z'8264')
    integer(c_int), parameter, public :: GL_MAX_COMPUTE_ATOMIC_COUNTERS                        = int(z'8265')
    integer(c_int), parameter, public :: GL_MAX_COMBINED_COMPUTE_UNIFORM_COMPONENTS            = int(z'8266')
    integer(c_int), parameter, public :: GL_MAX_COMPUTE_WORK_GROUP_INVOCATIONS                 = int(z'90EB')
    integer(c_int), parameter, public :: GL_MAX_COMPUTE_WORK_GROUP_COUNT                       = int(z'91BE')
    integer(c_int), parameter, public :: GL_MAX_COMPUTE_WORK_GROUP_SIZE                        = int(z'91BF')
    integer(c_int), parameter, public :: GL_COMPUTE_WORK_GROUP_SIZE                            = int(z'8267')
    integer(c_int), parameter, public :: GL_UNIFORM_BLOCK_REFERENCED_BY_COMPUTE_SHADER         = int(z'90EC')
    integer(c_int), parameter, public :: GL_ATOMIC_COUNTER_BUFFER_REFERENCED_BY_COMPUTE_SHADER = int(z'90ED')
    integer(c_int), parameter, public :: GL_DISPATCH_INDIRECT_BUFFER                           = int(z'90EE')
    integer(c_int), parameter, public :: GL_DISPATCH_INDIRECT_BUFFER_BINDING                   = int(z'90EF')
    integer(c_int), parameter, public :: GL_COMPUTE_SHADER_BIT                                 = int(z'00000020')
    integer(c_int), parameter, public :: GL_DEBUG_OUTPUT_SYNCHRONOUS                           = int(z'8242')
    integer(c_int), parameter, public :: GL_DEBUG_NEXT_LOGGED_MESSAGE_LENGTH                   = int(z'8243')
    integer(c_int), parameter, public :: GL_DEBUG_CALLBACK_FUNCTION                            = int(z'8244')
    integer(c_int), parameter, public :: GL_DEBUG_CALLBACK_USER_PARAM                          = int(z'8245')
    integer(c_int), parameter, public :: GL_DEBUG_SOURCE_API                                   = int(z'8246')
    integer(c_int), parameter, public :: GL_DEBUG_SOURCE_WINDOW_SYSTEM                         = int(z'8247')
    integer(c_int), parameter, public :: GL_DEBUG_SOURCE_SHADER_COMPILER                       = int(z'8248')
    integer(c_int), parameter, public :: GL_DEBUG_SOURCE_THIRD_PARTY                           = int(z'8249')
    integer(c_int), parameter, public :: GL_DEBUG_SOURCE_APPLICATION                           = int(z'824A')
    integer(c_int), parameter, public :: GL_DEBUG_SOURCE_OTHER                                 = int(z'824B')
    integer(c_int), parameter, public :: GL_DEBUG_TYPE_ERROR                                   = int(z'824C')
    integer(c_int), parameter, public :: GL_DEBUG_TYPE_DEPRECATED_BEHAVIOR                     = int(z'824D')
    integer(c_int), parameter, public :: GL_DEBUG_TYPE_UNDEFINED_BEHAVIOR                      = int(z'824E')
    integer(c_int), parameter, public :: GL_DEBUG_TYPE_PORTABILITY                             = int(z'824F')
    integer(c_int), parameter, public :: GL_DEBUG_TYPE_PERFORMANCE                             = int(z'8250')
    integer(c_int), parameter, public :: GL_DEBUG_TYPE_OTHER                                   = int(z'8251')
    integer(c_int), parameter, public :: GL_MAX_DEBUG_MESSAGE_LENGTH                           = int(z'9143')
    integer(c_int), parameter, public :: GL_MAX_DEBUG_LOGGED_MESSAGES                          = int(z'9144')
    integer(c_int), parameter, public :: GL_DEBUG_LOGGED_MESSAGES                              = int(z'9145')
    integer(c_int), parameter, public :: GL_DEBUG_SEVERITY_HIGH                                = int(z'9146')
    integer(c_int), parameter, public :: GL_DEBUG_SEVERITY_MEDIUM                              = int(z'9147')
    integer(c_int), parameter, public :: GL_DEBUG_SEVERITY_LOW                                 = int(z'9148')
    integer(c_int), parameter, public :: GL_DEBUG_TYPE_MARKER                                  = int(z'8268')
    integer(c_int), parameter, public :: GL_DEBUG_TYPE_PUSH_GROUP                              = int(z'8269')
    integer(c_int), parameter, public :: GL_DEBUG_TYPE_POP_GROUP                               = int(z'826A')
    integer(c_int), parameter, public :: GL_DEBUG_SEVERITY_NOTIFICATION                        = int(z'826B')
    integer(c_int), parameter, public :: GL_MAX_DEBUG_GROUP_STACK_DEPTH                        = int(z'826C')
    integer(c_int), parameter, public :: GL_DEBUG_GROUP_STACK_DEPTH                            = int(z'826D')
    integer(c_int), parameter, public :: GL_BUFFER                                             = int(z'82E0')
    integer(c_int), parameter, public :: GL_SHADER                                             = int(z'82E1')
    integer(c_int), parameter, public :: GL_PROGRAM                                            = int(z'82E2')
    integer(c_int), parameter, public :: GL_QUERY                                              = int(z'82E3')
    integer(c_int), parameter, public :: GL_PROGRAM_PIPELINE                                   = int(z'82E4')
    integer(c_int), parameter, public :: GL_SAMPLER                                            = int(z'82E6')
    integer(c_int), parameter, public :: GL_MAX_LABEL_LENGTH                                   = int(z'82E8')
    integer(c_int), parameter, public :: GL_DEBUG_OUTPUT                                       = int(z'92E0')
    integer(c_int), parameter, public :: GL_CONTEXT_FLAG_DEBUG_BIT                             = int(z'00000002')
    integer(c_int), parameter, public :: GL_MAX_UNIFORM_LOCATIONS                              = int(z'826E')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_DEFAULT_WIDTH                          = int(z'9310')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_DEFAULT_HEIGHT                         = int(z'9311')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_DEFAULT_LAYERS                         = int(z'9312')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_DEFAULT_SAMPLES                        = int(z'9313')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_DEFAULT_FIXED_SAMPLE_LOCATIONS         = int(z'9314')
    integer(c_int), parameter, public :: GL_MAX_FRAMEBUFFER_WIDTH                              = int(z'9315')
    integer(c_int), parameter, public :: GL_MAX_FRAMEBUFFER_HEIGHT                             = int(z'9316')
    integer(c_int), parameter, public :: GL_MAX_FRAMEBUFFER_LAYERS                             = int(z'9317')
    integer(c_int), parameter, public :: GL_MAX_FRAMEBUFFER_SAMPLES                            = int(z'9318')
    integer(c_int), parameter, public :: GL_INTERNALFORMAT_SUPPORTED                           = int(z'826F')
    integer(c_int), parameter, public :: GL_INTERNALFORMAT_PREFERRED                           = int(z'8270')
    integer(c_int), parameter, public :: GL_INTERNALFORMAT_RED_SIZE                            = int(z'8271')
    integer(c_int), parameter, public :: GL_INTERNALFORMAT_GREEN_SIZE                          = int(z'8272')
    integer(c_int), parameter, public :: GL_INTERNALFORMAT_BLUE_SIZE                           = int(z'8273')
    integer(c_int), parameter, public :: GL_INTERNALFORMAT_ALPHA_SIZE                          = int(z'8274')
    integer(c_int), parameter, public :: GL_INTERNALFORMAT_DEPTH_SIZE                          = int(z'8275')
    integer(c_int), parameter, public :: GL_INTERNALFORMAT_STENCIL_SIZE                        = int(z'8276')
    integer(c_int), parameter, public :: GL_INTERNALFORMAT_SHARED_SIZE                         = int(z'8277')
    integer(c_int), parameter, public :: GL_INTERNALFORMAT_RED_TYPE                            = int(z'8278')
    integer(c_int), parameter, public :: GL_INTERNALFORMAT_GREEN_TYPE                          = int(z'8279')
    integer(c_int), parameter, public :: GL_INTERNALFORMAT_BLUE_TYPE                           = int(z'827A')
    integer(c_int), parameter, public :: GL_INTERNALFORMAT_ALPHA_TYPE                          = int(z'827B')
    integer(c_int), parameter, public :: GL_INTERNALFORMAT_DEPTH_TYPE                          = int(z'827C')
    integer(c_int), parameter, public :: GL_INTERNALFORMAT_STENCIL_TYPE                        = int(z'827D')
    integer(c_int), parameter, public :: GL_MAX_WIDTH                                          = int(z'827E')
    integer(c_int), parameter, public :: GL_MAX_HEIGHT                                         = int(z'827F')
    integer(c_int), parameter, public :: GL_MAX_DEPTH                                          = int(z'8280')
    integer(c_int), parameter, public :: GL_MAX_LAYERS                                         = int(z'8281')
    integer(c_int), parameter, public :: GL_MAX_COMBINED_DIMENSIONS                            = int(z'8282')
    integer(c_int), parameter, public :: GL_COLOR_COMPONENTS                                   = int(z'8283')
    integer(c_int), parameter, public :: GL_DEPTH_COMPONENTS                                   = int(z'8284')
    integer(c_int), parameter, public :: GL_STENCIL_COMPONENTS                                 = int(z'8285')
    integer(c_int), parameter, public :: GL_COLOR_RENDERABLE                                   = int(z'8286')
    integer(c_int), parameter, public :: GL_DEPTH_RENDERABLE                                   = int(z'8287')
    integer(c_int), parameter, public :: GL_STENCIL_RENDERABLE                                 = int(z'8288')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_RENDERABLE                             = int(z'8289')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_RENDERABLE_LAYERED                     = int(z'828A')
    integer(c_int), parameter, public :: GL_FRAMEBUFFER_BLEND                                  = int(z'828B')
    integer(c_int), parameter, public :: GL_READ_PIXELS                                        = int(z'828C')
    integer(c_int), parameter, public :: GL_READ_PIXELS_FORMAT                                 = int(z'828D')
    integer(c_int), parameter, public :: GL_READ_PIXELS_TYPE                                   = int(z'828E')
    integer(c_int), parameter, public :: GL_TEXTURE_IMAGE_FORMAT                               = int(z'828F')
    integer(c_int), parameter, public :: GL_TEXTURE_IMAGE_TYPE                                 = int(z'8290')
    integer(c_int), parameter, public :: GL_GET_TEXTURE_IMAGE_FORMAT                           = int(z'8291')
    integer(c_int), parameter, public :: GL_GET_TEXTURE_IMAGE_TYPE                             = int(z'8292')
    integer(c_int), parameter, public :: GL_MIPMAP                                             = int(z'8293')
    integer(c_int), parameter, public :: GL_MANUAL_GENERATE_MIPMAP                             = int(z'8294')
    integer(c_int), parameter, public :: GL_AUTO_GENERATE_MIPMAP                               = int(z'8295')
    integer(c_int), parameter, public :: GL_COLOR_ENCODING                                     = int(z'8296')
    integer(c_int), parameter, public :: GL_SRGB_READ                                          = int(z'8297')
    integer(c_int), parameter, public :: GL_SRGB_WRITE                                         = int(z'8298')
    integer(c_int), parameter, public :: GL_FILTER                                             = int(z'829A')
    integer(c_int), parameter, public :: GL_VERTEX_TEXTURE                                     = int(z'829B')
    integer(c_int), parameter, public :: GL_TESS_CONTROL_TEXTURE                               = int(z'829C')
    integer(c_int), parameter, public :: GL_TESS_EVALUATION_TEXTURE                            = int(z'829D')
    integer(c_int), parameter, public :: GL_GEOMETRY_TEXTURE                                   = int(z'829E')
    integer(c_int), parameter, public :: GL_FRAGMENT_TEXTURE                                   = int(z'829F')
    integer(c_int), parameter, public :: GL_COMPUTE_TEXTURE                                    = int(z'82A0')
    integer(c_int), parameter, public :: GL_TEXTURE_SHADOW                                     = int(z'82A1')
    integer(c_int), parameter, public :: GL_TEXTURE_GATHER                                     = int(z'82A2')
    integer(c_int), parameter, public :: GL_TEXTURE_GATHER_SHADOW                              = int(z'82A3')
    integer(c_int), parameter, public :: GL_SHADER_IMAGE_LOAD                                  = int(z'82A4')
    integer(c_int), parameter, public :: GL_SHADER_IMAGE_STORE                                 = int(z'82A5')
    integer(c_int), parameter, public :: GL_SHADER_IMAGE_ATOMIC                                = int(z'82A6')
    integer(c_int), parameter, public :: GL_IMAGE_TEXEL_SIZE                                   = int(z'82A7')
    integer(c_int), parameter, public :: GL_IMAGE_COMPATIBILITY_CLASS                          = int(z'82A8')
    integer(c_int), parameter, public :: GL_IMAGE_PIXEL_FORMAT                                 = int(z'82A9')
    integer(c_int), parameter, public :: GL_IMAGE_PIXEL_TYPE                                   = int(z'82AA')
    integer(c_int), parameter, public :: GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_TEST                = int(z'82AC')
    integer(c_int), parameter, public :: GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_TEST              = int(z'82AD')
    integer(c_int), parameter, public :: GL_SIMULTANEOUS_TEXTURE_AND_DEPTH_WRITE               = int(z'82AE')
    integer(c_int), parameter, public :: GL_SIMULTANEOUS_TEXTURE_AND_STENCIL_WRITE             = int(z'82AF')
    integer(c_int), parameter, public :: GL_TEXTURE_COMPRESSED_BLOCK_WIDTH                     = int(z'82B1')
    integer(c_int), parameter, public :: GL_TEXTURE_COMPRESSED_BLOCK_HEIGHT                    = int(z'82B2')
    integer(c_int), parameter, public :: GL_TEXTURE_COMPRESSED_BLOCK_SIZE                      = int(z'82B3')
    integer(c_int), parameter, public :: GL_CLEAR_BUFFER                                       = int(z'82B4')
    integer(c_int), parameter, public :: GL_TEXTURE_VIEW                                       = int(z'82B5')
    integer(c_int), parameter, public :: GL_VIEW_COMPATIBILITY_CLASS                           = int(z'82B6')
    integer(c_int), parameter, public :: GL_FULL_SUPPORT                                       = int(z'82B7')
    integer(c_int), parameter, public :: GL_CAVEAT_SUPPORT                                     = int(z'82B8')
    integer(c_int), parameter, public :: GL_IMAGE_CLASS_4_X_32                                 = int(z'82B9')
    integer(c_int), parameter, public :: GL_IMAGE_CLASS_2_X_32                                 = int(z'82BA')
    integer(c_int), parameter, public :: GL_IMAGE_CLASS_1_X_32                                 = int(z'82BB')
    integer(c_int), parameter, public :: GL_IMAGE_CLASS_4_X_16                                 = int(z'82BC')
    integer(c_int), parameter, public :: GL_IMAGE_CLASS_2_X_16                                 = int(z'82BD')
    integer(c_int), parameter, public :: GL_IMAGE_CLASS_1_X_16                                 = int(z'82BE')
    integer(c_int), parameter, public :: GL_IMAGE_CLASS_4_X_8                                  = int(z'82BF')
    integer(c_int), parameter, public :: GL_IMAGE_CLASS_2_X_8                                  = int(z'82C0')
    integer(c_int), parameter, public :: GL_IMAGE_CLASS_1_X_8                                  = int(z'82C1')
    integer(c_int), parameter, public :: GL_IMAGE_CLASS_11_11_10                               = int(z'82C2')
    integer(c_int), parameter, public :: GL_IMAGE_CLASS_10_10_10_2                             = int(z'82C3')
    integer(c_int), parameter, public :: GL_VIEW_CLASS_128_BITS                                = int(z'82C4')
    integer(c_int), parameter, public :: GL_VIEW_CLASS_96_BITS                                 = int(z'82C5')
    integer(c_int), parameter, public :: GL_VIEW_CLASS_64_BITS                                 = int(z'82C6')
    integer(c_int), parameter, public :: GL_VIEW_CLASS_48_BITS                                 = int(z'82C7')
    integer(c_int), parameter, public :: GL_VIEW_CLASS_32_BITS                                 = int(z'82C8')
    integer(c_int), parameter, public :: GL_VIEW_CLASS_24_BITS                                 = int(z'82C9')
    integer(c_int), parameter, public :: GL_VIEW_CLASS_16_BITS                                 = int(z'82CA')
    integer(c_int), parameter, public :: GL_VIEW_CLASS_8_BITS                                  = int(z'82CB')
    integer(c_int), parameter, public :: GL_VIEW_CLASS_S3TC_DXT1_RGB                           = int(z'82CC')
    integer(c_int), parameter, public :: GL_VIEW_CLASS_S3TC_DXT1_RGBA                          = int(z'82CD')
    integer(c_int), parameter, public :: GL_VIEW_CLASS_S3TC_DXT3_RGBA                          = int(z'82CE')
    integer(c_int), parameter, public :: GL_VIEW_CLASS_S3TC_DXT5_RGBA                          = int(z'82CF')
    integer(c_int), parameter, public :: GL_VIEW_CLASS_RGTC1_RED                               = int(z'82D0')
    integer(c_int), parameter, public :: GL_VIEW_CLASS_RGTC2_RG                                = int(z'82D1')
    integer(c_int), parameter, public :: GL_VIEW_CLASS_BPTC_UNORM                              = int(z'82D2')
    integer(c_int), parameter, public :: GL_VIEW_CLASS_BPTC_FLOAT                              = int(z'82D3')
    integer(c_int), parameter, public :: GL_UNIFORM                                            = int(z'92E1')
    integer(c_int), parameter, public :: GL_UNIFORM_BLOCK                                      = int(z'92E2')
    integer(c_int), parameter, public :: GL_PROGRAM_INPUT                                      = int(z'92E3')
    integer(c_int), parameter, public :: GL_PROGRAM_OUTPUT                                     = int(z'92E4')
    integer(c_int), parameter, public :: GL_BUFFER_VARIABLE                                    = int(z'92E5')
    integer(c_int), parameter, public :: GL_SHADER_STORAGE_BLOCK                               = int(z'92E6')
    integer(c_int), parameter, public :: GL_VERTEX_SUBROUTINE                                  = int(z'92E8')
    integer(c_int), parameter, public :: GL_TESS_CONTROL_SUBROUTINE                            = int(z'92E9')
    integer(c_int), parameter, public :: GL_TESS_EVALUATION_SUBROUTINE                         = int(z'92EA')
    integer(c_int), parameter, public :: GL_GEOMETRY_SUBROUTINE                                = int(z'92EB')
    integer(c_int), parameter, public :: GL_FRAGMENT_SUBROUTINE                                = int(z'92EC')
    integer(c_int), parameter, public :: GL_COMPUTE_SUBROUTINE                                 = int(z'92ED')
    integer(c_int), parameter, public :: GL_VERTEX_SUBROUTINE_UNIFORM                          = int(z'92EE')
    integer(c_int), parameter, public :: GL_TESS_CONTROL_SUBROUTINE_UNIFORM                    = int(z'92EF')
    integer(c_int), parameter, public :: GL_TESS_EVALUATION_SUBROUTINE_UNIFORM                 = int(z'92F0')
    integer(c_int), parameter, public :: GL_GEOMETRY_SUBROUTINE_UNIFORM                        = int(z'92F1')
    integer(c_int), parameter, public :: GL_FRAGMENT_SUBROUTINE_UNIFORM                        = int(z'92F2')
    integer(c_int), parameter, public :: GL_COMPUTE_SUBROUTINE_UNIFORM                         = int(z'92F3')
    integer(c_int), parameter, public :: GL_TRANSFORM_FEEDBACK_VARYING                         = int(z'92F4')
    integer(c_int), parameter, public :: GL_ACTIVE_RESOURCES                                   = int(z'92F5')
    integer(c_int), parameter, public :: GL_MAX_NAME_LENGTH                                    = int(z'92F6')
    integer(c_int), parameter, public :: GL_MAX_NUM_ACTIVE_VARIABLES                           = int(z'92F7')
    integer(c_int), parameter, public :: GL_MAX_NUM_COMPATIBLE_SUBROUTINES                     = int(z'92F8')
    integer(c_int), parameter, public :: GL_NAME_LENGTH                                        = int(z'92F9')
    integer(c_int), parameter, public :: GL_TYPE                                               = int(z'92FA')
    integer(c_int), parameter, public :: GL_ARRAY_SIZE                                         = int(z'92FB')
    integer(c_int), parameter, public :: GL_OFFSET                                             = int(z'92FC')
    integer(c_int), parameter, public :: GL_BLOCK_INDEX                                        = int(z'92FD')
    integer(c_int), parameter, public :: GL_ARRAY_STRIDE                                       = int(z'92FE')
    integer(c_int), parameter, public :: GL_MATRIX_STRIDE                                      = int(z'92FF')
    integer(c_int), parameter, public :: GL_IS_ROW_MAJOR                                       = int(z'9300')
    integer(c_int), parameter, public :: GL_ATOMIC_COUNTER_BUFFER_INDEX                        = int(z'9301')
    integer(c_int), parameter, public :: GL_BUFFER_BINDING                                     = int(z'9302')
    integer(c_int), parameter, public :: GL_BUFFER_DATA_SIZE                                   = int(z'9303')
    integer(c_int), parameter, public :: GL_NUM_ACTIVE_VARIABLES                               = int(z'9304')
    integer(c_int), parameter, public :: GL_ACTIVE_VARIABLES                                   = int(z'9305')
    integer(c_int), parameter, public :: GL_REFERENCED_BY_VERTEX_SHADER                        = int(z'9306')
    integer(c_int), parameter, public :: GL_REFERENCED_BY_TESS_CONTROL_SHADER                  = int(z'9307')
    integer(c_int), parameter, public :: GL_REFERENCED_BY_TESS_EVALUATION_SHADER               = int(z'9308')
    integer(c_int), parameter, public :: GL_REFERENCED_BY_GEOMETRY_SHADER                      = int(z'9309')
    integer(c_int), parameter, public :: GL_REFERENCED_BY_FRAGMENT_SHADER                      = int(z'930A')
    integer(c_int), parameter, public :: GL_REFERENCED_BY_COMPUTE_SHADER                       = int(z'930B')
    integer(c_int), parameter, public :: GL_TOP_LEVEL_ARRAY_SIZE                               = int(z'930C')
    integer(c_int), parameter, public :: GL_TOP_LEVEL_ARRAY_STRIDE                             = int(z'930D')
    integer(c_int), parameter, public :: GL_LOCATION                                           = int(z'930E')
    integer(c_int), parameter, public :: GL_LOCATION_INDEX                                     = int(z'930F')
    integer(c_int), parameter, public :: GL_IS_PER_PATCH                                       = int(z'92E7')
    integer(c_int), parameter, public :: GL_SHADER_STORAGE_BUFFER                              = int(z'90D2')
    integer(c_int), parameter, public :: GL_SHADER_STORAGE_BUFFER_BINDING                      = int(z'90D3')
    integer(c_int), parameter, public :: GL_SHADER_STORAGE_BUFFER_START                        = int(z'90D4')
    integer(c_int), parameter, public :: GL_SHADER_STORAGE_BUFFER_SIZE                         = int(z'90D5')
    integer(c_int), parameter, public :: GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS                   = int(z'90D6')
    integer(c_int), parameter, public :: GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS                 = int(z'90D7')
    integer(c_int), parameter, public :: GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS             = int(z'90D8')
    integer(c_int), parameter, public :: GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS          = int(z'90D9')
    integer(c_int), parameter, public :: GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS                 = int(z'90DA')
    integer(c_int), parameter, public :: GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS                  = int(z'90DB')
    integer(c_int), parameter, public :: GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS                 = int(z'90DC')
    integer(c_int), parameter, public :: GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS                 = int(z'90DD')
    integer(c_int), parameter, public :: GL_MAX_SHADER_STORAGE_BLOCK_SIZE                      = int(z'90DE')
    integer(c_int), parameter, public :: GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT             = int(z'90DF')
    integer(c_int), parameter, public :: GL_SHADER_STORAGE_BARRIER_BIT                         = int(z'00002000')
    integer(c_int), parameter, public :: GL_MAX_COMBINED_SHADER_OUTPUT_RESOURCES               = int(z'8F39')
    integer(c_int), parameter, public :: GL_DEPTH_STENCIL_TEXTURE_MODE                         = int(z'90EA')
    integer(c_int), parameter, public :: GL_TEXTURE_BUFFER_OFFSET                              = int(z'919D')
    integer(c_int), parameter, public :: GL_TEXTURE_BUFFER_SIZE                                = int(z'919E')
    integer(c_int), parameter, public :: GL_TEXTURE_BUFFER_OFFSET_ALIGNMENT                    = int(z'919F')
    integer(c_int), parameter, public :: GL_TEXTURE_VIEW_MIN_LEVEL                             = int(z'82DB')
    integer(c_int), parameter, public :: GL_TEXTURE_VIEW_NUM_LEVELS                            = int(z'82DC')
    integer(c_int), parameter, public :: GL_TEXTURE_VIEW_MIN_LAYER                             = int(z'82DD')
    integer(c_int), parameter, public :: GL_TEXTURE_VIEW_NUM_LAYERS                            = int(z'82DE')
    integer(c_int), parameter, public :: GL_TEXTURE_IMMUTABLE_LEVELS                           = int(z'82DF')
    integer(c_int), parameter, public :: GL_VERTEX_ATTRIB_BINDING                              = int(z'82D4')
    integer(c_int), parameter, public :: GL_VERTEX_ATTRIB_RELATIVE_OFFSET                      = int(z'82D5')
    integer(c_int), parameter, public :: GL_VERTEX_BINDING_DIVISOR                             = int(z'82D6')
    integer(c_int), parameter, public :: GL_VERTEX_BINDING_OFFSET                              = int(z'82D7')
    integer(c_int), parameter, public :: GL_VERTEX_BINDING_STRIDE                              = int(z'82D8')
    integer(c_int), parameter, public :: GL_MAX_VERTEX_ATTRIB_RELATIVE_OFFSET                  = int(z'82D9')
    integer(c_int), parameter, public :: GL_MAX_VERTEX_ATTRIB_BINDINGS                         = int(z'82DA')
    integer(c_int), parameter, public :: GL_VERTEX_BINDING_BUFFER                              = int(z'8F4F')
    integer(c_int), parameter, public :: GL_DISPLAY_LIST                                       = int(z'82E7')

    ! OpenGL 4.4
    integer(c_int), parameter, public :: GL_MAX_VERTEX_ATTRIB_STRIDE                = int(z'82E5')
    integer(c_int), parameter, public :: GL_PRIMITIVE_RESTART_FOR_PATCHES_SUPPORTED = int(z'8221')
    integer(c_int), parameter, public :: GL_TEXTURE_BUFFER_BINDING                  = int(z'8C2A')
    integer(c_int), parameter, public :: GL_MAP_PERSISTENT_BIT                      = int(z'0040')
    integer(c_int), parameter, public :: GL_MAP_COHERENT_BIT                        = int(z'0080')
    integer(c_int), parameter, public :: GL_DYNAMIC_STORAGE_BIT                     = int(z'0100')
    integer(c_int), parameter, public :: GL_CLIENT_STORAGE_BIT                      = int(z'0200')
    integer(c_int), parameter, public :: GL_CLIENT_MAPPED_BUFFER_BARRIER_BIT        = int(z'00004000')
    integer(c_int), parameter, public :: GL_BUFFER_IMMUTABLE_STORAGE                = int(z'821F')
    integer(c_int), parameter, public :: GL_BUFFER_STORAGE_FLAGS                    = int(z'8220')
    integer(c_int), parameter, public :: GL_CLEAR_TEXTURE                           = int(z'9365')
    integer(c_int), parameter, public :: GL_LOCATION_COMPONENT                      = int(z'934A')
    integer(c_int), parameter, public :: GL_TRANSFORM_FEEDBACK_BUFFER_INDEX         = int(z'934B')
    integer(c_int), parameter, public :: GL_TRANSFORM_FEEDBACK_BUFFER_STRIDE        = int(z'934C')
    integer(c_int), parameter, public :: GL_QUERY_BUFFER                            = int(z'9192')
    integer(c_int), parameter, public :: GL_QUERY_BUFFER_BARRIER_BIT                = int(z'00008000')
    integer(c_int), parameter, public :: GL_QUERY_BUFFER_BINDING                    = int(z'9193')
    integer(c_int), parameter, public :: GL_QUERY_RESULT_NO_WAIT                    = int(z'9194')
    integer(c_int), parameter, public :: GL_MIRROR_CLAMP_TO_EDGE                    = int(z'8743')

    ! OpenGL 4.5
    integer(c_int), parameter, public :: GL_CONTEXT_LOST                         = int(z'0507')
    integer(c_int), parameter, public :: GL_NEGATIVE_ONE_TO_ONE                  = int(z'935E')
    integer(c_int), parameter, public :: GL_ZERO_TO_ONE                          = int(z'935F')
    integer(c_int), parameter, public :: GL_CLIP_ORIGIN                          = int(z'935C')
    integer(c_int), parameter, public :: GL_CLIP_DEPTH_MODE                      = int(z'935D')
    integer(c_int), parameter, public :: GL_QUERY_WAIT_INVERTED                  = int(z'8E17')
    integer(c_int), parameter, public :: GL_QUERY_NO_WAIT_INVERTED               = int(z'8E18')
    integer(c_int), parameter, public :: GL_QUERY_BY_REGION_WAIT_INVERTED        = int(z'8E19')
    integer(c_int), parameter, public :: GL_QUERY_BY_REGION_NO_WAIT_INVERTED     = int(z'8E1A')
    integer(c_int), parameter, public :: GL_MAX_CULL_DISTANCES                   = int(z'82F9')
    integer(c_int), parameter, public :: GL_MAX_COMBINED_CLIP_AND_CULL_DISTANCES = int(z'82FA')
    integer(c_int), parameter, public :: GL_TEXTURE_TARGET                       = int(z'1006')
    integer(c_int), parameter, public :: GL_QUERY_TARGET                         = int(z'82EA')
    integer(c_int), parameter, public :: GL_GUILTY_CONTEXT_RESET                 = int(z'8253')
    integer(c_int), parameter, public :: GL_INNOCENT_CONTEXT_RESET               = int(z'8254')
    integer(c_int), parameter, public :: GL_UNKNOWN_CONTEXT_RESET                = int(z'8255')
    integer(c_int), parameter, public :: GL_RESET_NOTIFICATION_STRATEGY          = int(z'8256')
    integer(c_int), parameter, public :: GL_LOSE_CONTEXT_ON_RESET                = int(z'8252')
    integer(c_int), parameter, public :: GL_NO_RESET_NOTIFICATION                = int(z'8261')
    integer(c_int), parameter, public :: GL_CONTEXT_FLAG_ROBUST_ACCESS_BIT       = int(z'00000004')
    integer(c_int), parameter, public :: GL_COLOR_TABLE                          = int(z'80D0')
    integer(c_int), parameter, public :: GL_POST_CONVOLUTION_COLOR_TABLE         = int(z'80D1')
    integer(c_int), parameter, public :: GL_POST_COLOR_MATRIX_COLOR_TABLE        = int(z'80D2')
    integer(c_int), parameter, public :: GL_PROXY_COLOR_TABLE                    = int(z'80D3')
    integer(c_int), parameter, public :: GL_PROXY_POST_CONVOLUTION_COLOR_TABLE   = int(z'80D4')
    integer(c_int), parameter, public :: GL_PROXY_POST_COLOR_MATRIX_COLOR_TABLE  = int(z'80D5')
    integer(c_int), parameter, public :: GL_CONVOLUTION_1D                       = int(z'8010')
    integer(c_int), parameter, public :: GL_CONVOLUTION_2D                       = int(z'8011')
    integer(c_int), parameter, public :: GL_SEPARABLE_2D                         = int(z'8012')
    integer(c_int), parameter, public :: GL_HISTOGRAM                            = int(z'8024')
    integer(c_int), parameter, public :: GL_PROXY_HISTOGRAM                      = int(z'8025')
    integer(c_int), parameter, public :: GL_MINMAX                               = int(z'802E')
    integer(c_int), parameter, public :: GL_CONTEXT_RELEASE_BEHAVIOR             = int(z'82FB')
    integer(c_int), parameter, public :: GL_CONTEXT_RELEASE_BEHAVIOR_FLUSH       = int(z'82FC')

    ! OpenGL 4.6
    integer(c_int), parameter, public :: GL_SHADER_BINARY_FORMAT_SPIR_V        = int(z'9551')
    integer(c_int), parameter, public :: GL_SPIR_V_BINARY                      = int(z'9552')
    integer(c_int), parameter, public :: GL_PARAMETER_BUFFER                   = int(z'80EE')
    integer(c_int), parameter, public :: GL_PARAMETER_BUFFER_BINDING           = int(z'80EF')
    integer(c_int), parameter, public :: GL_CONTEXT_FLAG_NO_ERROR_BIT          = int(z'00000008')
    integer(c_int), parameter, public :: GL_VERTICES_SUBMITTED                 = int(z'82EE')
    integer(c_int), parameter, public :: GL_PRIMITIVES_SUBMITTED               = int(z'82EF')
    integer(c_int), parameter, public :: GL_VERTEX_SHADER_INVOCATIONS          = int(z'82F0')
    integer(c_int), parameter, public :: GL_TESS_CONTROL_SHADER_PATCHES        = int(z'82F1')
    integer(c_int), parameter, public :: GL_TESS_EVALUATION_SHADER_INVOCATIONS = int(z'82F2')
    integer(c_int), parameter, public :: GL_GEOMETRY_SHADER_PRIMITIVES_EMITTED = int(z'82F3')
    integer(c_int), parameter, public :: GL_FRAGMENT_SHADER_INVOCATIONS        = int(z'82F4')
    integer(c_int), parameter, public :: GL_COMPUTE_SHADER_INVOCATIONS         = int(z'82F5')
    integer(c_int), parameter, public :: GL_CLIPPING_INPUT_PRIMITIVES          = int(z'82F6')
    integer(c_int), parameter, public :: GL_CLIPPING_OUTPUT_PRIMITIVES         = int(z'82F7')
    integer(c_int), parameter, public :: GL_POLYGON_OFFSET_CLAMP               = int(z'8E1B')
    integer(c_int), parameter, public :: GL_SPIR_V_EXTENSIONS                  = int(z'9553')
    integer(c_int), parameter, public :: GL_NUM_SPIR_V_EXTENSIONS              = int(z'9554')
    integer(c_int), parameter, public :: GL_TEXTURE_MAX_ANISOTROPY             = int(z'84FE')
    integer(c_int), parameter, public :: GL_MAX_TEXTURE_MAX_ANISOTROPY         = int(z'84FF')
    integer(c_int), parameter, public :: GL_TRANSFORM_FEEDBACK_OVERFLOW        = int(z'82EC')
    integer(c_int), parameter, public :: GL_TRANSFORM_FEEDBACK_STREAM_OVERFLOW = int(z'82ED')

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
    public :: glGetString_
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
            integer(GLboolean)                    :: glAreTexturesResident
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
            integer(GLboolean), intent(in), value :: red
            integer(GLboolean), intent(in), value :: green
            integer(GLboolean), intent(in), value :: blue
            integer(GLboolean), intent(in), value :: alpha
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
            integer(GLboolean), intent(in), value :: flag
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
            integer(GLboolean), intent(in), value :: flag
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
            integer(GLboolean), intent(in), value :: reset
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
            integer(GLboolean), intent(in), value :: reset
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
        function glGetString_(name) bind(c, name='glGetString')
            import :: GLenum, c_ptr
            implicit none
            integer(GLenum),  intent(in), value :: name
            type(c_ptr)                         :: glGetString_
        end function glGetString_

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
            integer(GLboolean), intent(in), value :: sink
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
            integer(GLboolean)                 :: glIsEnabled
        end function glIsEnabled

        ! GLboolean glIsList(GLuint list)
        function glIsList(list) bind(c, name='glIsList')
            import :: GLboolean, GLuint
            implicit none
            integer(GLuint), intent(in), value :: list
            integer(GLboolean)                 :: glIsList
        end function glIsList

        ! GLboolean glIsTexture(GLuint texture)
        function glIsTexture(texture) bind(c, name='glIsTexture')
            import :: GLboolean, GLuint
            implicit none
            integer(GLuint), intent(in), value :: texture
            integer(GLboolean)                 :: glIsTexture
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
            integer(GLboolean), intent(in), value :: sink
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
            integer(GLboolean), intent(in), value :: invert
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

    public :: glGetString
contains
    function glGetString(name) result(str)
        integer(GLenum),  intent(in) :: name
        character(:), allocatable    :: str

        type(c_ptr) :: ptr

        ptr = glGetString_(name)
        call c_f_str_ptr(ptr, str)
    end function glGetString
end module sdl3_opengl
