import 'package:flutter/material.dart';

class Emprestimo extends StatelessWidget {
  const Emprestimo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0),
      child: Container(
        height: 210,
        width: 390,
        decoration: BoxDecoration(
          color: const Color(0xFF121212),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 22, bottom: 14),
                child: Row(
                  children: const [
                    Icon(
                      Icons.credit_card,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 14,
                    ),
                    Text(
                      'Empréstimos',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              Text(
                'Valor disponível até',
                style: TextStyle(color: Colors.grey.shade600, fontSize: 15),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'R\$ 5.000,00',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(4),
                  border: Border.all(color: Colors.white),
                ),
                width: 217,
                height: 41,
                child: const Center(
                  child: Text(
                    'SIMULAR IMPRÉSTIMO',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
