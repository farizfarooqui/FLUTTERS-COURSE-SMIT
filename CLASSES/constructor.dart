void main () {
  print('Hello World!');
  person person1 = person(Name: 'Fariz',Age : 44);
  person1.View();
  person person2 = person(Age: 76);
  person2.View();
  
}

class person {
  String Name;
  int Age;
  person({this.Name = 'John', this.Age=6});

  View() {
    print('Name is : $Name');
    print('Age is : $Age');
  }
}