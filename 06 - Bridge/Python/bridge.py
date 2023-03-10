from abc import ABC

class Renderer(ABC):
    def render_circle(self, radius):
        pass

class VectorRenderer(Renderer):
    def render_circle(self, radius):
        print(f'Drawing a circle of radius {radius}')
    
class RasterRendere(Renderer):
    def render_circle(self, radius):
        print(f'Drawing pixels for a circle of radius {radius}')

class Shape:
    def __init__(self, renderer) -> None:
        self.renderer = renderer
    
    def draw(self):
        pass
    
    def resize(self, factor):
        pass

class Circle(Shape):
    def __init__(self, renderer, radius) -> None:
        super().__init__(renderer)
        self.radius = radius
    
    def draw(self):
        self.renderer.render_circle(self.radius)
    
    def resize(self, factor):
        self.radius = self.radius * factor


if __name__ == "__main__":
    raster = RasterRendere()
    vector = VectorRenderer()
    circle = Circle(raster, 2)
    circle.draw()
    circle.resize(5)
    circle.draw()
