import 'package:chess/core/chess/board.dart';
import 'package:chess/core/chess/pieces/piece.dart';

class King extends Piece {
  King(PieceColor color, int row, int col) : super(PieceType.King, color, row, col);

  @override
  bool isValidMove(int newRow, int newCol,Board board) {
    int rowDiff = (newRow - row).abs();
    int colDiff = (newCol - col).abs();
    return rowDiff <= 1 && colDiff <= 1;
  }
}