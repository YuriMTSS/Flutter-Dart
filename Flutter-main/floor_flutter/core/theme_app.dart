import 'package:flutter/material.dart';

final themeApp = ThemeData(
  visualDensity: VisualDensity.adaptivePlatformDensity,
  brightness: Brightness.light,
  buttonTheme: const ButtonThemeData(
    height: 52,
    textTheme: ButtonTextTheme.primary,
  ),
  colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepOrange)
      .copyWith(secondary: Colors.deepOrangeAccent),
);
