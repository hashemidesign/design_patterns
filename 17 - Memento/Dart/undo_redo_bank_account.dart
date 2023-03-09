void main(){
  BankAccount ba = BankAccount(100);
    ba.deposit(50);
    ba.deposit(25);

    print(ba);

    ba.undo();
    print(ba);
    ba.undo();
    print(ba);
    ba.redo();
    print(ba);
}

class Memento {
  int balance;
  Memento(this.balance);
}

class BankAccount {
  int balance;
  late int _current;
  late List<Memento> _changes;
  
  BankAccount(this.balance){
    _current = 0;
    _changes = [Memento(balance)];
  }
  
  Memento deposit(int amount) {
    balance += amount;
    Memento m = Memento(balance);
    _changes.add(m);
    _current++;
    return m;
  }
  
  Memento? undo(){
    if(_current > 0) {
      _current--;
      Memento m = _changes[_current];
      balance = m.balance;
      return m;
    }
    return null;
  }
  
  Memento? redo() {
    if(_current + 1 < _changes.length) {
      _current++;
      Memento m = _changes[_current];
      balance = m.balance;
      return m;
    }
    return null;
  }
  
  @override
  String toString() => "Balance = $balance";
}