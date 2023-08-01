import 'dart:io';

void main () {
  var email;
  var password;
  int i =0;
  bool log = false;
  while (log==false && i<3) {
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
        i++;
        if (i==3) {
          print('3 Failed attemps, Try Again Later !');
        }
  }
  }
}