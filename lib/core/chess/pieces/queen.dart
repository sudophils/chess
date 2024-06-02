import 'package:chess/core/chess/board.dart';
import 'package:chess/core/chess/pieces/piece.dart';
import 'package:chess/core/chess/pieces/rook.dart';

import 'bishop.dart';

class Queen extends Piece {
  Queen(PieceColor color, int row, int col) : super(PieceType.Queen, color, row, col);

  @override
  bool isValidMove(int newRow, int newCol,Board board) {
    Rook rookMove = Rook(color, row, col);
    Bishop bishopMove = Bishop(color, row, col);
    return rookMove.isValidMove(newRow, newCol, board) || bishopMove.isValidMove(newRow, newCol, board);
  }
}