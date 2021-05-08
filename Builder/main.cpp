// When picecewise object construction is complicated, provide an API for doing it succinctly

#include <string>
#include <iostream>
#include <vector>

using namespace std;

struct Field {
    string name, type;

    Field(const string &name, const string &type) : name(name), type(type) {}

    friend ostream &operator<<(ostream &os, const Field &field) {
        return os << field.type << " " << field.name << ";";
    }
};

struct Class {
    string name;
    vector<Field> fields;

    Class(const string &name) : name(name) {}

    friend ostream &operator<<(ostream &os, const Class &class_object) {
        os << "class " << class_object.name << "\n{\n";
        for (auto &e : class_object.fields) {
            os << "  " << e << "\n";
        }
        return os << "};";
    }
};

class CodeBuilder {
    Class class_;

public:
    CodeBuilder(const string &class_name) : class_(Class(class_name)) {
    }

    CodeBuilder &add_field(const string &name, const string &type) {
        class_.fields.push_back(Field(name, type));

        return *this;
    }

    friend ostream &operator<<(ostream &os, const CodeBuilder &obj) {
        return os << obj.class_ << "\n";
    }
};

int main(int argc, char **argv) {
    auto code_builder = CodeBuilder("Person").add_field("name", "string").add_field("age", "int");
    cout << code_builder;

    return 0;
}