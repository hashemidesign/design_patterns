void main(){
  Socket socket = Socket();
  Adapter adapter = Adapter(socket);
  USElectricKettle kettle = USElectricKettle(adapter);
  kettle.boil();
}

abstract class EuropeanSocketInterface {
  int voltage();
  int live();
  int neutral();
  int earth();
}

abstract class USASocketInterface {
  int voltage();
  int live();
  int neutral();
}

class Socket implements EuropeanSocketInterface {
  @override
  int voltage() => 230;
  
  @override
  int live() => 1;
  
  @override
  int neutral() => -1;
  
  @override
  int earth() => 0;
}

class Adapter implements USASocketInterface {
  final EuropeanSocketInterface _socket;
  
  Adapter(this._socket);
  
  @override
  int voltage() => 110;
  
  @override
  int live() => _socket.live();
  
  @override
  int neutral() => _socket.neutral();
}

class USElectricKettle {
  final USASocketInterface _power;
  
  USElectricKettle(this._power);
  
  void boil(){
    if (_power.voltage() > 110) {
      print("Kettle on fire!");
    }
    else if (_power.live() == 1 && _power.neutral() == -1){
      print("Coffee time!");
    }
    else {
      print("No power.");
    }
  }
}