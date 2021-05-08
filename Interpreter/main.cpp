// A component that processes structured text data. Does so by turning it into separate lexical tokens (lexing) and then
// interpreting sequences of said tokens (parsing).

#include <iostream>
#include <map>
#include <vector>
#include <string>

using namespace std;

inline vector<string> split(const string &stringToSplit) {
    vector<string> result;
    size_t pos = 0, lastPos = 0;
    while ((pos = stringToSplit.find_first_of("+-", lastPos)) != string::npos) {
        result.push_back(stringToSplit.substr(lastPos, pos - lastPos + 1));
        lastPos = pos + 1;
    }
    result.push_back(stringToSplit.substr(lastPos));
    return result;
}

struct ExpressionProcessor {
    map<char, int> variables;

    enum NextOp {
        nothing,
        plus,
        minus
    };

    int calculate(const string &expression) {
        int current;
        auto next_op = nothing;

        auto parts = split(expression);

        cout << "parts (" << parts.size() << "): ";
        for (auto &part : parts)
            cout << "`" << part << "` ";
        cout << endl;

        for (auto &part : parts) {
            auto no_op = split(part);
            auto first = no_op[0];
            int value, z;

            try {
                value = stoi(first);
            }
            catch (const invalid_argument &) {
                if (first.length() == 1 &&
                    variables.find(first[0]) != variables.end()) {
                    value = variables[first[0]];
                } else return 0;
            }

            switch (next_op) {
                case nothing:
                    current = value;
                    break;
                case plus:
                    current += value;
                    break;
                case minus:
                    current -= value;
                    break;
            }

            if (*part.rbegin() == '+') next_op = plus;
            else if (*part.rbegin() == '-') next_op = minus;
        }

        return current;
    }
};

int main() {
    ExpressionProcessor ep;

    cout << ep.calculate("1+2+3") << endl;

    cout << ep.calculate("1+2-3") << endl;

    ep.variables.insert({'x', 5});
    cout << ep.calculate("1+2+x") << endl;

    return 0;
}
