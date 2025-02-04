import 'package:flutter/material.dart';

import '../constants/font_constants.dart';

extension TextStylesExtension on BuildContext {
  /// Elevated button text style – bold with a bit of letter spacing for clarity.
  TextStyle get elevatedButton => TextStyle(
        fontFamily: FontConstants.nunito,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.25,
        color: Theme.of(this).colorScheme.onPrimary,
      );
}

/// Elevated button styles extension that uses your color palette and text style.
extension ButtonStylesExtension on BuildContext {
  /// Standard ElevatedButton style.
  ButtonStyle get elevatedButtonStyle => ElevatedButton.styleFrom(
        foregroundColor: Theme.of(this).colorScheme.onPrimary,
        backgroundColor: Theme.of(this).colorScheme.primary,
        // Foreground (text/icon) color.
        textStyle: elevatedButton,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 2,
      );

  /// A compact ElevatedButton style for smaller buttons.
  ButtonStyle get elevatedButtonSmallStyle => ElevatedButton.styleFrom(
        foregroundColor: Theme.of(this).colorScheme.onPrimary,
        backgroundColor: Theme.of(this).colorScheme.primary,
        // A slightly smaller font size.
        textStyle: elevatedButton.copyWith(fontSize: 14),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 1,
      );

  /// A larger ElevatedButton style for prominent call-to-actions.
  ButtonStyle get elevatedButtonLargeStyle => ElevatedButton.styleFrom(
        foregroundColor: Theme.of(this).colorScheme.onPrimary,
        backgroundColor: Theme.of(this).colorScheme.primary,
        // Increase the font size for greater prominence.
        textStyle: elevatedButton.copyWith(fontSize: 18),
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        elevation: 4,
      );
}
