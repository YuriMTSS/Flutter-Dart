import 'package:flutter/material.dart';
import 'package:nubank_figma/home/containers/cartao_credito.dart';
import 'package:nubank_figma/home/containers/conta.dart';
import 'package:nubank_figma/home/containers/emprestimo.dart';
import 'package:nubank_figma/home/containers/rewards.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Olá, Yuri',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: const [
              CartaoCredito(),
              Conta(),
              Emprestimo(),
              Rewards(),
            ],
          ),
        ),
      ),
    );
  }
}
