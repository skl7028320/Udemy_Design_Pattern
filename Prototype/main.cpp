// A partially or fully initialized object that you copy (clone) and make use of

#include <iostream>

struct Point {
    int x{0}, y{0};

    Point() {}

    Point(const int x, const int y) : x{x}, y{y} {}
};

struct Line {
    Point *start, *end;

    Line(Point *const start, Point *const end)
            : start(start), end(end) {
    }

    ~Line() {
        delete start;
        delete end;
    }

    Line deep_copy() const {
        Point *copied_start = new Point(start->x, start->y);
        Point *copied_end = new Point(end->x, end->y);

        return Line(copied_start, copied_end);
    }
};

int main() {
    Line prototype_line{new Point(0, 0), new Point(1, 1)};

    Line line = prototype_line.deep_copy();
}
