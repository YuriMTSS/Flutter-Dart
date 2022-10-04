import '../models/result_model.dart';
import 'package:flutter/material.dart';

class ResultDialog extends StatelessWidget {
  final ResultModel result;

  const ResultDialog(this.result, {super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Result'),
      content: Wrap(
        children: [
          ListTile(
            title: Text('${result.amountPieces} pisos'),
            subtitle: const Text('Quantidade de pisos'),
          ),
          ListTile(
            title: Text('${result.amountFloor} pisos'),
            subtitle: const Text('Quantidade de pisos para o rodapé'),
          ),
          ListTile(
            title: Text('${result.amountPiecesAndFooter} pisos'),
            subtitle: const Text('Quantidade total de pisos'),
          ),
          const Divider(),
          ListTile(
            title: Text('${result.areaWithoutFooter.toStringAsFixed(2)} m²'),
            subtitle: const Text('Metragem quadrada sem rodapé'),
          ),
          ListTile(
            title: Text('${result.areaWithFooter.toStringAsFixed(2)} m²'),
            subtitle: const Text('Metragem quadrada com rodapé'),
          ),
        ],
      ),
      actions: [
        TextButton(
          child: const Text('CONTINUAR'),
          onPressed: () => _dispose(context),
        ),
      ],
    );
  }

  _dispose(context) {
    Navigator.of(context).pop();
  }
}
