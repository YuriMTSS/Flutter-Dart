// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initializedSplash() async {
    await Future.delayed(const Duration(seconds: 4));
    Navigator.pushReplacementNamed(context, '/home');
  }

  @override
  void initState() {
    initializedSplash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Image.asset(
          'assets/logo.png',
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}
