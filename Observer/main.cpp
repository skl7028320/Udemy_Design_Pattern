// An observer is an object that wishes to be informed about events happening in the system. The entity generating
// events is an observable.

#include <iostream>
#include <vector>
#include <algorithm>

using namespace std;

struct IRat {
    virtual void rat_enters(IRat *sender) = 0;

    virtual void rat_dies(IRat *sender) = 0;

    virtual void notify(IRat *target) = 0;
};

struct Rat;

struct Game {
    vector<IRat *> rats;

    virtual void fire_rat_enters(IRat *sender) {
        for (auto rat : rats) rat->rat_enters(sender);
    }

    virtual void fire_rat_dies(IRat *sender) {
        for (auto rat : rats) rat->rat_dies(sender);
    }

    virtual void fire_notify(IRat *target) {
        for (auto rat : rats) rat->notify(target);
    }

    friend ostream &operator<<(ostream &os, const Game &game);
};

struct Rat : IRat {
    Game &game;
    int attack{1};

    Rat(Game &game) : game(game) {
        game.rats.push_back(this);
        game.fire_rat_enters(this);
    }

    ~Rat() {
        game.fire_rat_dies(this);
        game.rats.erase(std::remove(game.rats.begin(), game.rats.end(), this));
    }

    void rat_enters(IRat *sender) override {
        if (sender != this) {
            ++attack;
            game.fire_notify(sender);
        }
    }

    void rat_dies(IRat *sender) override {
        --attack;
    }

    void notify(IRat *target) override {
        if (target == this) ++attack;
    }

    friend ostream &operator<<(ostream &os, const Rat &rat) {
        os << "attack: " << rat.attack;
        return os;
    }
};

ostream &operator<<(ostream &os, const Game &game) {
    for (auto r : game.rats) {
        os << *static_cast<Rat *>(r) << endl;
    }

    return os;
}

int main() {
    Game game;

    Rat *rat1 = new Rat(game);
    Rat *rat2 = new Rat{game};

    cout << game << endl;

    Rat *rat3 = new Rat(game);

    cout << game << endl;

    delete rat2;

    cout << game << endl;

    delete rat1;
    delete rat2;

    return 0;
}
