import 'package:intl/intl.dart';

class NumberFormatterHelper {
  static String formatWithSeparator(num value, {String separator = "  "}) {
    final formatter = NumberFormat("#,###");
    return formatter.format(value).replaceAll(",", separator);
  }

  static String formatShort(num value, {int decimalPlaces = 1}) {
    if (value < 1000) return value.toString();

    final List<String> suffixes = ["", "K", "M", "B", "T"];
    int index = 0;

    while (value >= 1000 && index < suffixes.length - 1) {
      value /= 1000;
      index++;
    }

    return "${value.toStringAsFixed(decimalPlaces)}${suffixes[index]}";
  }

  static String formatPhoneNumber(int input) {
    String number = input.toString();
    return "(99)  ${number.substring(0, 3)}-${number.substring(3, 5)}-${number.substring(5, 7)}";
  }
}
