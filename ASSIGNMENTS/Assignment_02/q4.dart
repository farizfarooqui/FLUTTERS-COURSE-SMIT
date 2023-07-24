//Q.4: Create a list of numbers & write a program to get the smallest 
//& greatest number from a list.

void main() {
  int largest_value ;
  List <int> number = [91,77,3,4,5,6,88,8,99,110,111,123,131,141,151,16,217,18,129,220];

  largest_value = number.reduce((current_largest, current_value)
  => current_largest > current_value ? 
  current_largest : current_value);
  print(number);
  print("Largest value of List is $largest_value");

}