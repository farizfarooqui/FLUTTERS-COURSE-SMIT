void main () {
List <String> student_name = ['fas' , 'ghj' , 'rty', 'kjh' ,'asd','hey'];
print(student_name); 
student_name.replaceRange(student_name.length-1, student_name.length , ['hello']);
print(student_name); 
print(student_name.last);
student_name.sort();
print(student_name);
student_name.insertAll(2, ['chup' , 'kar']);
student_name.sort();
print(student_name);
student_name.reversed;
print(student_name.reversed);
List student_name_dec = student_name.reversed.toList();
print(student_name_dec);
}