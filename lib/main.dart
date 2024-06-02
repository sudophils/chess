import 'package:flutter/material.dart';
import 'core/chess/chess.dart';
import 'core/chess/pieces/piece.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Chess chess = Chess();
    chess.setup();
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Chess')),
        body: ChessBoardWidget(chess: chess),
      ),
    );
  }
}

class ChessBoardWidget extends StatefulWidget {
  final Chess chess;

  ChessBoardWidget({required this.chess});

  @override
  _ChessBoardWidgetState createState() => _ChessBoardWidgetState();
}

class _ChessBoardWidgetState extends State<ChessBoardWidget> {
  Piece? selectedPiece;
  int? selectedRow;
  int? selectedCol;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 8),
      itemBuilder: (context, index) {
        int row = index ~/ 8;
        int col = index % 8;
        Piece? piece = widget.chess.board.cells[row][col];
        return GestureDetector(
          onTap: () {
            setState(() {
              if (selectedPiece != null &&
                  selectedRow != null &&
                  selectedCol != null) {
                if (widget.chess.movePiece(selectedPiece!, row, col)) {
                  selectedPiece = null;
                  selectedRow = null;
                  selectedCol = null;
                }
              } else if (piece != null &&
                  piece.color == widget.chess.currentTurn) {
                selectedPiece = piece;
                selectedRow = row;
                selectedCol = col;
              }
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: (row + col) % 2 == 0 ? Colors.white : Colors.grey,
            ),
            child: piece != null
                ? Image.asset(
                    'assets/pieces/${piece.color == PieceColor.White ? 'white' : 'black'}_${piece.type.toString().split('.').last.toLowerCase()}.png')
                : null,
          ),
        );
      },
      itemCount: 64,
    );
  }
}
