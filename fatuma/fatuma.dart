import 'dart:io';

void main() {
  print('Welcome to the User Interactor!');
  print('What is your name?');

  // Read user input
  String? userName = stdin.readLineSync();

  print('Hello, $userName!');

  print('How old are you?');

  // Read user input
  String? userAge = stdin.readLineSync();

  int age = int.parse(userAge!);

  if (age < 18) {
    print('You are a minor!');
  } else {
    print('You are an adult!');
  }
}