import 'dart:io';

void main() {

  MarkSheet('faaaas',45,67,89,98,76,78);

}

MarkSheet(var name , var Subject1,var Subject2,var Subject3,var Subject4,var Subject5,var Subject6) {
  stdout.write('Please Enter your Name : ');
  name = stdin.readLineSync();
  stdout.write('Please Enter your First Subject Marks : ');
  Subject1 = stdin.readLineSync();
  stdout.write('Please Enter your Second Subject Marks : ');
  Subject2 = stdin.readLineSync();
  stdout.write('Please Enter your Third Subject Marks : ');
  Subject3 = stdin.readLineSync();
  stdout.write('Please Enter your Fourth Subject Marks : ');
  Subject4 = stdin.readLineSync();
  stdout.write('Please Enter your fifth Subject Marks : ');
  Subject5 = stdin.readLineSync();
  stdout.write('Please Enter your sixth Subject Marks : ');
  Subject6 = stdin.readLineSync();
  var Grade;
  var percentage = ((Subject1+Subject2+Subject3+Subject4+Subject5+Subject6)/6);
  print('$name : $percentage');
  if (percentage >= 90) {
    Grade = 'A';
    print(Grade);
  }
  else if (percentage<90 && percentage>=80) {
    Grade = 'B';
    print(Grade);
  }
  else if (percentage<80 && percentage>=70) {
    Grade = 'C';
    print(Grade);
  }
  else if (percentage<70 && percentage<=60) {
    Grade = 'D';
    print(Grade);
  }
  else if (percentage<60 && percentage<=50) {
    Grade = 'D';
    print(Grade);
  }
  else {
    Grade = 'F';
    print('Fail ! : $Grade');
  }
  return '$name : $percentage : $Grade';
}