void main() {
  Facade facade = Facade();

  print(facade.operation1());
  print(facade.operation2());
}

// Subsystem classes
class SubsystemA {
  String operationA() => "Subsystem A operation";
}

class SubsystemB {
  String operationB() => "Subsystem B operation";
}

class SubsystemC {
  String operationC() => "Subsystem C operation";
}

// Facade class
class Facade {
  late SubsystemA _subsystemA;
  late SubsystemB _subsystemB;
  late SubsystemC _subsystemC;

  Facade() {
    _subsystemA = SubsystemA();
    _subsystemB = SubsystemB();
    _subsystemC = SubsystemC();
  }

  String operation1() {
    String result = "Facade operation 1:\n";
    result += _subsystemA.operationA();
    result += _subsystemB.operationB();
    result += _subsystemC.operationC();
    return result;
  }

  String operation2() {
    String result = "Facade operation 2:\n";
    result += _subsystemB.operationB();
    result += _subsystemC.operationC();
    return result;
  }
}
