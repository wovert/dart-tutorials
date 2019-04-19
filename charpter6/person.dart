class Person {
  String name;
  int age;
  String _birthday;

  bool get isAdult => age > 18;

  Person(this.name);
  Person.withName(this.name);
  
  void run() {
    print("Person run...");
  }
  @override
  String toString() {
    // TODO: implement toString
    // return super.toString();
    return "Name is $name, Age is $age";
  }
}