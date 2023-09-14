import 'dart:io';



void main() {
  Map<String,String> scientists ={'Albert Einstein':'04/1/1996','Benjamin Franklin':'20/8/2000','Ada Lovelace':'16/6/1833'};
  print('Welcome to the birthday dictionary');
  print('Who\'s birthday do you want to look up?');
  print(scientists.keys);
  String name = stdin.readLineSync()!;
  print('${name}  birthday is ${scientists[name]}');
  print(' add  scientists');
  String add = stdin.readLineSync()!;
  do{

    if (add == 'yes'){
      print('name');
      String newName = stdin.readLineSync()!;
      print('birthday');
      String birthday = stdin.readLineSync()!;
      scientists[newName] = birthday;
      print(scientists);
      print('add  scientists');
      add = stdin.readLineSync()!;
    }else{
      print('end');
    }

  }while(add =='yes');





}
