// Irá guardar as informações de saída do cálculo.

class ResultModel {
  double areaFloor;
  double piecesByWidth;
  double piecesByLength;

  ResultModel({
    this.areaFloor = 0.0,
    this.piecesByWidth = 0,
    this.piecesByLength = 0,
  });

  double get amountPieces => piecesByWidth * piecesByLength;
  double get amountFloor => piecesByWidth + piecesByLength;
  double get amountPiecesAndFooter => amountPieces + amountFloor;
  double get areaWithoutFooter => amountPieces * areaFloor;
  double get areaWithFooter => amountPiecesAndFooter * areaFloor;
}
