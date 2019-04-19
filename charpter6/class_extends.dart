import "person.dart";

void main() {
  // var student = new Student();
  // student.study();
  // student.name = "学生名";
  // student.age = 15;
  // print(student.isAdult);
  // student.run();
  Person person = new Student("小明", "Male");
  person.name = "parent";
  person.age = 30;
  if (person is Student) {
    person.study();
  }
  print(person);
}

class Student extends Person {
  final String gender;

  @override
  bool get isAdult => age > 18;

  Student(String name, String g) : gender = g, super.withName(name);

  void study() {
    print("Student study...");
  }

  @override
  void run() {
    // TODO: implement run
    super.run();
    print("Student run...");
  }
}