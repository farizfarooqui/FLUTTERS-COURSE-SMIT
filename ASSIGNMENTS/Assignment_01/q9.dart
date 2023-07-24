//Check if the number is even or odd, If number is even 
//then check if this is divisible by 5 or not & if number i
//s odd then check if this is divisible by 7 or not.
import 'dart:io';

void main() {

  int number ;

  stdout.write("Enter the number :");
  number = int.parse(stdin.readLineSync()!);

  if (number%2==0) {
    print("Even Number ");
      if (number%5==0) {
        print("Divisble By Five.");
      }
  }
  else if (number%3==0) {
    print("Odd Number ");
    if (number%7 == 0 ) {
      print("Divisble By Seven.");
  }
  }
}