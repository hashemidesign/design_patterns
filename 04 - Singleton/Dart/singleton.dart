void main(){
  var s1 = Singleton.instance;
  var s2 = Singleton.instance;

  s1.incrementValue();

  print(s1.value); // Output: 1
  print(s2.value); // Output: 1
  print(identical(s1, s2)); // Output: true
}


class Singleton {
  static Singleton? _instance;
  late int value;
  
  Singleton._internal() {
    value = 0;
  }
  
  static Singleton get instance {
    if(_instance == null){
      _instance = Singleton._internal();
    }
    return _instance!;
  }
  
  void incrementValue() {
    value++;
  }
}