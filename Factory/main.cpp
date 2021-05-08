// A component responsible solely for the wholesale (not piecewise) creation of objects

#include <string>
#include <iostream>

using namespace std;

struct Person {
    int id;
    string name;

    Person(int id, const string &name) : id(id), name(name) {}

    friend ostream &operator<<(ostream &os, const Person &person) {
        os << "id: " << person.id << " name: " << person.name;
        return os;
    }
};

class PersonFactory {
    static int count;

public:
    Person create_person(const string &name) {
        auto person = Person(count, name);

        count++;

        return person;
    }
};

int PersonFactory::count = 0;

int main() {
    PersonFactory person_factory1;

    Person p1 = person_factory1.create_person("Wali");
    Person p2 = person_factory1.create_person("Eva");

    PersonFactory person_factory2;

    Person p3 = person_factory2.create_person("Bob");

    cout << p1 << "\n" << p2 << "\n" << p3;

    return 0;
}
