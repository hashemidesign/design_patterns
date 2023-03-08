void main() {
  RasterRendere raster = RasterRendere();
  VectorRenderer vector = VectorRenderer();
  Circle circle = Circle(raster, 2);
  circle.draw();
  circle.resize(5);
  circle.draw();
}

abstract class Renderer {
  void renderCircle(int radius);
}

class VectorRenderer implements Renderer {
  @override
  void renderCircle(int radius) {
    print('Drawing a circle of radius $radius');
  }
}

class RasterRendere implements Renderer {
  @override
  void renderCircle(int radius) {
    print('Drawing pixels for a circle of radius $radius');
  }
}

abstract class Shape {
  final Renderer renderer;
  Shape(this.renderer);

  void draw() {}
  void resize(int factor) {}
}

class Circle extends Shape {
  int radius;
  Renderer renderer;
  Circle(this.renderer, this.radius) : super(renderer);

  @override
  void draw() {
    renderer.renderCircle(radius);
  }

  @override
  void resize(int factor) {
    radius = radius * factor;
  }
}
