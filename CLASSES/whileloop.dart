import 'dart:io';

void main () {
  var email;
  var password;
  bool log = false;
  while (log==false) {
  stdout.write('Enter your email :');
  email = stdin.readLineSync();
  stdout.write('Enter your Password :');
  password = stdin.readLineSync();
  if (email=='fariz@gmail.com' && password=='123456') {
    print('Login successfully');
    log=true;
  }
  else {
        print('Login Failed');
  }
  }

}