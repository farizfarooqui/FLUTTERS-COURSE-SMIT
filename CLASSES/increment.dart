void main() {

  var abc = 0;

  var a = abc--;
  //a =0 
  //abc = -1
  var b = abc--;

  var c = ++b;
  // c = 0
  // b = 0
  var d = a++;
  // d = 0
  // a = 1 
  var f = --c;

  var q = f++;
  var w = -1;
  var result = (w++ + --d);
  print(result);
  print(q);

  //  0 + -1 = -1


 // result = -2
 // w=0

}