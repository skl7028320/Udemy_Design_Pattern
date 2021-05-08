// A mechanism for treating individual (scalar) objects and compositions of objects in a uniform manner

#include "exercise.h"

int main() {
    SingleValue v1{3};
    ManyValues v2;
    v2.add(1);
    v2.add(2);

    vector<ContainsIntegers *> items;
    items.push_back(&v1);
    items.push_back(&v2);

    cout << sum(items) << endl;

    return 0;
}
