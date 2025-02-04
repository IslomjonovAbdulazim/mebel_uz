class ApiConstants {
  static const String baseURL = "http://5.42.220.153:8003/";

  /// AUTH
  static const String resetPassword = "/api/v1/auth/auth/reset-password/";
  static const String forgotPassword = "/api/v1/auth/forgot-password";
  static const String register = "/api/v1/auth/register/";
  static const String registerCheck = "/api/v1/auth/register/check";
  static const String verifyOTP = "/api/v1/auth/verify-otp";
  static const String token = "/api/v1/auth/api/token/";
  static const String refreshToken = "/api/v1/auth/api/token/refresh/";

  /// HOME
  static const String books = "/api/v1/books/";
  static const String units = "/api/v1/books/{book_id}/units/";
  static const String randomQuiz = "/api/v1/random-quiz/";
}
