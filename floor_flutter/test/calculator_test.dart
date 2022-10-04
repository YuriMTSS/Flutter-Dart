import 'package:floor_flutter/controllers/calculator_controler.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Calculo', () {
    final controller = CalculatorController();
    controller.setRoomWidth('2.4');
    controller.setRoomLength('3.22');
    controller.setFloorWidth('0.6');
    controller.setFloorLength('0.6');

    final result = controller.calculate();

    test('Quantidade de pisos', () {
      expect(result.amountPieces, 24);
    });

    test('Quantidade de pisos para rodapé', () {
      expect(result.amountFloor, 10);
    });

    test('Quantidade de total de pisos', () {
      expect(result.amountPiecesAndFooter, 34);
    });

    test('Metragem da quadra sem rodapé', () {
      expect(result.areaWithoutFooter, 8.64);
    });

    test('Metragem da quadra total com rodapé', () {
      expect(result.amountPieces, 12.24);
    });
  });
}
