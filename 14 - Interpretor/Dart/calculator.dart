void main() {
  final expression =
      Add(Number(1), Multiply(Number(2), Subtract(Number(4), Number(2))));
  final result = expression.evaluate();
  print('Result: $result'); // Output: Result: 5
}

abstract class Expression {
  int evaluate();
}

class Number implements Expression {
  final int value;

  Number(this.value);

  @override
  int evaluate() {
    return value;
  }
}

class Add implements Expression {
  final Expression left;
  final Expression right;

  Add(this.left, this.right);

  @override
  int evaluate() {
    return left.evaluate() + right.evaluate();
  }
}

class Subtract implements Expression {
  final Expression left;
  final Expression right;

  Subtract(this.left, this.right);

  @override
  int evaluate() {
    return left.evaluate() - right.evaluate();
  }
}

class Multiply implements Expression {
  final Expression left;
  final Expression right;

  Multiply(this.left, this.right);

  @override
  int evaluate() {
    return left.evaluate() * right.evaluate();
  }
}

class Divide implements Expression {
  final Expression left;
  final Expression right;

  Divide(this.left, this.right);

  @override
  int evaluate() {
    return left.evaluate() ~/ right.evaluate();
  }
}
