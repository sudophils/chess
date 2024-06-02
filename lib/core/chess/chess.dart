import 'package:chess/core/chess/pieces/piece.dart';

import 'board.dart';

class Chess {
  Board board = Board();
  PieceColor currentTurn = PieceColor.White;

  void setup() {
    board.setup();
    currentTurn = PieceColor.White;
  }

  void turn(PieceColor color) {
    if (color != currentTurn) {
      throw Exception("Not $color's turn");
    }
  }

  bool movePiece(Piece piece, int newRow, int newCol) {
    if (piece.color != currentTurn) {
      print("It's not ${piece.color}'s turn");
      return false;
    }
    if (piece.isValidMove(newRow, newCol, board)) {
      piece.move(newRow, newCol, board);
      currentTurn = (currentTurn == PieceColor.White) ? PieceColor.Black : PieceColor.White;
      return true;
    } else {
      print("Invalid move");
      return false;
    }
  }
}