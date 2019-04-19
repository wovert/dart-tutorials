main(List<String> args) {
  var d = new D();
  d.a();
  d.b();
}

class A {
  void a() {
    print("A.a()...");
  }
}

class B {
  void a() {
    print("B.a()...");
  }
  void b() {
    print("B.b()...");
  }
}

class C {
  void a() {
    print("C.a()...");
  }
  void b() {
    print("c.b()...");
  }
  void c() {
    print("C.c()...");
  }
}

class D extends A with C, B {

}