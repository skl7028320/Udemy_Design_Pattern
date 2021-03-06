// Allows us to define the "skeleton" of the algorithm, with concrete implementations defined in subclass

#include <iostream>
#include <vector>
#include <complex>
#include <tuple>

using namespace std;

struct Creature {
    int attack, health;

    Creature(int attack, int health) : attack(attack), health(health) {}
};

struct CardGame {
    vector<Creature> creatures;

    CardGame(const vector<Creature> &creatures) : creatures(creatures) {}

    // return the index of the creature that won (is a live)
    // example:
    // - creature1 alive, creature2 dead, return creature1
    // - creature1 dead, creature2 alive, return creature2
    // - no clear winner: return -1
    int combat(int creature1, int creature2) {
        Creature &first = creatures[creature1];
        Creature &second = creatures[creature2];
        hit(first, second);
        hit(second, first);
        bool first_alive = first.health > 0;
        bool second_alive = second.health > 0;
        if (first_alive == second_alive) return -1;
        return first_alive ? creature1 : creature2;
    }

    virtual void hit(Creature &attacker, Creature &other) = 0;
};

struct TemporaryCardDamageGame : CardGame {
    TemporaryCardDamageGame(const vector<Creature> &creatures) : CardGame(creatures) {}

    void hit(Creature &attacker, Creature &other) override {
        auto old_health = other.health;
        other.health -= attacker.attack;
        if (other.health > 0) other.health = old_health;
    }
};

struct PermanentCardDamageGame : CardGame {
    PermanentCardDamageGame(const vector<Creature> &creatures) : CardGame(creatures) {}

    void hit(Creature &attacker, Creature &other) override {
        other.health -= attacker.attack;
    }
};

int main() {
    std::cout << "Hello, World!" << std::endl;

    return 0;
}
