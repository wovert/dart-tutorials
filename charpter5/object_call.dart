void main() {
  var person = new Person();
  print(person("Tom", 20));
}

class Person {
  String name;
  int age;

  String call(String name, int age) {
    return "Name is $name, Age is $age";
  }
}