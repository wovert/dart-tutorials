main(List<String> args) {
  var person = new Student();
  person.run();
} 

abstract class Person {
  void run();
}

class Student extends Person {
  void run () {
    print("run...");
  }
}