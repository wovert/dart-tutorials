void main() {
  Person person = new Person();
  person?.work(); // person为空时不执行，不为空时执行

  var p;
  p = '';
  // p = new Person();
  // p.work(); // 不确定定p为对象类型
  // (p as Person).work();
  if (p is! Person) {
    print('P is not Person type...');
  }

  var p2 = new Person();
  // p2..name = "Tome"
  new Person()..name = "Tome"
    ..age = 20
    ..work();
}

class Person {
  String name;
  int age;

  void work() {
    print("Work...");
  }
}