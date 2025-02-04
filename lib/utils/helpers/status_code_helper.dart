import 'package:get/get.dart';

class StatusCodeService {
  static void showSnackbar(int statusCode) {
    String title = "Error";
    String message = "Something went wrong.";
    bool isError = true;

    switch (statusCode) {
      case 200:
        title = "Success";
        message = "Request was successful.";
        isError = false;
        break;
      case 201:
        title = "Created";
        message = "New resource created successfully.";
        isError = false;
        break;
      case 400:
        title = "Bad Request";
        message = "Invalid request. Please check your input.";
        break;
      case 401:
        title = "Unauthorized";
        message = "You need to log in first.";
        break;
      case 403:
        title = "Forbidden";
        message = "You don't have permission to access this resource.";
        break;
      case 404:
        title = "Not Found";
        message = "Requested resource not found.";
        break;
      case 405:
        title = "Method Not Allowed";
        message = "The request method is not supported.";
        break;
      case 408:
        title = "Request Timeout";
        message = "The server took too long to respond.";
        break;
      case 409:
        title = "Conflict";
        message = "There is a conflict with the current state of the resource.";
        break;
      case 429:
        title = "Too Many Requests";
        message = "You are sending too many requests. Please slow down.";
        break;
      case 500:
        title = "Internal Server Error";
        message = "Something went wrong on the server.";
        break;
      case 502:
        title = "Bad Gateway";
        message = "Received an invalid response from the upstream server.";
        break;
      case 503:
        title = "Service Unavailable";
        message = "The server is currently unavailable.";
        break;
      case 504:
        title = "Gateway Timeout";
        message = "The server did not receive a timely response.";
        break;
      default:
        title = "Unknown Error";
        message = "Unexpected error occurred. Code: $statusCode";
        break;
    }

    Get.closeAllSnackbars();
    Get.snackbar(
      title,
      message,
      snackPosition: SnackPosition.BOTTOM,
      backgroundColor:
          isError ? Get.theme.colorScheme.error : Get.theme.colorScheme.primary,
      colorText: Get.theme.colorScheme.onPrimary,
      duration: Duration(seconds: 3),
    );
  }
}
