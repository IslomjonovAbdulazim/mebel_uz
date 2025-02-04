// lib/utils/themes/app_theme.dart
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/color_constants.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: LightColorConstants.primary,
      onPrimary: Colors.white,
      secondary: LightColorConstants.primary,
      onSecondary: Colors.white,
      surface: LightColorConstants.surface,
      onSurface: LightColorConstants.textPrimary,
      error: LightColorConstants.error,
      onError: Colors.white,
    ),
    scaffoldBackgroundColor: LightColorConstants.background,
    cardColor: LightColorConstants.card,
    dividerColor: LightColorConstants.border,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: LightColorConstants.textPrimary),
      bodyMedium: TextStyle(color: LightColorConstants.textSecondary),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: LightColorConstants.background,
      iconTheme: IconThemeData(color: LightColorConstants.textPrimary),
      titleTextStyle: TextStyle(
        color: LightColorConstants.textPrimary,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: LightColorConstants.background,
        statusBarIconBrightness: Brightness.dark, // Dark icons for light background
        statusBarBrightness: Brightness.light, // Light status bar
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: DarkColorConstants.primary,
      onPrimary: Colors.white,
      secondary: DarkColorConstants.primary,
      onSecondary: Colors.white,
      surface: DarkColorConstants.surface,
      onSurface: DarkColorConstants.textPrimary,
      error: DarkColorConstants.error,
      onError: Colors.white,
    ),
    scaffoldBackgroundColor: DarkColorConstants.background,
    cardColor: DarkColorConstants.card,
    dividerColor: DarkColorConstants.border,
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: DarkColorConstants.textPrimary),
      bodyMedium: TextStyle(color: DarkColorConstants.textSecondary),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: DarkColorConstants.background,
      iconTheme: IconThemeData(color: DarkColorConstants.textPrimary),
      titleTextStyle: TextStyle(
        color: DarkColorConstants.textPrimary,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: DarkColorConstants.background,
        statusBarIconBrightness: Brightness.light, // Light icons for dark background
        statusBarBrightness: Brightness.dark, // Dark status bar
      ),
    ),
  );
}
