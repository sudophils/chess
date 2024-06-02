import 'package:chess/core/chess/board.dart';
import 'package:chess/core/chess/pieces/piece.dart';

class Knight extends Piece {
  Knight(PieceColor color, int row, int col) : super(PieceType.Knight, color, row, col);

  @override
  bool isValidMove(int newRow, int newCol, Board board) {
    int rowDiff = (newRow - row).abs();
    int colDiff = (newCol - col).abs();
    return (rowDiff == 2 && colDiff == 1) || (rowDiff == 1 && colDiff == 2);
  }
}