void main() {

  List <int> numbers = [8577,486, 75, 47 ,3,5,6,6789,4453,1,23];
  List <int> even_numbers = [];
  List <int> odd_numbers = [];
   for(int i = 0; i < numbers.length ; i++ ) {
    if (numbers[i]%2==0) {
      even_numbers.add(numbers[i]);
    }
    else {
      odd_numbers.add(numbers[i]);
    }
   }

   print(even_numbers);
   print(odd_numbers);




}