// lib/utils/helpers/logger.dart
class Logger {
  static void log(String message) {
    // You might integrate a more advanced logging framework later.
    print("[LOG] $message");
  }

  static void error(String message) {
    print("[ERROR] $message");
  }
}
