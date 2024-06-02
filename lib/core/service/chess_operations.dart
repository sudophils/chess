abstract class IChessOperations{

  startGame();

  bool isValidMove();
  // List<Map<String, String>> capture();
  move(int current, int next);
  bool isCheck();
  bool isCheckMate();
  checkMate();

}