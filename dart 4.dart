import 'dart:io';

void main() {
 
  String name = "Alice";
  String greeting = "Hello, $name!";
  print(greeting);

  String reversedName = name.split('').reversed.join('');
  print("Reversed name: $reversedName");

  String uppercaseName = name.toUpperCase();
  print("Uppercase name: $uppercaseName");

  
  List<String> fruits = ['apple', 'banana', 'orange'];
  fruits.add('grape');
  fruits.remove('banana');

  Set<int> numbers = {1, 2, 3, 2, 1}; // Sets eliminate duplicates

  Map<String, int> ages = {'Alice': 25, 'Bob': 30};
  ages['Charlie'] = 28;

  
  File file = File('data.txt');
  file.writeAsStringSync('Hello, world!');

  List<String> lines = file.readAsLinesSync();
  for (String line in lines) {
    print(line);
  }


  DateTime now = DateTime.now();
  print(now);

  DateTime birthday = DateTime(2000, 1, 1);
  int age = now.difference(birthday).inDays ~/ 365;
  print("Age: $age");

 
  print("Enter your name:");
  String userName = stdin.readLineSync()!;

  print("Enter a message:");
  String message = stdin.readLineSync()!;

  DateTime now = DateTime.now();
  String logEntry = "$now: $userName - $message";

  File logFile = File('log.txt');
  logFile.writeAsStringSync(logEntry, mode: FileMode.append);

  print("Log entry added successfully!");
}