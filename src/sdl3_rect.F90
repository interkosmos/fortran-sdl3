! Author:  Philipp Engel
! Licence: ISC
module sdl3_rect
    use :: sdl3_stdinc
    implicit none (type, external)
    private

    ! struct SDL_Point
    type, bind(c), public :: sdl_point
        integer(c_int) :: x = 0
        integer(c_int) :: y = 0
    end type sdl_point

    ! struct SDL_FPoint
    type, bind(c), public :: sdl_fpoint
        real(c_float) :: x = 0.0
        real(c_float) :: y = 0.0
    end type sdl_fpoint

    ! struct SDL_Rect
    type, bind(c), public :: sdl_rect
        integer(c_int) :: x = 0
        integer(c_int) :: y = 0
        integer(c_int) :: w = 0
        integer(c_int) :: h = 0
    end type sdl_rect

    ! struct SDL_FRect
    type, bind(c), public :: sdl_frect
        real(c_float) :: x = 0.0
        real(c_float) :: y = 0.0
        real(c_float) :: w = 0.0
        real(c_float) :: h = 0.0
    end type sdl_frect

    public :: sdl_get_rect_and_line_intersection
    public :: sdl_get_rect_and_line_intersection_float
    public :: sdl_get_rect_enclosing_points
    public :: sdl_get_rect_enclosing_points_float
    public :: sdl_get_rect_intersection
    public :: sdl_get_rect_intersection_float
    public :: sdl_get_rect_union
    public :: sdl_get_rect_union_float
    public :: sdl_has_rect_intersection
    public :: sdl_has_rect_intersection_float

    interface
        ! bool SDL_GetRectAndLineIntersection(const SDL_Rect *rect, int *X1, int *Y1, int *X2, int *Y2)
        function sdl_get_rect_and_line_intersection(rect, x1, y1, x2, y2) bind(c, name='SDL_GetRectAndLineIntersection')
            import :: c_bool, c_int, sdl_rect
            implicit none
            type(sdl_rect), intent(in)  :: rect
            integer(c_int), intent(out) :: x1
            integer(c_int), intent(out) :: y1
            integer(c_int), intent(out) :: x2
            integer(c_int), intent(out) :: y2
            logical(c_bool)             :: sdl_get_rect_and_line_intersection
        end function sdl_get_rect_and_line_intersection

        ! bool SDL_GetRectAndLineIntersectionFloat(const SDL_FRect *rect, float *X1, float *Y1, float *X2, float *Y2)
        function sdl_get_rect_and_line_intersection_float(rect, x1, y1, x2, y2) bind(c, name='SDL_GetRectAndLineIntersectionFloat')
            import :: c_bool, c_float, sdl_frect
            implicit none
            type(sdl_frect), intent(in)  :: rect
            real(c_float),   intent(out) :: x1
            real(c_float),   intent(out) :: y1
            real(c_float),   intent(out) :: x2
            real(c_float),   intent(out) :: y2
            logical(c_bool)              :: sdl_get_rect_and_line_intersection_float
        end function sdl_get_rect_and_line_intersection_float

        ! bool SDL_GetRectEnclosingPoints(const SDL_Point *points, int count, const SDL_Rect *clip, SDL_Rect *result)
        function sdl_get_rect_enclosing_points(points, count, clip, result) bind(c, name='SDL_GetRectEnclosingPoints')
            import :: c_bool, c_int, sdl_point, sdl_rect
            implicit none
            type(sdl_point), intent(in)        :: points
            integer(c_int),  intent(in), value :: count
            type(sdl_rect),  intent(in)        :: clip
            type(sdl_rect),  intent(out)       :: result
            logical(c_bool)                    :: sdl_get_rect_enclosing_points
        end function sdl_get_rect_enclosing_points

        ! bool SDL_GetRectEnclosingPointsFloat(const SDL_FPoint *points, int count, const SDL_FRect *clip, SDL_FRect *result)
        function sdl_get_rect_enclosing_points_float(points, count, clip, result) bind(c, name='SDL_GetRectEnclosingPointsFloat')
            import :: c_bool, c_int, sdl_fpoint, sdl_frect
            implicit none
            type(sdl_fpoint), intent(in)        :: points
            integer(c_int),   intent(in), value :: count
            type(sdl_frect),  intent(in)        :: clip
            type(sdl_frect),  intent(out)       :: result
            logical(c_bool)                     :: sdl_get_rect_enclosing_points_float
        end function sdl_get_rect_enclosing_points_float

        ! bool SDL_GetRectIntersection(const SDL_Rect *A, const SDL_Rect *B, SDL_Rect *result)
        function sdl_get_rect_intersection(a, b, result) bind(c, name='SDL_GetRectIntersection')
            import :: c_bool, sdl_rect
            implicit none
            type(sdl_rect), intent(in)  :: a
            type(sdl_rect), intent(in)  :: b
            type(sdl_rect), intent(out) :: result
            logical(c_bool)             :: sdl_get_rect_intersection
        end function sdl_get_rect_intersection

        ! bool SDL_GetRectIntersectionFloat(const SDL_FRect *A, const SDL_FRect *B, SDL_FRect *result)
        function sdl_get_rect_intersection_float(a, b, result) bind(c, name='SDL_GetRectIntersectionFloat')
            import :: c_bool, sdl_frect
            implicit none
            type(sdl_frect), intent(in)  :: a
            type(sdl_frect), intent(in)  :: b
            type(sdl_frect), intent(out) :: result
            logical(c_bool)              :: sdl_get_rect_intersection_float
        end function sdl_get_rect_intersection_float

        ! bool SDL_GetRectUnion(const SDL_Rect *A, const SDL_Rect *B, SDL_Rect *result)
        function sdl_get_rect_union(a, b, result) bind(c, name='SDL_GetRectUnion')
            import :: c_bool, sdl_rect
            implicit none
            type(sdl_rect), intent(in)  :: a
            type(sdl_rect), intent(in)  :: b
            type(sdl_rect), intent(out) :: result
            logical(c_bool)             :: sdl_get_rect_union
        end function sdl_get_rect_union

        ! bool SDL_GetRectUnionFloat(const SDL_FRect *A, const SDL_FRect *B, SDL_FRect *result)
        function sdl_get_rect_union_float(a, b, result) bind(c, name='SDL_GetRectUnionFloat')
            import :: c_bool, sdl_frect
            implicit none
            type(sdl_frect), intent(in)  :: a
            type(sdl_frect), intent(in)  :: b
            type(sdl_frect), intent(out) :: result
            logical(c_bool)              :: sdl_get_rect_union_float
        end function sdl_get_rect_union_float

        ! bool SDL_HasRectIntersection(const SDL_Rect *A, const SDL_Rect *B)
        function sdl_has_rect_intersection(a, b) bind(c, name='SDL_HasRectIntersection')
            import :: c_bool, sdl_rect
            implicit none
            type(sdl_rect), intent(in) :: a
            type(sdl_rect), intent(in) :: b
            logical(c_bool)            :: sdl_has_rect_intersection
        end function sdl_has_rect_intersection

        ! bool SDL_HasRectIntersectionFloat(const SDL_FRect *A, const SDL_FRect *B)
        function sdl_has_rect_intersection_float(a, b) bind(c, name='SDL_HasRectIntersectionFloat')
            import :: c_bool, sdl_frect
            implicit none
            type(sdl_frect), intent(in) :: a
            type(sdl_frect), intent(in) :: b
            logical(c_bool)             :: sdl_has_rect_intersection_float
        end function sdl_has_rect_intersection_float
    end interface

    public :: sdl_point_in_rect
    public :: sdl_point_in_rect_float
    public :: sdl_rect_empty
    public :: sdl_rect_empty_float
    public :: sdl_rect_to_frect
    public :: sdl_rects_equal
    public :: sdl_rects_equal_epsilon
    public :: sdl_rects_equal_float
contains
    ! bool SDL_PointInRect(const SDL_Point *p, const SDL_Rect *r)
    pure elemental function sdl_point_in_rect(p, r) result(l)
        type(sdl_point), intent(in) :: p
        type(sdl_rect),  intent(in) :: r
        logical                     :: l

        l = ((p%x >= r%x) .and. (p%x < (r%x + r%w)) .and. (p%y >= r%y) .and. (p%y < (r%y + r%h)))
    end function sdl_point_in_rect

    ! bool SDL_PointInRectFloat(const SDL_FPoint *p, const SDL_FRect *r
    pure elemental function sdl_point_in_rect_float(p, r) result(l)
        type(sdl_fpoint), intent(in) :: p
        type(sdl_frect),  intent(in) :: r
        logical                      :: l

        l = (p%x >= r%x .and. p%x <= (r%x + r%w) .and. p%y >= r%y .and. p%y <= (r%y + r%h))
    end function sdl_point_in_rect_float

    ! bool SDL_RectEmpty(const SDL_Rect *r)
    pure elemental function sdl_rect_empty(r) result(l)
        type(sdl_rect),  intent(in) :: r
        logical                     :: l

        l = ((r%w <= 0) .or. (r%h <= 0))
    end function sdl_rect_empty

    ! bool SDL_RectEmptyFloat(const SDL_FRect *r
    pure elemental function sdl_rect_empty_float(r) result(l)
        type(sdl_frect), intent(in) :: r
        logical                     :: l

        l = (r%w < 0.0 .or. r%h < 0.0)
    end function sdl_rect_empty_float

    ! void SDL_RectToFRect(const SDL_Rect *rect, SDL_FRect *frect)
    pure elemental subroutine sdl_rect_to_frect(rect, frect)
        type(sdl_rect),  intent(in)  :: rect
        type(sdl_frect), intent(out) :: frect

        frect%x = real(rect%x, c_float)
        frect%y = real(rect%y, c_float)
        frect%w = real(rect%w, c_float)
        frect%h = real(rect%h, c_float)
    end subroutine sdl_rect_to_frect

    ! bool SDL_RectsEqual(const SDL_Rect *a, const SDL_Rect *b)
    pure elemental function sdl_rects_equal(a, b) result(l)
        type(sdl_rect),  intent(in) :: a
        type(sdl_rect),  intent(in) :: b
        logical                     :: l

        l = ((a%x == b%x) .and. (a%y == b%y) .and. (a%w == b%w) .and. (a%h == b%h))
    end function sdl_rects_equal

    ! bool SDL_RectsEqualEpsilon(const SDL_FRect *a, const SDL_FRect *b, float epsilon)
    pure elemental function sdl_rects_equal_epsilon(a, b, epsilon) result(l)
        type(sdl_frect), intent(in) :: a
        type(sdl_frect), intent(in) :: b
        real,            intent(in) :: epsilon
        logical                     :: l

        l = ((abs(a%x - b%x) <= epsilon) .and. &
             (abs(a%y - b%y) <= epsilon) .and. &
             (abs(a%w - b%w) <= epsilon) .and. &
             (abs(a%h - b%h) <= epsilon))
    end function sdl_rects_equal_epsilon

    ! bool SDL_RectsEqualFloat(const SDL_FRect *a, const SDL_FRect *b)
    pure elemental function sdl_rects_equal_float(a, b) result(l)
        type(sdl_frect), intent(in) :: a
        type(sdl_frect), intent(in) :: b
        logical                     :: l

        l = sdl_rects_equal_epsilon(a, b, SDL_FLT_EPSILON)
    end function sdl_rects_equal_float
end module sdl3_rect
