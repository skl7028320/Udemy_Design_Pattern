// An object which represents an instruction to perform a particular action. Contains all the information necessary for
// the action to be taken

#include <iostream>

struct Command {
    enum Action {
        deposit, withdraw
    } action;
    int amount{0};
    bool success{false};
};

struct Account {
    int balance{0};

    void process(Command &cmd) {
        switch (cmd.action) {
            case Command::deposit:
                balance += cmd.amount;
                cmd.success = true;
                break;
            case Command::withdraw:
                if (balance < cmd.amount)
                    cmd.success = false;
                else {
                    cmd.success = true;
                    balance -= cmd.amount;
                }
                break;
            default:
                std::cout << "unsupported action" << std::endl;
        }
    }
};

int main() {
    Account account{100};

    Command deposit_command{Command::deposit, 100, false};
    account.process(deposit_command);

    Command withdraw_command1{Command::withdraw, 50, false};
    account.process(withdraw_command1);

    Command withdraw_command2{Command::withdraw, 200, false};
    account.process(withdraw_command2);

    std::cout << std::boolalpha << deposit_command.success << std::endl;
    std::cout << std::boolalpha << withdraw_command1.success << std::endl;
    std::cout << std::boolalpha << withdraw_command2.success << std::endl;
    std::cout << account.balance << std::endl;

    return 0;
}
