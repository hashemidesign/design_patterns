from math import sin, cos

class Point:
    def __init__(self, a, b) -> None:
        self.x = a
        self.y = b
    
    def __str__(self) -> str:
        return f'x: {self.x}, y: {self.y}'
    

    @staticmethod
    def cartesian_factory(x, y):
        return Point(x, y)
    
    @staticmethod
    def polar_factory(rho, theta):
        return Point(rho * cos(theta), rho * sin(theta))

if __name__ == "__main__":
    p1 = Point.cartesian_factory(2, 3)
    p2 = Point.polar_factory(2, 3)

    print(p1, p2)