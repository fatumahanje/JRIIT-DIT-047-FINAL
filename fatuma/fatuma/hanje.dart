import 'dart:io';

void main() {
  print('Welcome to the User Interactor!');
  print('What is your name?');

  // Read user input
  String? userName = stdin.readLineSync();

  // Validate user input
  while (userName == null || userName.isEmpty) {
    print('Please enter a valid name.');
    userName = stdin.readLineSync();
  }

  print('Hello, $userName!');

  print('How old are you?');

  // Read user input
  String? userAge = stdin.readLineSync();

  // Validate user input
  while (userAge == null || !userAge.contains(RegExp(r'^\d+$'))) {
    print('Please enter a valid age.');
    userAge = stdin.readLineSync();
  }

  int age = int.parse(userAge!);

  if (age < 18) {
    print('You are a minor!');
  } else {
    print('You are an adult!');
  }

  // Ask additional questions
  print('What is your favorite color?');
  String? favoriteColor = stdin.readLineSync();

  print('What is your favorite hobby?');
  String? favoriteHobby = stdin.readLineSync();

  // Store user data in a map
  Map<String, String> userData = {
    'name': userName,
    'age': userAge,
    'favoriteColor': favoriteColor,
    'favoriteHobby': favoriteHobby,
  };

  // Print a summary of the user's data
  print('Summary:');
  print('Name: ${userData['name']}');
  print('Age: ${userData['age']}');
  print('Favorite Color: ${userData['favoriteColor']}');
  print('Favorite Hobby: ${userData['favoriteHobby']}');
}