void main () {
 Limousine mrfariz_ki = Limousine();
 mrfariz_ki.move();
 mrfariz_ki.High_octain();
 mrfariz_ki.Air_con();
  // creating object of wagon toattain encapsulation
 wagon obj = wagon();
 obj._vehicle_color;


}
mixin AC {
  Air_con () { print ('Air conditioner is running');}
}
class vehicle {
  String _vehicle_color= "Loud";
  move()  {print('it is moving');}
  horn()  {print('horn is loud');}
  brake() {print('brakes are working');}
}
class car extends vehicle with AC {
  high_speed() {print('High speeding');}
}
 class truck extends vehicle{
  deisel() {print('working on deisel');}
 }
 class wagon extends vehicle with AC{
  Four_wheel() {print('Four wheel drive');}
 }
 class Limousine extends vehicle with AC {
  High_octain() {print('Works on High octain petrol');}
 }