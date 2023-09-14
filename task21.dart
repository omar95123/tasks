import 'dart:io';
import 'dart:math';


void main() {
  int x = 100;
  int numberOfGuess = 0;

  do {
    int randomNumber = Random().nextInt(x);
    print("Number is: $randomNumber");
    String? input = stdin.readLineSync();
    numberOfGuess += 1;
    if (input == 'high') {
      x = randomNumber;
    } else if (input == 'low') {
      x = randomNumber;
    }
    else if (input == 'right') {
      print('grate');
      print(numberOfGuess);
    }
  } while (true);
}
