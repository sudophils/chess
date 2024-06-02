import 'package:chess/core/chess/pieces/bishop.dart';
import 'package:chess/core/chess/pieces/king.dart';
import 'package:chess/core/chess/pieces/knight.dart';
import 'package:chess/core/chess/pieces/pawn.dart';
import 'package:chess/core/chess/pieces/piece.dart';
import 'package:chess/core/chess/pieces/queen.dart';
import 'package:chess/core/chess/pieces/rook.dart';

class Board {
  List<List<Piece?>> cells = List.generate(8, (_) => List.filled(8, null));

  void setup() {
    // Clear the board first
    cells = List.generate(8, (_) => List.filled(8, null));

    // Set up white pieces
    cells[0][0] = Rook(PieceColor.White, 0, 0);
    cells[0][1] = Knight(PieceColor.White, 0, 1);
    cells[0][2] = Bishop(PieceColor.White, 0, 2);
    cells[0][3] = Queen(PieceColor.White, 0, 3);
    cells[0][4] = King(PieceColor.White, 0, 4);
    cells[0][5] = Bishop(PieceColor.White, 0, 5);
    cells[0][6] = Knight(PieceColor.White, 0, 6);
    cells[0][7] = Rook(PieceColor.White, 0, 7);
    for (int i = 0; i < 8; i++) {
      cells[1][i] = Pawn(PieceColor.White, 1, i);
    }

    // Set up black pieces
    cells[7][0] = Rook(PieceColor.Black, 7, 0);
    cells[7][1] = Knight(PieceColor.Black, 7, 1);
    cells[7][2] = Bishop(PieceColor.Black, 7, 2);
    cells[7][3] = Queen(PieceColor.Black, 7, 3);
    cells[7][4] = King(PieceColor.Black, 7, 4);
    cells[7][5] = Bishop(PieceColor.Black, 7, 5);
    cells[7][6] = Knight(PieceColor.Black, 7, 6);
    cells[7][7] = Rook(PieceColor.Black, 7, 7);
    for (int i = 0; i < 8; i++) {
      cells[6][i] = Pawn(PieceColor.Black, 6, i);
    }
  }
}