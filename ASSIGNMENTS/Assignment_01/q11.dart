//Q11: Write a program to calculate root of any number.
//i.e: √y = y½

import 'dart:io';
// library for calculating sqroot
import 'dart:math';

void main() {

  double num ;
  stdout.write("Enter the number :");
  num =  double.parse(stdin.readLineSync()!);
  num = sqrt(num);

  print("The root of the number is : $num");

}