import 'package:get/get.dart';

class BrandConstants {
  static const String darkLong = "assets/brand/dark_long.png";
  static const String darkShort = "assets/brand/dark_short.png";
  static const String lightLong = "assets/brand/light_long.png";
  static const String lightShort = "assets/brand/light_short.png";

  static String get short {
    if (Get.isDarkMode) return lightShort;
    return darkShort;
  }

  static String get long {
    if (Get.isDarkMode) return lightLong;
    return darkLong;
  }
}
