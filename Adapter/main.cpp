// A construct which adapts an existing interface X to confirm to the required interface Y

#include <iostream>

using namespace std;

struct Square {
    int side{0};


    explicit Square(const int side)
            : side(side) {
    }
};

struct Rectangle {
    virtual int width() const = 0;

    virtual int height() const = 0;

    int area() const {
        return width() * height();
    }
};

struct SquareToRectangleAdapter : Rectangle {
    SquareToRectangleAdapter(const Square &square) : square_(square) {}

    int width() const override {
        return square_.side;
    }

    int height() const override {
        return square_.side;
    }

private:
    const Square &square_;
};

int main() {
    Square square{3};

    SquareToRectangleAdapter rectangle{square};

    cout << "Size of rectangle is " << rectangle.area() << endl;

    return 0;
}
