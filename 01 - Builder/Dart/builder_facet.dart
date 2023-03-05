void main() {
  var pb = PersonBuilder();
  var person = pb
      .lives
      .at('123 London Road')
      .inCity('London')
      .withPostcode('SW12BC')
      .works
      .at('Fabrikam')
      .asA('Engineer')
      .earning(123000)
      .build();

  print(person);
}

class Person {
  String? streetAddress;
  String? postCode;
  String? city;
  String? companyName;
  String? position;
  int? annualIncome;
  
  Person();
  
  @override
  String toString() {
  return 'Address: $streetAddress, $postCode, $city \n' +
        'Employed at $companyName as a $position earning $annualIncome';
  }
}

class PersonBuilder{
  late Person person;
  
  PersonBuilder([person]){
    this.person = person ?? Person();
  }
  
  PersonJobBuilder get works => PersonJobBuilder(person);
  PersonAddressBuilder get lives => PersonAddressBuilder(person);
  
  Person build(){
    return person;
  }
}

class PersonJobBuilder extends PersonBuilder{
  PersonJobBuilder(Person person): super(person);
  
  PersonJobBuilder at(String companyName) {
    person.companyName = companyName;
    return this;
  }

  PersonJobBuilder asA(String position) {
    person.position = position;
    return this;
  }

  PersonJobBuilder earning(int annualIncome) {
    person.annualIncome = annualIncome;
    return this;
  }
}

class PersonAddressBuilder extends PersonBuilder{
  PersonAddressBuilder(Person person) : super(person);

  PersonAddressBuilder at(String streetAddress) {
    person.streetAddress = streetAddress;
    return this;
  }

  PersonAddressBuilder withPostcode(String postcode) {
    person.postCode = postcode;
    return this;
  }

  PersonAddressBuilder inCity(String city) {
    person.city = city;
    return this;
  }
}