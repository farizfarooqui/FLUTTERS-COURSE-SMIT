enum Week { Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday }
void main () {
  var day = Week.Saturday;
    switch (day) {
    case Week.Monday:
      print("It is Monday ka function call kro ");
      break;
    case Week.Tuesday:
      print("It is Tuesday ka function call kro ");
      break;
    case Week.Wednesday:
      print("It is Wednesday ka function call kro ");
      break;
    case Week.Thursday:
      print("It is Thursday ka function call kro ");
      break;
    case Week.Friday:
      print("It is Friday ka function call kro ");
      break;
    case Week.Saturday:
      print('It is Saturday ka function call kro ');
      break;
    case Week.Sunday:
      print("It is Sunday ka function call kro ");
      break;
  }
}
