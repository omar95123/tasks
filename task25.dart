import 'dart:io';
import 'dart:math';

void main() {
 final String word =randemword();
  print(word);
 guessLetter(word);
}

String randemword(){
  var file = File('sowpods.txt');
  List<String> word = file.readAsLinesSync();
  String randemWord = word[Random().nextInt(word.length)];
  return randemWord;
}


void guessLetter(String randomWord) {
  List guess = (" " * randomWord.length).split("");
  int i = 0;
  do {
    
    stdout.write("guess a letter: ");
    String input = stdin.readLineSync()!;
    if (randomWord[i] == input) {
        guess[i] = input;
      i = i+1;
        print('${i} letter right');
        if(guess.join('')==randomWord){
          print('Guess right');
        }
      }print('rong');
    print(guess.join(''));

  }while (guess.join('') != randomWord);
}
