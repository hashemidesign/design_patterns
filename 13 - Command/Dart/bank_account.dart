void main() {
  BankAccount ba = BankAccount();
  BankAccountCommand cmd = BankAccountCommand(ba, Action.DEPOSIT, 600);
  cmd.invoke();
  print('After ${600} deposit: $ba');

  cmd.undo();
  print('${600} deposit undone: $ba');

  BankAccountCommand illegalCmd = BankAccountCommand(ba, Action.WITHDRAW, 1000);
  illegalCmd.invoke();
  print('After impossible withdrawal: $ba');
  illegalCmd.undo();
  print('After undo: $ba');
}

enum Action {
  DEPOSIT,
  WITHDRAW,
}

class BankAccount {
  static int OVERDRAFT_LIMIT = -500;
  int balance;

  BankAccount([this.balance = 0]);

  void deposit(int amount) {
    balance += amount;
    print('Deposited $amount, balance = $balance');
  }

  bool withdraw(int amount) {
    if (balance - amount >= BankAccount.OVERDRAFT_LIMIT) {
      balance -= amount;
      print('Withdrew $amount, balance = $balance');
      return true;
    }
    return false;
  }

  @override
  String toString() => "Balance = $balance";
}

abstract class Command {
  void invoke();
  void undo();
}

class BankAccountCommand implements Command {
  int amount;
  Action action;
  BankAccount account;
  bool success;

  BankAccountCommand(this.account, this.action, this.amount,
      [this.success = false]);

  @override
  void invoke() {
    if (action == Action.DEPOSIT) {
      account.deposit(amount);
      success = true;
    } else if (action == Action.WITHDRAW) {
      success = account.withdraw(amount);
    }
  }

  @override
  void undo() {
    if (!success) {
      return;
    }
    if (action == Action.DEPOSIT) {
      account.withdraw(amount);
    } else if (action == Action.WITHDRAW) {
      account.deposit(amount);
    }
  }
}
