void main() {
  Circle circle = Circle(2);
  ColoredShape redCircle = ColoredShape(circle, 'red');
  print(redCircle);
}

abstract class Shape{}


class Circle implements Shape {
  int radius;
  Circle(this.radius);
  
  void resize(int factor) {
    radius *= factor;
  }
  
  @override
  String toString() => 'A circle of radius $radius';
}

class Square implements Shape {
  int side;
  Square(this.side);
  
  @override
  String toString() => 'A square with side $side';
}

class ColoredShape implements Shape {
  Shape shape;
  String color;
  
  ColoredShape(this.shape, this.color) : super();
  
  @override
  String toString() => '$shape has the color of $color';
}