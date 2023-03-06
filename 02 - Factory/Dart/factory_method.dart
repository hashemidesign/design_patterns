import 'dart:math' as math;

void main() {
  Point p1 = Point.cartesian(2, 3);
  Point p2 = Point.polar(2, 3);

  print(p1);
  print(p2);
}

class Point {
  final double a;
  final double b;

  const Point(this.a, this.b);

  @override
  String toString() => "x: $a, y:$b";

  factory Point.cartesian(double x, double y) {
    return Point(x, y);
  }

  factory Point.polar(double rho, double theta) {
    return Point(rho * math.cos(theta), rho * math.sin(theta));
  }
}
