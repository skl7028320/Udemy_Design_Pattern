// A token/handle representing the system state. Lets us roll back to the state when the token is generated. May or may
// directly expose state information

#include <iostream>
#include <vector>
#include <memory>

using namespace std;

struct Token {
    int value;

    Token(int value) : value(value) {}
};

struct Memento {
    vector<shared_ptr<Token>> tokens;
};

struct TokenMachine {
    vector<shared_ptr<Token>> tokens;

    Memento add_token(int value) {
        return add_token(make_shared<Token>(value));
    }

    // adds the token to the set of tokens and returns the
    // snapshot of the entire system
    Memento add_token(const shared_ptr<Token> &token) {
        tokens.push_back(token);

        Memento m;
        for (auto t : tokens) {
            m.tokens.emplace_back(make_shared<Token>(t->value));
        }

        return m;
    }

    // reverts the system to a state represented by the token
    void revert(const Memento &m) {
        tokens.clear();

        for (auto t : m.tokens) {
            tokens.emplace_back(make_shared<Token>(t->value));
        }
    }
};

int main() {
    std::cout << "Hello, World!" << std::endl;
    return 0;
}
