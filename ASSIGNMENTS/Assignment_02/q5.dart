//Q.5: Create a map with name, phone keys and
// store some values to it. Use where to find all keys that have length 4.


void main() {

  Map info = {'Name' : 'Fariz' , 'Phone' : '0313301'};
  Iterable <dynamic> ans = info.keys.where((key) => key.length == 4);
  print(ans);


  }
