//Q.6: Write a program to check whether an alphabet is a vowel or consonant.
import 'dart:io';
void main() {
  print("Enter the character : ");
  String ch = stdin.readLineSync()!;
  if (ch=="a" || 
      ch=="e" || 
      ch=="i" || 
      ch=="o" || 
      ch=="u" ||
      ch=="A" || 
      ch=="E" || 
      ch=="I" || 
      ch=="O" || 
      ch=="U")
       { stdout.write('Vowel');}
      else
     {stdout.write('Not Vowel');}
}
