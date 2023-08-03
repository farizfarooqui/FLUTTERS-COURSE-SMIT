import 'dart:io';
void main () {
  square();
  triangle_1();
  triangle_2();
  triangle_3();
  Pramaid();

}

square() {
  print('Square shape : ');
  for (var i = 0; i < 5; i++) {
    for (var j = 0; j < 5; j++) {
     stdout.write('*');
    }
    print(' ');
  }
  print(' ');
}

triangle_1() {
  // *
  // **
  // ***
  // ****
  // *****
  print('Triangle shape :');
  for (var i = 0; i < 5; i++) {
    for (var j = 0; j <=i ; j++) {
      stdout.write('${j+1}');
    }
    print(' ');
  }
  print(' ');
}

triangle_2() {
  // *****
  // ****
  // ***
  // **
  // *
  print('Triangle shape :');
  for (var i = 0; i < 5; i++) {
    for (var j = i; j <5 ; j++) {
      stdout.write('*');
    }
    print(' ');
  }
  print(' ');
}

triangle_3() {
  print('Triangle shape :');
  for (var i = 1; i < 5; i++) {
    stdout.write('${' ' * (5-i)}');
    for (var j = 1; j <= i ; j++) {
      stdout.write('*');
    }
    print(' ');
  }
  print(' ');
}

Pramaid() {
  //     *
  //    * *
  //   * * *
  // * * * * *
  print('Piramaid shape :');
  for (var i = 1; i < 5; i++) {
    stdout.write('${' ' * (5-i)}');
    for (var j = 1; j <= i ; j++) {
      stdout.write('* ');
    }
    print(' ');
  }
  print(' ');
}