// lib/utils/extensions/context_extensions.dart
import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  /// Quickly access the primary color from the theme.
  Color get primaryColor => Theme.of(this).primaryColor;

  /// Access media query data.
  Size get screenSize => MediaQuery.of(this).size;
}
