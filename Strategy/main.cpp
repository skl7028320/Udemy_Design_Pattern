// Enables the exact behavior of a system to be selected either at run-time (dynamic) or compile-time (static)
// Also known as a policy (esp. in c++ world)

#include <iostream>
#include <vector>
#include <complex>
#include <tuple>

using namespace std;

struct DiscriminantStrategy {
    virtual double calculate_discriminant(double a, double b, double c) = 0;
};

struct OrdinaryDiscriminantStrategy : DiscriminantStrategy {
    double calculate_discriminant(double a, double b, double c) override {
        return b * b - 4 * a * c;
    }
};

struct RealDiscriminantStrategy : DiscriminantStrategy {
    double calculate_discriminant(double a, double b, double c) override {
        double temp = b * b - 4 * a * c;

        if (temp >= 0)
            return temp;
        else
            return NAN;
    }
};

class QuadraticEquationSolver {
    DiscriminantStrategy &strategy;

public:
    QuadraticEquationSolver(DiscriminantStrategy &strategy) : strategy(strategy) {}

    tuple<complex<double>, complex<double>> solve(double a, double b, double c) {
        complex<double> disc{strategy.calculate_discriminant(a, b, c), 0};
        auto root_disc = sqrt(disc);

        return {(-b + root_disc) / (2 * a), (-b - root_disc) / (2 * a)};
    }
};

int main() {
    OrdinaryDiscriminantStrategy ods;
    RealDiscriminantStrategy rds;
    QuadraticEquationSolver ods_qes(ods);
    QuadraticEquationSolver rds_qes(rds);

    cout << get<0>(ods_qes.solve(1, 2, 3)) << endl;
    cout << get<1>(ods_qes.solve(1, 2, 3)) << endl;
    cout << get<0>(rds_qes.solve(1, 2, 3)) << endl;
    cout << get<1>(rds_qes.solve(1, 2, 3)) << endl;

    return 0;
}
