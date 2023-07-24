//Q.3: A student will not be allowed to sit in exam if his/her attendance is less than 75%. Create integer variables and assign value:
//Number of classes held = 16,
//Number of classes attended = 10,
//and print percentage of class attended.
//Is student is allowed to sit in exam or not?


void main() {
int class_held=16;
int class_attend=10;
double perc=(class_attend/class_held*100);

print("The percentage of student is $perc");

if (perc>75) {
  print("Student is allowed");
}
else {
  print("Student is NOT allowed.!!");
}

}