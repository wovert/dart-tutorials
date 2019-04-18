void main() {
  var log = new Logger("Q5");
  print(log._cache);
}
class Logger {
  final String name;

  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name); // 命名构造方法，私有的

  void log(String msg) {
    print(msg);
  }
}