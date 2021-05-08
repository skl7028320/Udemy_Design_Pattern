// A mechanism that decouples an interface (hierarchy) from an implementation

#include <iostream>
#include <sstream>
#include <string>

using namespace std;

struct Renderer {
    virtual string what_to_render_as() const = 0;
};

struct RasterRenderer : Renderer {
    string what_to_render_as() const override {
        return "pixels";
    }
};

struct VectorRenderer : Renderer {
    string what_to_render_as() const override {
        return "lines";
    }
};

struct Shape {
    string name;
    const Renderer &renderer;

    Shape(const Renderer &renderer) : renderer(renderer) {}

    string str() const {
        ostringstream oss;
        oss << "Drawing " << name << " as " << renderer.what_to_render_as();

        return oss.str();
    }
};

struct Triangle : Shape {
    Triangle(const Renderer &renderer) : Shape(renderer) {
        name = "Triangle";
    }
};

struct Square : Shape {
    Square(const Renderer &renderer) : Shape(renderer) {
        name = "Square";
    }
};

int main() {
    cout << Triangle(RasterRenderer()).str() << endl;
    cout << Square(VectorRenderer()).str() << endl;

    return 0;
}
