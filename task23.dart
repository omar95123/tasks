import 'dart:io';
import 'dart:math';

void main() {
  final file = File('sowpods.txt');
  file.readAsString().then((text) {
    final data = text.split("\n");
    final word=data[Random().nextInt(data.length)];
    print(word);




  });











