import 'dart:io';
import 'dart:math';

void main() {
 final String word =randemword();
  print(word);
 guessLetter(word);
}

String randemword(){
  final random = Random();
  var file = File('sowpods.txt');
  List<String> wordList = file.readAsLinesSync();
  String word = wordList[random.nextInt(wordList.length)];
  return word;
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
