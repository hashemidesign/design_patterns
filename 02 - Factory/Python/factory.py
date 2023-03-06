from math import sin, cos

class Point:
    def __init__(self, a, b) -> None:
        self.x = a
        self.y = b
    
    def __str__(self) -> str:
        return f'x: {self.x}, y: {self.y}'
    

    class PointFactory:
        def cartesian_factory(self, x, y):
            return Point(x, y)
        
        def polar_factory(self, rho, theta):
            return Point(rho * cos(theta), rho * sin(theta))
    
    factory = PointFactory()

if __name__ == "__main__":
    p1 = Point.factory.cartesian_factory(2, 3)
    p2 = Point.factory.polar_factory(2, 3)

    print(p1, p2)