//
//Q8: Create a marksheet using operators of at least 5 subjects and output should have Student Name, Student Roll Number, Class, Percentage, Grade Obtained etc.
//i.e: Percentage should be rounded upto 2 decimal places only.

import 'dart:io';

void main() {

  String Name ;
  String class_name;
  double sub_1 ,sub_2, sub_3, sub_4 , sub_5;
  String Grade;
  double perc;

  stdout.write("Enter the Name :");
  Name=stdin.readLineSync()!;

  stdout.write("Enter the Class Name :");
  class_name=stdin.readLineSync()!;

  stdout.write("Enter the Marks of Subject English :");
  sub_1 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the Marks of Subject Maths:");
  sub_2 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the Marks of Subject History :");
  sub_3 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the Marks of Subject Islamiyat :");
  sub_4 = double.parse(stdin.readLineSync()!);

  stdout.write("Enter the Marks of Subject Science :");
  sub_5 = double.parse(stdin.readLineSync()!);


  perc = ((sub_1+sub_2+sub_3+sub_4+sub_5)/500*100);

  if (perc>90) {
    Grade="A";
  }
  else if (perc<=90 && perc>80) {
    Grade="B";
  }
  else if (perc<=80 && perc>70) {
    Grade="C";
  }
  else if (perc<=70 && perc>60) {
    Grade="D";
  }
  else if (perc<=60 && perc>50) {
    Grade="E";
  }
  else {
    Grade=("Fail!!");
  }
  


  print("Name   |  Class  |  Percentage  |  Grade  ");
  print("$Name  |  $class_name  |  $perc  |  $Grade");


}