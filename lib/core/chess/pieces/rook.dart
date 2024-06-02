import 'package:chess/core/chess/board.dart';
import 'package:chess/core/chess/pieces/piece.dart';

class Rook extends Piece {
  Rook(PieceColor color, int row, int col) : super(PieceType.Rook, color, row, col);

  @override
  bool isValidMove(int newRow, int newCol, Board board) {
    if (newRow == row) {
      int colStep = (newCol > col) ? 1 : -1;
      for (int c = col + colStep; c != newCol; c += colStep) {
        if (board.cells[newRow][c] != null) return false;
      }
      return true;
    } else if (newCol == col) {
      int rowStep = (newRow > row) ? 1 : -1;
      for (int r = row + rowStep; r != newRow; r += rowStep) {
        if (board.cells[r][newCol] != null) return false;
      }
      return true;
    }
    return false;
  }
}