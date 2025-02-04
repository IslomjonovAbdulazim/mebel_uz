import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../enums/app_theme.dart';

class ThemeController extends GetxController {
  final _storage = GetStorage();
  final _key = 'selectedTheme';

  Rx<AppThemeEnum> selectedTheme = AppThemeEnum.system.obs;

  @override
  void onInit() {
    super.onInit();
    final storedTheme = _storage.read(_key);
    if (storedTheme != null) {
      selectedTheme.value = AppThemeEnum.values[storedTheme];
    }
    Get.changeThemeMode(themeMode);
  }

  ThemeMode get themeMode {
    switch (selectedTheme.value) {
      case AppThemeEnum.light:
        return ThemeMode.light;
      case AppThemeEnum.dark:
        return ThemeMode.dark;
      case AppThemeEnum.system:
        return ThemeMode.system;
    }
  }

  void updateTheme(AppThemeEnum theme) {
    selectedTheme.value = theme;
    _storage.write(_key, theme.index);
    Get.changeThemeMode(themeMode);
  }
}
