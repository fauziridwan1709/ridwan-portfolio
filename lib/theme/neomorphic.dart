import 'package:flutter/material.dart';
import 'package:ridwan/base/theme.dart';

/// Implementation for app material theme.
class NeomorphicThemeData implements AppTheme {
  // TODO(Any): Specify dark theme.
  @override
  ThemeData dark() {
    return ThemeData(
      brightness: Brightness.dark,
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        foregroundColor: Colors.black,
      ),
    );
  }

  // TODO(Any): Specify light theme.
  @override
  ThemeData light() {
    return ThemeData();
  }
}
