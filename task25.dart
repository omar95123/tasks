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
    i = i+1;
    stdout.write("guess a letter: ");
    String input = stdin.readLineSync()!;
    for (var i = 0; i < randomWord.length; i++) {
      if (randomWord[i] == input) {
        guess[i] = input;
        print('${i+1} letter right');
        if(guess.join('')==randomWord){
          print('Guess right');
        }
      }print('rong');
    }
    print(guess);

  }while (guess.join('') != randomWord);
}