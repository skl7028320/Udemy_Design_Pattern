// Facilitates the addition of behaviours to individual objects

#include <string>
#include <sstream>
#include <iostream>

using namespace std;

struct Flower {
    virtual string str() = 0;
};

struct Rose : Flower {
    string str() override {
        return "A rose";
    }
};

struct RedFlower : Flower {
    Flower &flower;

    explicit RedFlower(Flower &flower) : flower(flower) {}

    string str() override {
        string s = flower.str();
        if (s.find("red") != string::npos) return s;
        else if (s.find("blue") != string::npos) {
            return s + " and red";
        } else return s + " that is red";
    }
};

struct BlueFlower : Flower {
    Flower &flower;

    explicit BlueFlower(Flower &flower) : flower(flower) {}

    string str() override {
        string s = flower.str();
        if (s.find("blue") != string::npos) return s;
        else if (s.find("red") != string::npos) {
            return s + " and blue";
        } else return s + " that is blue";
    }
};

int main() {
    Rose rose;
    RedFlower red_rose{rose};
    RedFlower red_red_rose{red_rose};
    BlueFlower blue_red_flower{red_rose};

    cout << rose.str() << endl;
    cout << red_rose.str() << endl;
    cout << red_red_rose.str() << endl;
    cout << blue_red_flower.str() << endl;

    return 0;
}
