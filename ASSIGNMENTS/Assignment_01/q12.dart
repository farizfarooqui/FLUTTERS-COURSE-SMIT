//Q12: Write a program to convert Celsius  to Fahrenheit   .
//i.e: Temperature in degrees Fahrenheit (°F) = (Temperature in degrees Celsius (°C) * 9/5) + 32

import 'dart:io';

void main() {

  double cel_temp;
  double fah_temp;
  stdout.write('Enter the temperature in celsius : ');
  cel_temp= double.parse(stdin.readLineSync()!);   

  //conversion
  fah_temp= (cel_temp*(9/5) + 32);
  print("Temperature in Fahrenheit is : $fah_temp^F");

}