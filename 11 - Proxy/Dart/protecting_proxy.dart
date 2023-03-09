void main() {
  Driver driver = Driver('John', 12);
  CarProxy car = CarProxy(driver);
  car.drive();
}

class Car {
  final Driver driver;
  Car(this.driver);

  void drive() {
    print('Car is being driven by ${driver.name}');
  }
}

class Driver {
  final String name;
  final int age;
  Driver(this.name, this.age);
}

class CarProxy {
  final Car _car;
  final Driver driver;
  CarProxy(this.driver) : _car = Car(driver);

  void drive() {
    if (driver.age >= 16) {
      _car.drive();
    } else {
      print("Driver too young!");
    }
  }
}
