import 'package:chess/core/chess/board.dart';
import 'package:chess/core/chess/pieces/piece.dart';

class Pawn extends Piece {
  Pawn(PieceColor color, int row, int col)
      : super(PieceType.Pawn, color, row, col);

  @override
  bool isValidMove(int newRow, int newCol, Board board) {
    if (color == PieceColor.White) {
      if (newCol == col && newRow == row - 1 && board.cells[newRow][newCol] == null) {
        return true;
      }
      if (newCol == col &&
          newRow == row - 2 &&
          row == 6 &&
          board.cells[newRow][newCol] == null) {
        return true;
      }
      if ((newCol == col - 1 || newCol == col + 1) &&
          newRow == row - 1 &&
          board.cells[newRow][newCol]?.color == PieceColor.Black) {
        return true;
      }
    } else {
      if (newCol == col && newRow == row + 1 && board.cells[newRow][newCol] == null) {
        return true;
      }
      if (newCol == col &&
          newRow == row + 2 &&
          row == 1 &&
          board.cells[newRow][newCol] == null) {
        return true;
      }
      if ((newCol == col - 1 || newCol == col + 1) &&
          newRow == row + 1 &&
          board.cells[newRow][newCol]?.color == PieceColor.White) {
        return true;
      }
    }
    return false;
  }
}
