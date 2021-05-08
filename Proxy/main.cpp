// A class that functions as an interface to a particular resource. That resource may be remote, expensive to construct
// or may require logging or some other added functionality

#include <iostream>
#include <string>

using namespace std;

class Person {
    friend class ResponsiblePerson;

    int age;
public:
    Person(int age) : age(age) {}

    int get_age() const { return age; }

    void set_age(int age) { this->age = age; }

    string drink() const { return "drinking"; }

    string drive() const { return "driving"; }

    string drink_and_drive() const { return "driving while drunk"; }
};

class ResponsiblePerson {
public:
    ResponsiblePerson(const Person &person) : person(person) {}

    int get_age() const { return person.age; }

    void set_age(int age) { person.age = age; }

    string drink() const {
        if (person.get_age() >= 18)
            return person.drink();
        else
            return "too young";
    }

    string drive() const {
        if (person.get_age() >= 16)
            return person.drive();
        else
            return "too young";
    }

    string drink_and_drive() const {
        return "dead";
    }

private:
    Person person;
};

int main() {
    Person person{17};

    ResponsiblePerson responsible_person{person};

    cout << responsible_person.drink() << endl;
    cout << responsible_person.drive() << endl;
    cout << responsible_person.drink_and_drive() << endl;

    return 0;
}
