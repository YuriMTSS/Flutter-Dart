import 'package:flutter/material.dart';
import 'pages/calculator_pages.dart';
import 'core/theme_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculadora de Pisos',
      theme: themeApp,
      home: const CalculatorPage(),
    );
  }
}
