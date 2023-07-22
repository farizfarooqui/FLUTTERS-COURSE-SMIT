
void main() {

  // List datatype

  List student_name=['Fariz','ali','Haider','SHO','Bilal','ZUB','Hee','SHE','ZYTR','Fariz'];
  //print(student_name[2]);
  //print(student_name.first);
  //print(student_name[student_name.length-1]);

  // updating list
  print(student_name);
  student_name.replaceRange(student_name.length-1, student_name.length, ['Farooqui']);
  print(student_name);

  // sorting the list
  student_name.sort();
  print(student_name);

  // adding the list in last
  student_name.add('ZAYN');
  print(student_name);

// reversing the list but it change its type
print(student_name.reversed);
student_name.add('FF');
print(student_name); 

List <int> student_numbers = [1,2,4,6,8,9];
print(student_numbers);
student_numbers.removeWhere((element) => element>4);
print(student_numbers);

}