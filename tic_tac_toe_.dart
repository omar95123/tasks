import 'dart:io';



void main() {
  bool anyOneWins = false;
  int player = 0;

  List<List<String>> board =
  List.generate(3, (_) => List.generate(3, (_) => ' '));
  drawBoard(board);

  do {
    player++;
    if (player == 10) {
      print("No One Wins, It's a Draw");
      break;
    }
    final coordinates = getUserInput(board);
    board[coordinates.first][coordinates.last] =
    player % 2 == 0 ? playerTwo : playerOne;
    drawBoard(board);
    int winner = hasWon(board);
    switch (winner) {
      case 1:
        print("Player One Wins");
        anyOneWins = true;
        break;
      case 2:
        print("Player Two Wins");
        anyOneWins = true;
        break;
      default:
        print("");
    }
  } while (!anyOneWins);
}

String playerOne = 'x';
String playerTwo = 'O';
void drawBoard(List<List<String>> board) {
  String row1 = "| ${board[0][0]} | ${board[0][1]} | ${board[0][2]} |";
  String row2 = "| ${board[1][0]} | ${board[1][1]} | ${board[1][2]} |";
  String row3 = "| ${board[2][0]} | ${board[2][1]} | ${board[2][2]} |";
  String border = "\n --- --- ---\n";

  print(border + row1 + border + row2 + border + row3 + border);
}

int hasWon(List<List<String>> board) {
  int row = wonByRow(board);
  if (row != -1) {
    print("Won By Row");
    return row;
  } else {
    int column = wonByColumn(board);
    if (column != -1) {
      print("Won By Column");
      return column;
    } else {
      int diagonal = wonByDiagonal(board);
      if (diagonal != -1) {
        print("Won By Diagonal");
      }
      return diagonal;
    }
  }
}

int wonByRow(List<List<String>> board) {
  for (int i = 0; i < 3; i++) {
    if ((board[i][0] == board[i][1]) &&
        (board[i][1] == board[i][2]) &&
        board[i][0] != " ") {
      if (board[i][0] == playerOne) {
        return 1;
      } else {
        return 2;
      }
    }
  }
  return -1;
}

int wonByColumn(List<List<String>> board) {
  for (int i = 0; i < 3; i++) {
    if ((board[0][i] == board[1][i]) &&
        (board[1][i] == board[2][i]) &&
        board[0][i] != " ") {
      if (board[0][i] == playerOne) {
        return 1;
      } else {
        return 2;
      }
    }
  }
  return -1;
}

int wonByDiagonal(List<List<String>> board) {
  if ((((board[0][0] == board[1][1]) && (board[1][1] == board[2][2])) ||
      ((board[0][2] == board[1][1]) && (board[1][1] == board[2][0]))) &&
      board[1][1] != " ") {
    if (board[1][1] == playerOne) {
      return 1;
    } else {
      return 2;
    }
  } else {
    return -1;
  }
}

List<int> getUserInput(List<List<String>> board) {
  late List<int> coordinates;
  do {
    print("Enter New Coordinates, Note that it should be empty cell");
    coordinates =
        stdin.readLineSync()!.split(" ").map((x) => int.parse(x)).toList();
  } while (board[coordinates.first][coordinates.last] != " ");
  return coordinates;
}
