void main () {
  var person = new Person("Tom", 20);
  person.work();
  var p2 = new Person.withName("Jerry");
  p2.work();
}

class Person {
  String name;
  int age;
  final String gender = '男';

  Person(this.name, this.age);
  Person.withName(String name) {
    this.name = name;
  }

  void work() {
    print("Work...");
  }
}