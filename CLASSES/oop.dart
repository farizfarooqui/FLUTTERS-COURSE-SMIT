void main () {
  student_info obj = student_info();
  print(student_info());
  print(obj.name);
  obj.View();
  student_info obj1 = student_info();
  obj1.name= 'Hello';
  obj1.View();
  obj.View();
}
class student_info {
  var name= 'Fariz';
  var age = 20;
  var rollno = 'cs123';
  var section = 'Beta';

  View() {
    print("Name: $name");
    print("Age: $age");
    print("Roll no : $rollno");
    print("Section : $section");
    }
    display() {
    print("Name: $name");
    print("Age: $age");
    print("Roll no : $rollno");
    print("Section : $section");
    }
  
  
  }
  

  