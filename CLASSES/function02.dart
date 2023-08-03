import 'dart:io';

void main () {
  student_info(name: 'Farizoo');
}


student_info({String? name}) {
  String? abc = name;
  print('Name : $abc');
  stdout.write('Enter age : ');
  int? age = int.parse(stdin.readLineSync()!);
  print("Age : $age");
  String result = age>=18 ? 'Allow' : 'Not Allow';
  print(result);
}
