class Person {
  String name;
  int age;

  // Default constructor
  Person(this.name, this.age);

  // Named constructor
  factory Person.fromBirthYear(String name, int birthYear) {
    int currentYear = DateTime.now().year;
    int age = currentYear - birthYear;
    return Person(name, age);
  }

  void introduce() {
    print("Hi, my name is $name, and I am $age years old.");
  }
}

void main() {
  // Using the default constructor
  var person1 = Person("Alice", 30);
  person1.introduce();

  // Using the named constructor
  var person2 = Person.fromBirthYear("Bob", 1990);
  person2.introduce();
}

// cop() {
//   class Person {
//   String name;
//   int age;

//   // Default constructor
//   Person(this.name, this.age);

//   // Named constructor
//   Person.fromBirthYear(String name, int birthYear) {
//     this.name = name;
//     this.age = DateTime.now().year - birthYear;
//   }

//   void introduce() {
//     print("Hi, my name is $name, and I am $age years old.");
//   }
// }

// void main() {
//   // Using the default constructor
//   var person1 = Person("Alice", 30);
//   person1.introduce();

//   // Using the named constructor
//   var person2 = Person.fromBirthYear("Bob", 1990);
//   person2.introduce();
// }

// }