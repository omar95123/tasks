import 'dart:io';
import 'functions.dart';


void main() {

  List<List<String>> board =
  List.generate(3, (_) => List.generate(3, (_) => ' '));

  void drower(List<List<String>> board) {

    String row1 = "| ${board[0][0]} | ${board[0][1]} | ${board[0][2]} |";
    String row2 = "| ${board[1][0]} | ${board[1][1]} | ${board[1][2]} |";
    String row3 = "| ${board[2][0]} | ${board[2][1]} | ${board[2][2]} |";
    String border = "\n --- --- ---\n";

    print(border + row1 + border + row2 + border + row3 + border);
  }
  drower(board);




  bool playerwin = false;

  if(playerwin == false){
    for(int i =0 ;playerwin == false  ;i++){
      playerShang( i);
      List choice = stdin.readLineSync()!.split(" ") ;

      board[int.parse(choice[0])][int.parse(choice[1])] = player ;
      drower(board);


      for(int i =0; i<3; i++){
        int winner = isWinningColumn(board,i);
        if(winner != 0){
          playerwin = true;
          break;
        }
        int rowWin=  isWinningRow(board,i);
        if(rowWin != 0){
          playerwin = true;
          break;
        }
        int win= isWinning(board,i);
        if(win !=0){
          playerwin =true ;
          break;
        }

      }

    }

    print( 'end');
  }

}