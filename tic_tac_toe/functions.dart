
String playerOne = 'x';
String playerTwo = 'O';
String player = '';


int isWinningColumn(List<List<String>> board, int i){
  if((board[0][i] == board[1][i]) && (board[1][i] == board[2][i])){
    if((board[0][i]== board[1][i]) == (board[2][i]==playerOne) ){
      print('player one win');
      return 1;
    }else if((board[0][i]== board[1][i]) == (board[2][i]==playerTwo)){
      print('player two win');
      return 2;
    }
    return 0;

  }
  return 0;
}


int isWinningRow(List<List<String>> board ,int i){
  if((board[i][0] == board[i][1]) && (board[i][1] == board[i]
  [2])&& board[i][0].isNotEmpty){
    if((board[i][0]== board[i][1]) == (board[i][2]==playerOne)){
      print('player one win');
      return 1;

    }else if((board[i][0]== board[i][1]) == (board[i][2]==playerTwo)){
      print('player two win');
      return 2;

    }
  }return 0;
}



int isWinning(List<List<String>> board ,int i){
  if(
  ((board[0][0] == board[1][1]) && (board[1][1] == board[2][2]))   ||
      ((board[0][2] == board[1][1]) && (board[1][1] == board[2][0]))

  ){

    if(board[1][1]== playerOne){
      print('player one win');
      return 1;
    }else  if(board[1][1]== playerOne){
      print('player two win');
      return 2;
    }
  }
  return 0;
}




playerShang(i){
  if(i.isEven){
    player = playerOne ;
    print('player one');
  }else{
    player=playerTwo ;
    print('player two');
  }
}



















