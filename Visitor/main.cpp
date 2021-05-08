// A pattern where a component (visitor) is allowed to traverse the entire inheritance hierarchy. Implemented by
// propagating a single visit() method through out the entire hierarchy.

#include <string>
#include <sstream>
#include <iostream>

using namespace std;

struct Value;
struct AdditionExpression;
struct MultiplicationExpression;

struct ExpressionVisitor {
    virtual void visit(Value *v) = 0;

    virtual void visit(AdditionExpression *ae) = 0;

    virtual void visit(MultiplicationExpression *me) = 0;
};

struct Expression {
    virtual void accept(ExpressionVisitor &ev) = 0;
};

struct Value : Expression {
    int value;

    Value(int value) : value(value) {}

    void accept(ExpressionVisitor &ev) override {
        ev.visit(this);
    }
};

struct AdditionExpression : Expression {
    Expression &lhs, &rhs;

    AdditionExpression(Expression &lhs, Expression &rhs) : lhs(lhs), rhs(rhs) {}

    void accept(ExpressionVisitor &ev) override {
        ev.visit(this);
    }
};

struct MultiplicationExpression : Expression {
    Expression &lhs, &rhs;

    MultiplicationExpression(Expression &lhs, Expression &rhs)
            : lhs(lhs), rhs(rhs) {}

    void accept(ExpressionVisitor &ev) override {
        ev.visit(this);
    }
};

struct ExpressionPrinter : ExpressionVisitor {
    ostringstream oss;

    void visit(Value *v) override {
        oss << v->value;
    }

    void visit(AdditionExpression *ae) override {
        oss << "(";
        ae->lhs.accept(*this);
        oss << "+";
        ae->rhs.accept(*this);
        oss << ")";
    }

    void visit(MultiplicationExpression *me) override {
        me->lhs.accept(*this);
        oss << "*";
        me->rhs.accept(*this);
    }

    string str() const { return oss.str(); }

    void reset() {
        oss.str("");
        oss.clear();
    }
};

int main() {
    auto value1 = Value(1);
    auto value2 = Value(2);
    auto ae = AdditionExpression(value1, value2);
    auto value3 = Value(3);
    auto me = MultiplicationExpression(ae, value3);

    ExpressionPrinter ep;
    ep.visit(&value1);
    cout << ep.str() << endl;

    ep.reset();
    ep.visit(&ae);
    cout << ep.str() << endl;

    ep.reset();
    ep.visit(&me);
    cout << ep.str() << endl;

    return 0;
}
