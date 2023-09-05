import 'dart:io';



void main() {
  List<String> birthday=['04/1/1996','20/8/2000','16/6/1833'];
  print('Welcome to the birthday dictionary. We know the birthdays of:');
  print('Albert Einstein');
  print('Benjamin Franklin');
  print('Ada Lovelace');
  print('Who\'s birthday do you want to look up?');
  String name = stdin.readLineSync()!;


  if(name == 'Albert Einstein'){
    print('${name}  birthday is ${birthday[0]}');
  }else if(name == 'Benjamin Franklin'){
    print('${name}  birthday is ${birthday[1]}');
  }else if(name == 'Ada Lovelace'){
    print('${name}  birthday is ${birthday[2]}');
  }else{
    print('rong name');
  }


}