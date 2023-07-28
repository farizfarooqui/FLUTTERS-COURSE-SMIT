// Q.9: Given a list of integers, write a dart code that returns
// the maximum value from the list.
void main() {
  List<int> nums = [1, 2, 3,  4, 5, 6, 7, 8, 9];
  if (nums.isEmpty) {
    print("The list is empty.");
  } else {
    int maxNumber = nums.reduce((value, element) => value > element ? value : element);
    print("The maximum number in the list is: $maxNumber");
  }
}
