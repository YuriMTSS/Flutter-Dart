import 'package:flutter/material.dart';

class CartaoCredito extends StatelessWidget {
  const CartaoCredito({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30.0),
      child: Container(
        height: 165,
        width: 390,
        decoration: BoxDecoration(
          color: const Color(0xFF121212),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 22.0, bottom: 14),
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
                      'Cartão de crédito',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ),
              const Text(
                'Fatura atual',
                style: TextStyle(color: Color(0xFF9E9C9C)),
              ),
              const Text(
                'R\$ 2554,02',
                style: TextStyle(
                    fontSize: 28,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
              Row(
                children: const [
                  Text(
                    'Limite disponível',
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'R\$ 1225,10',
                    style: TextStyle(color: Colors.green),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
