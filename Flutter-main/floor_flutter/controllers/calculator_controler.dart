// Servirá para converter os dados de entrada em modelo e realizar o calculo de quantidade de pisos e metragem.

import '../helpers/parse_helper.dart';
import '../models/floor_model.dart';
import '../models/result_model.dart';
import '../models/room_model.dart';

class CalculatorController {
  final room = RoomModel();
  final floor = FloorModel();

  void setRoomWidth(String value) {
    room.width = ParseHelper.toDouble(value);
  }

  void setRoomLength(String value) {
    room.length = ParseHelper.toDouble(value);
  }

  void setFloorWidth(String value) {
    floor.width = ParseHelper.toDouble(value);
  }

  void setFloorLength(String value) {
    floor.length = ParseHelper.toDouble(value);
  }

  ResultModel calculate() {
    final result = ResultModel();
    result.piecesByWidth = (room.width / floor.width);
    result.piecesByLength = (room.length / floor.length);
    result.areaFloor = floor.length * floor.width;
    return result;
  }
}
