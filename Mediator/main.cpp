// A component that facilitates communication between other components without them necessarily being aware of each
// other or having direct (reference) access to each other

#include <iostream>
#include <vector>

using namespace std;

struct IParticipant {
    virtual void notify(IParticipant *sender, int value) = 0;
};

struct Mediator {
    vector<IParticipant *> participants;

    void say(IParticipant *sender, int value) {
        for (auto p : participants) {
            p->notify(sender, value);
        }
    }
};

struct Participant : IParticipant {
    int value{0};
    Mediator &mediator;

    Participant(Mediator &mediator) : mediator(mediator) {
        mediator.participants.push_back(this);
    }

    void notify(IParticipant *sender, int value) override {
        if (sender != this) {
            this->value += value;
        }
    }

    void say(int value) {
        mediator.say(this, value);
    }

    friend ostream &operator<<(ostream &os, const Participant &participant) {
        os << "value: " << participant.value;
        return os;
    }
};

int main() {
    Mediator mediator;

    Participant p1{mediator};
    Participant p2{mediator};

    p1.say(3);
    p2.say(2);

    cout << p1 << ", " << p2 << endl;

    return 0;
}
