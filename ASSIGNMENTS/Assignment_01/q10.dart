import 'dart:io';

void main() {

  double num1 , num2 , num3;

  stdout.write("Enter the First number :");
  num1= double.parse(stdin.readLineSync()!);

  stdout.write("Enter the First number :");
  num2= double.parse(stdin.readLineSync()!);

  stdout.write("Enter the First number :");
  num3= double.parse(stdin.readLineSync()!);

//To find largest
  if (num1>=num2 && num1>=num3) {
        print("Largest number is $num1"); 
  }
  else if (num2>=num1 && num2>=num3)  {
        print ("largest number is $num2");
        }
  else if (num3>=num1 && num3>=num2) {
        print("largest number is $num3");
  }


//To find lowest
if (num1<=num2 && num1<=num3) {
    print("Lowest number is $num1");
}
  else if (num2<=num1 && num2<=num3)  {
    print("Lowest number is $num2");
    }
  else if (num3<=num1 && num3<=num2) {
    print("Lowest number is $num3");
}


}