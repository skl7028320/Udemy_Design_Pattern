// A pattern in which the object's behavior is determined by its state. An object transitions from one state to another
// (something needs to trigger a transition).
// A formalized construct which manages state and transitions is called a state machine.

#include <iostream>
#include <vector>
#include <string>

using namespace std;

class CombinationLock {
    vector<int> combination;
    int digits_entered{0};
    bool failed{false};

    void reset() {
        status = "LOCKED";
        digits_entered = 0;
        failed = false;
    }

public:
    string status;

    CombinationLock(const vector<int> &combination) : combination(combination) {
        reset();
    }

    void enter_digit(int digit) {
        if (status == "LOCKED") status = "";
        status += to_string(digit);
        if (combination[digits_entered] != digit) {
            failed = true;
        }
        digits_entered++;

        if (digits_entered == combination.size())
            status = failed ? "ERROR" : "OPEN";
    }

    friend ostream &operator<<(ostream &os, const CombinationLock &lock) {
        os << "status: " << lock.status;
        return os;
    }
};

int main() {
    CombinationLock cl{{1, 2, 3}};
    cout << cl << endl;

    cl.enter_digit(1);
    cout << cl << endl;

    cl.enter_digit(2);
    cout << cl << endl;

    cl.enter_digit(3);
    cout << cl << endl;

    return 0;
}
