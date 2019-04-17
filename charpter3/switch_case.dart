void main () {
  String language = 'Java';

  switch (language) {
    D:
    case "Dart":
      print("Dart...");
      break;
    case "Java":
      print("Java...");
      continue D;
    case "Python":
      print("Python...");
      break;
    default:
      print("None");
  }
}