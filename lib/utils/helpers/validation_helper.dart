// lib/utils/helpers/validation_helper.dart
class ValidationHelper {
  ValidationHelper._();

  /// Check if the provided string is a valid email.
  static bool isValidEmail(String email) {
    final regex = RegExp(r"^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$");
    return regex.hasMatch(email);
  }

  /// Check if the password is strong enough.
  static bool isValidPassword(String password) {
    // Requires:
    // - At least 8 characters
    // - At least 1 uppercase letter
    // - At least 1 digit
    // - At least 1 special character (!@#$%^&*(),.?":{}|<>)
    final regex = RegExp(
        r'^(?=.*[A-Z])(?=.*\d)(?=.*[!@#$%^&*(),.?":{}|<>])[A-Za-z\d!@#$%^&*(),.?":{}|<>]{8,}$');

    return regex.hasMatch(password);
  }
}
