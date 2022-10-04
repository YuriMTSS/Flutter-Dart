import 'package:flutter/material.dart';
import '../models/result_model.dart';

class ResultDialog extends StatelessWidget {
  final ResultModel result;
  const ResultDialog({required this.result, super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Resultado'),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            title: Text('${result.amountPieces} pisos'),
            subtitle: const Text('Quantidade de pisos'),
          ),
          ListTile(
            title: Text('${result.amountFloor} pisos'),
            subtitle: const Text('Quantidade de pisos para rodapé'),
          ),
          ListTile(
            title: Text('${result.amountPiecesAndFooter} pisos'),
            subtitle: const Text('Total de pisos'),
          ),
          ListTile(
            title: Text('${result.areaWithoutFooter} m²'),
            subtitle: const Text('Metragem quadrada sem rodapé'),
          ),
          ListTile(
            title: Text('${result.areaWithFooter} m²'),
            subtitle: const Text('Metragem quadrada sem rodapé'),
          ),
        ],
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Continuar'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}
