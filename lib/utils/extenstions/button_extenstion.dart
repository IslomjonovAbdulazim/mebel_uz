import 'package:flutter/material.dart';

import '../constants/font_constants.dart';
import 'color_extension.dart';

extension ButtonStylesExtension on BuildContext {
  TextStyle get buttonText => TextStyle(
        fontFamily: FontConstants.clashDisplay,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: backgroundColor,
      );

  /// Standard ElevatedButton style with a smooth modern look.
  ButtonStyle get elevatedButtonStyle => ElevatedButton.styleFrom(
        foregroundColor: Theme.of(this).colorScheme.onPrimary,
        backgroundColor: Theme.of(this).colorScheme.primary,
        textStyle: TextStyle(
          fontFamily: FontConstants.clashDisplay,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        elevation: 2,
      );

  /// A smaller ElevatedButton style for subtle actions.
  ButtonStyle get elevatedButtonSmallStyle => ElevatedButton.styleFrom(
        foregroundColor: Theme.of(this).colorScheme.onPrimary,
        backgroundColor: Theme.of(this).colorScheme.primary,
        textStyle: TextStyle(
          fontFamily: FontConstants.clashDisplay,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 1,
      );

  /// A larger ElevatedButton style for main call-to-action buttons.
  ButtonStyle get elevatedButtonLargeStyle => ElevatedButton.styleFrom(
        foregroundColor: Theme.of(this).colorScheme.onPrimary,
        backgroundColor: Theme.of(this).colorScheme.primary,
        textStyle: TextStyle(
          fontFamily: FontConstants.clashDisplay,
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 4,
      );

  /// Outlined button style for secondary actions.
  ButtonStyle get outlinedButtonStyle => OutlinedButton.styleFrom(
        foregroundColor: Theme.of(this).colorScheme.primary,
        side: BorderSide(color: Theme.of(this).colorScheme.primary, width: 1.5),
        textStyle: TextStyle(
          fontFamily: FontConstants.clashDisplay,
          fontSize: 16,
          fontWeight: FontWeight.w600,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      );

  /// Text button style for less prominent actions.
  ButtonStyle get textButtonStyle => TextButton.styleFrom(
        foregroundColor: Theme.of(this).colorScheme.primary,
        textStyle: TextStyle(
          fontFamily: FontConstants.clashDisplay,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      );
}
