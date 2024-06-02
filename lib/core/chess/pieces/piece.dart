import '../board.dart';

enum PieceType { King, Queen, Rook, Bishop, Knight, Pawn }
enum PieceColor { White, Black }

class Piece {
  final PieceType type;
  final PieceColor color;
  int row;
  int col;

  Piece(this.type, this.color, this.row, this.col);

  bool isValidMove(int newRow, int newCol, Board board) {
    // Add piece-specific move logic here
    // For simplicity, let's assume all moves are valid for now
    return true;
  }

  void move(int newRow, int newCol, Board board) {
    if (isValidMove(newRow, newCol, board)) {
      // Execute the move
      board.cells[row][col] = null;
      row = newRow;
      col = newCol;
      board.cells[row][col] = this;
    }
  }
}