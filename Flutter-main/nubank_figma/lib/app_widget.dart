import 'package:flutter/material.dart';
import 'package:nubank_figma/home/home_page.dart';
import 'package:nubank_figma/splash/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashPage(),
        '/home': (context) => const HomePage(),
      },
    );
  }
}
