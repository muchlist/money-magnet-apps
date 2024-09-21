import 'package:logger/logger.dart';

class MyLogger {
  MyLogger._privateConstructor();
  static final MyLogger _instance = MyLogger._privateConstructor();
  factory MyLogger() {
    return _instance;
  }

  final Logger _logger = Logger(
    level: Level.all,
    printer: PrettyPrinter(),
  );

  void i(String message) {
    _logger.i(message);
  }

  void d(String message) {
    _logger.d(message);
  }
}
