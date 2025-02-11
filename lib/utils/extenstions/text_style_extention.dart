import 'package:flutter/material.dart';

import '../constants/font_constants.dart';

extension TextStylesExtension on BuildContext {
  /// Display style for large headlines, banners, or hero text
  TextStyle get display => TextStyle(
        fontFamily: FontConstants.clashDisplay,
        fontSize: 36,
        fontWeight: FontWeight.bold,
        color: Theme.of(this).colorScheme.onBackground,
        height: 1,
      );

  /// Main headline style for section titles or key headers
  TextStyle get headline => TextStyle(
        fontFamily: FontConstants.clashDisplay,
        fontSize: 32,
        fontWeight: FontWeight.w700,
        color: Theme.of(this).colorScheme.onBackground,
      );

  /// Title style for product names, cards, or main UI elements
  TextStyle get title => TextStyle(
        fontFamily: FontConstants.clashDisplay,
        fontSize: 20,
        fontWeight: FontWeight.w600,
        height: 1,
        color: Theme.of(this).colorScheme.onBackground,
      );

  /// Subtitle for secondary headings or additional context
  TextStyle get subtitle => TextStyle(
        fontFamily: FontConstants.clashDisplay,
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: Theme.of(this).colorScheme.onBackground.withOpacity(0.8),
      );

  /// Standard body text for descriptions, paragraphs, or product details
  TextStyle get body => TextStyle(
        fontFamily: FontConstants.clashDisplay,
        fontSize: 16,
        fontWeight: FontWeight.w400,
        color: Theme.of(this).colorScheme.onSurface,
      );

  /// Caption for small text elements like labels or secondary UI details
  TextStyle get caption => TextStyle(
        fontFamily: FontConstants.clashDisplay,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Theme.of(this).colorScheme.onSurface.withOpacity(0.7),
      );

  /// Style for product prices or important highlighted elements
  TextStyle get price => TextStyle(
        fontFamily: FontConstants.clashDisplay,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Theme.of(this).colorScheme.primary,
      );

  /// Style for button text, strong call-to-action elements
  TextStyle get button => TextStyle(
        fontFamily: FontConstants.clashDisplay,
        fontSize: 16,
        fontWeight: FontWeight.w600,
        color: Theme.of(this).colorScheme.onPrimary,
      );

  /// Monospace style for technical details, order numbers, etc.
  TextStyle get code => TextStyle(
        fontFamily: FontConstants.clashDisplay,
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Theme.of(this).colorScheme.onSurface,
      );

  /// Overline or label text for small UI elements like categories or tabs
  TextStyle get overline => TextStyle(
        fontFamily: FontConstants.clashDisplay,
        fontSize: 12,
        fontWeight: FontWeight.w500,
        letterSpacing: 1.2,
        color: Theme.of(this).colorScheme.onSurface.withOpacity(0.6),
      );
}
