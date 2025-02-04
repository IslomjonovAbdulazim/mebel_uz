import 'package:flutter/material.dart';

import '../constants/font_constants.dart';

extension TextStylesExtension on BuildContext {
  /// A bold, extra-large style for banners or prominent displays.
  TextStyle get display => TextStyle(
        fontFamily: FontConstants.oswald,
        fontSize: 40,
        fontWeight: FontWeight.bold,
        color: Theme.of(this).colorScheme.onSurface,
      );

  /// A strong, attention-grabbing style for headlines.
  TextStyle get headline => TextStyle(
        fontFamily: FontConstants.montserrat,
        fontSize: 32,
        fontWeight: FontWeight.w600,
        color: Theme.of(this).colorScheme.onSurface,
      );

  /// A refined title style for primary headings.
  TextStyle get title => TextStyle(
        fontFamily: FontConstants.nunito,
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Theme.of(this).colorScheme.onSurface,
      );

  /// A softer style for subtitles or secondary headings.
  TextStyle get subtitle => TextStyle(
        fontFamily: FontConstants.oswald,
        fontSize: 20,
        fontWeight: FontWeight.w500,
        // Slightly translucent for a softer feel.
        color: Theme.of(this).colorScheme.onSurface.withOpacity(0.8),
      );

  /// The standard style for body text.
  TextStyle get body => TextStyle(
        fontFamily: FontConstants.nunito,
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Theme.of(this).colorScheme.onSurface,
      );

  /// A smaller style for captions or helper text.
  TextStyle get caption => TextStyle(
        fontFamily: FontConstants.nunito,
        fontSize: 12,
        fontWeight: FontWeight.normal,
        // Reduced opacity for less emphasis.
        color: Theme.of(this).colorScheme.onSurface.withOpacity(0.6),
      );

  /// A bold style intended for buttons or call-to-action text.
  TextStyle get button => TextStyle(
        fontFamily: FontConstants.nunito,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        // Typically used on a contrasting background (e.g. primary color).
        color: Theme.of(this).colorScheme.onPrimary,
      );

  /// A monospaced style ideal for code snippets or technical info.
  TextStyle get code => TextStyle(
        fontFamily: FontConstants.sourceCodePro,
        fontSize: 16,
        fontWeight: FontWeight.normal,
        color: Theme.of(this).colorScheme.onSurface,
      );

  /// An understated style for labels or overline text.
  TextStyle get overline => TextStyle(
        fontFamily: FontConstants.oswald,
        fontSize: 10,
        fontWeight: FontWeight.normal,
        letterSpacing: 1.5,
        color: Theme.of(this).colorScheme.onSurface.withOpacity(0.7),
      );
}
