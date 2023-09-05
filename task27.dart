import 'dart:io';



void main() {
  var scientists ={'Albert Einstein':'04/1/1996','Benjamin Franklin':'20/8/2000','Ada Lovelace':'16/6/1833'};
  print('Welcome to the birthday dictionary');
  print('Who\'s birthday do you want to look up?');
  print(scientists.keys);
  String name = stdin.readLineSync()!;
  print('${name}  birthday is ${scientists[name]}');
    print('other scientist');
  print('other scientist');
  String na = stdin.readLineSync()!;


  do{
    if(na =='yes'){
      print('Who\'s birthday do you want to look up?');
      String name = stdin.readLineSync()!;

      if(name ==scientists.keys){
        print('${name}  birthday is ${scientists[name]}');
      }else{
        print('rong name');
      }
      print('other scientist');
      na = stdin.readLineSync()!;
    }else{
      print('add  scientists');
    }

  }while(na =='yes');
  print('add  scientists');
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
      print('ok');
    }

  }while(add =='yes');





}
