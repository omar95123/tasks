import 'dart:io';


void main() {
   String randomWord = "evaporate";
  guessLetter(randomWord);
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
       if(guess.join('')==randomWord){
         print('Guess right');
       }
      }
    }
    print(guess.join(''));
    
  }while (guess.join('') != randomWord);
}
