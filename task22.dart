import 'dart:io';
import 'dart:math';


void main() {
  print ('input three number');
  int one = int.parse(stdin.readLineSync() ?? '');
  int two = int.parse(stdin.readLineSync() ?? '');
  int three = int.parse(stdin.readLineSync() ?? '');

  if((one > two)&&(one >three)){
    print('${one} is the largest of the three');
  }else if((two > one)&&(two >three)){
    print('${two} is the largest of the three');
  }else{
    print('${three} is the largest of the three');
  }
}