import 'package:chess/core/chess/board.dart';
import 'package:chess/core/chess/pieces/piece.dart';

class Bishop extends Piece {
  Bishop(PieceColor color, int row, int col) : super(PieceType.Bishop, color, row, col);

  @override
  bool isValidMove(int newRow, int newCol, Board board) {
    int rowDiff = (newRow - row).abs();
    int colDiff = (newCol - col).abs();
    if (rowDiff != colDiff) return false;

    int rowStep = (newRow > row) ? 1 : -1;
    int colStep = (newCol > col) ? 1 : -1;
    for (int r = row + rowStep, c = col + colStep; r != newRow && c != newCol; r += rowStep, c += colStep) {
      if (board.cells[r][c] != null) return false;
    }
    return true;
  }
}