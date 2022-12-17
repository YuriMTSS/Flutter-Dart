import 'package:calculadoras/padrao/components/display.dart';
import 'package:calculadoras/padrao/components/keyboard.dart';
import 'package:calculadoras/padrao/models/memory.dart';
import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  final Memory memory = Memory();
  _onPressed(String command) {
    setState(() {
      memory.applyCommand(command);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Display(
            text: memory.Value,
          ),
          Keyboard(cb: _onPressed)
        ],
      ),
    );
  }
}
