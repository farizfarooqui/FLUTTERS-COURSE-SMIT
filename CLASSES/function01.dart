import 'dart:io';

void main() {
  
  MarkSheet();
}

 MarkSheet() {
  stdout.write('Please Enter your Name : ');
  var name = stdin.readLineSync()!;
  stdout.write('Please Enter your First Subject Marks : ');
  var Subject1 = int.parse(stdin.readLineSync()!);
  stdout.write('Please Enter your Second Subject Marks : ');
  var Subject2 = int.parse(stdin.readLineSync()!);
  stdout.write('Please Enter your Third Subject Marks : ');
  var Subject3 = int.parse(stdin.readLineSync()!);
  stdout.write('Please Enter your Fourth Subject Marks : ');
  var Subject4 = int.parse(stdin.readLineSync()!);
  stdout.write('Please Enter your fifth Subject Marks : ');
  var Subject5 = int.parse(stdin.readLineSync()!);
  stdout.write('Please Enter your sixth Subject Marks : ');
  var Subject6 = int.parse(stdin.readLineSync()!);
  var Grade;
  var percentage = ((Subject1+Subject2+Subject3+Subject4+Subject5+Subject6)/6);
  print('$name : $percentage');
  if (percentage >= 90) {
    Grade = 'A';
    print('Grade : $Grade');
  }
  else if (percentage<90 && percentage>=80) {
    Grade = 'B';
    print('Grade : $Grade');
  }
  else if (percentage<80 && percentage>=70) {
    Grade = 'C';
    print('Grade : $Grade');
  }
  else if (percentage<70 && percentage>=60) {
    Grade = 'D';
    print('Grade : $Grade');
  }
  else if (percentage<60 && percentage>=50) {
    Grade = 'D';
    print('Grade : $Grade');
  }
  else {
    Grade = 'F';
    print('Fail ! : $Grade');
  }
  return '$name : $percentage : $Grade';
}