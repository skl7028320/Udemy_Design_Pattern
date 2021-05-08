// A component which is instantiated only once

#include <iostream>
#include <functional>

using namespace std;

class Singleton {
    Singleton() {};

    Singleton(Singleton const &other) = default;

    Singleton &operator=(Singleton const &other) = delete;

public:
    static Singleton &get_instance() {
        static Singleton singleton;

        return singleton;
    }
};

struct SingletonTester {
    template<typename T>
    bool is_singleton(function<T *()> factory) {
        T *_1 = factory();
        T *_2 = factory();

        return _1 == _2;
    }
};

int main() {
    return 0;
}
