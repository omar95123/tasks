
import 'package:flutter/cupertino.dart';
import 'dart:io';




void main() {
  // List<List<String>> board =
  // List.generate(3, (_) => List.generate(3, (_) => ' '));
  // String playerOne = 'x';
  // String playerTwo = 'O';
  // String player = '';
  //
  //
  // for(int i =0 ;i<10 ;i++){
  //   if(i.isEven){
  //     player = playerOne ;
  //     print('player one');
  //   }else{
  //     player=playerTwo ;
  //     print('player two');
  //   }
  //   List choice = stdin.readLineSync()!.split(" ") ;
  //   board[int.parse(choice[0])][int.parse(choice[1])] = player ;
  //   print(board);






    /////////////////////////

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


    String playerOne = 'x';
    String playerTwo = 'O';
    String player = '';

    for(int i =0 ;i<9 ;i++){
      if(i.isEven){
        player = playerOne ;
        print('player one');
      }else{
        player=playerTwo ;
        print('player two');
      }
      List choice = stdin.readLineSync()!.split(" ") ;
      board[int.parse(choice[0])][int.parse(choice[1])] = player ;
      drower(board);
      for(int i =0; i<3; i++){
        if((board[0][i] == board[1][i]) && (board[1][i] == board[2][i])){

          if((board[0][i]== board[1][i]) == (board[2][i]==playerOne) ){
            print('player one win');
          }else if((board[0][i]== board[1][i]) == (board[2][i]==playerTwo)){
            print('player two win');
          }

        }
        else if((board[i][0] == board[i][1]) && (board[i][1] == board[i]
        [2])&& board[i][0].isNotEmpty){
          if((board[i][0]== board[i][1]) == (board[i][2]==playerOne)){
            print('player one win');
          }else if((board[i][0]== board[i][1]) == (board[i][2]==playerTwo)){
            print('player two win');
          }
        }else if(
        ((board[0][0] == board[1][1]) == (board[1][1] == board[2][2]))   ||
            ((board[0][2] == board[1][1]) && board[1][1] == board[2][0])

        ){

          if(board[1][1]== playerOne){
            print('player one win');
          }else  if(board[1][1]== playerOne){
            print('player two win');
          }


        }else{
          print("No one win");
        }
      }





    }







}






