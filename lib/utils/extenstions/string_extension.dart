// lib/utils/extensions/string_extensions.dart
extension StringExtensions on String {
  /// Check if a string is a valid email.
  bool get isValidEmail {
    final regex = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    return regex.hasMatch(this);
  }

  /// Capitalize the first letter of the string.
  String get capitalize {
    if (isEmpty) return "";
    return this[0].toUpperCase() + substring(1);
  }
}
