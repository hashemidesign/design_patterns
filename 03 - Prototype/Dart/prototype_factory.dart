void main(){
  Employee john = EmployeeFactory.newMainOfficeEmployee('John', 101);
  Employee jane = EmployeeFactory.newAuxOfficeEmployee('Jane', 502);
  
  print(john);
  print(jane);
}


class Address {
  String street;
  int suite;
  String city;
  
  Address(this.street, this.suite, this.city);
  
  @override
  String toString() => "$street, Suite #$suite, $city";
}

class Employee{
  String name;
  Address address;
  
  Employee(this.name, this.address);
  
  @override
  String toString() => "$name, $address";
}

class EmployeeFactory {
  static Employee mainOfficeEmployee = Employee('', Address('123A East dr', 0, 'London'));
  static Employee auxOfficeEmployee = Employee('', Address('123B East dr', 0, 'London'));
  
  
  static Employee _newEmployee(Employee proto, String name, int suite) {
    return Employee(name, Address(proto.address.street, suite, proto.address.city));
  }
  
  static Employee newMainOfficeEmployee(String name, int suite) {
    return EmployeeFactory._newEmployee(EmployeeFactory.mainOfficeEmployee, name, suite);
  }
  
  static Employee newAuxOfficeEmployee(String name, int suite) {
    return EmployeeFactory._newEmployee(EmployeeFactory.auxOfficeEmployee, name, suite);
  }
}