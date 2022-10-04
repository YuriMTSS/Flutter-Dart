import 'package:flutter/material.dart';

ThemeData estilo() {
  ThemeData base = ThemeData.dark();
  return base.copyWith(
    primaryColor: Colors.red,
    colorScheme: const ColorScheme.dark(),
    textSelectionTheme:
        TextSelectionThemeData(cursorColor: Colors.grey.shade300),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
        hoverColor: Colors.orange.shade400),
  );
}
