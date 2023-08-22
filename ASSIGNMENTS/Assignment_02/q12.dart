// Q.12: Write a Dart code that takes in a list of strings and
// prints a new list with the elements in reverse order. 
//The original list should remain unchanged.
import 'dart:io';
void main() {
  print("Please enter a string:");
  // Read the input from the user
  String input = stdin.readLineSync()!;
  // Remove any leading or trailing whitespaces from the input
  input = input.trim();
  // Process the input or print it
  print("You entered: $input");
}
