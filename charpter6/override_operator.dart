main(List<String> args) {
  var person1 = new Person(20);
  var person2 = new Person(18);
  print(person1 > person2);

  person1.age = 100;
  print(person1['age']);
  person2.age = 100;

  print(person1 == person2);
}

class Person {
  int age;
  Person(this.age);

  bool operator > (Person person) {
    return this.age > person.age;
  }

  int operator [](String str) {
    if ("age" == str) {
      return age;
    }
    return 0;
  }

  @override
  bool operator ==(Object other) =>
    identical(this, other) ||
      other is Person &&
        runtimeType == other.runtimeType &&
        age == other.age;
  
  @override
  int get hashCode => age.hashCode;
}