import 'package:flutter/material.dart';

extension ColorExtension on BuildContext {
  /// Background used for Scaffold and AppBar.
  Color get backgroundColor => Theme.of(this).scaffoldBackgroundColor;

  /// Card color.
  Color get cardColor => Theme.of(this).cardColor;

  /// Divider color.
  Color get dividerColor => Theme.of(this).dividerColor;

  // — ColorScheme Colors —

  /// Primary color. (For example, “red”)
  Color get primary => Theme.of(this).colorScheme.primary;

  /// Color shown on top of the primary color. (For example, “white”)
  Color get white => Theme.of(this).colorScheme.onPrimary;

  /// Surface color. If your design uses a lighter variant of your primary, you could call it “lightRed.”
  /// (Otherwise, you might simply use [surface].)
  Color get lightRed => Theme.of(this).colorScheme.surface;

  /// Color used for text/icons on the surface.
  Color get onSurface => Theme.of(this).colorScheme.onSurface;

  /// Error color. (Typically red as well; if it’s the same as [primary], you can omit it.)
  Color get error => Theme.of(this).colorScheme.error;

  // — Text Colors (if needed) —

  /// Primary text color.
  Color get textPrimary => Theme.of(this).textTheme.bodyLarge!.color!;

  /// Secondary text color.
  Color get textSecondary => Theme.of(this).textTheme.bodyMedium!.color!;
}
