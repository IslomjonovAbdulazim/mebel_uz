import 'package:flutter/cupertino.dart';

class Logger {
  static void log(String message) {
    debugPrint("[LOG] $message");
  }

  static void error(String message) {
    debugPrint("[ERROR] $message");
  }
}
