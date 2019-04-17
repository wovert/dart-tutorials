void main () {
  var map = {"first": "Dart", "second": "NodeJS"};
  map.forEach(f);
}
void f(key, value) {
  print("key=${key}, value=${key}");
}