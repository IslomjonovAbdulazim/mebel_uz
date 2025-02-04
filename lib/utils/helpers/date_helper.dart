// lib/utils/helpers/date_helper.dart
import 'package:intl/intl.dart';

class DateHelper {
  /// Formats a [DateTime] into a human-readable string.
  static String formatDate(DateTime date, {String format = 'yyyy-MM-dd'}) {
    return DateFormat(format).format(date);
  }

  /// Parses a string into a [DateTime].
  static DateTime parseDate(String dateString, {String format = 'yyyy-MM-dd'}) {
    return DateFormat(format).parse(dateString);
  }
}
