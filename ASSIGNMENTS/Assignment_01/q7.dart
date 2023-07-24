//customer id, name, unit consumed by the user, bill_amount
import 'dart:io';
void main() {
  int cus_id; 
  String cus_name;
  double units;
  double charge;
  double Bill;
  double total_amount;

  stdout.write("Enter the Idendity Number :");
  cus_id =  int.parse(stdin.readLineSync()!);

  stdout.write("Enter the Name :");
  cus_name= stdin.readLineSync()!;

  stdout.write("Enter the Number of Units concumed :");
  units = double.parse(stdin.readLineSync()!);

  if (units<=199) {
    charge=1.20;
  }
  else if (units>=200 && units<400) {
    charge=1.50;
  }
  else if (units>=400 && units<600) {
    charge=1.80;
  }
  else if (units>=600) {
    charge=2.00;
  }
  else {
    charge=1.00;
  }

//formula
    Bill=(units*charge);
    total_amount=Bill;

  print("Customer Indendity Number : $cus_id ");
  print("Customer Name : $cus_name ");
  print("Number of Units concumed : $units ");
  print("Total Bill Accounding to the Unit consumption : $total_amount");
  

}