// Q.10: Write a Dart code that takes in a list of strings and removes any
// duplicate elements, returning a new list without duplicates.
// The order of elements in the new list should be the same as in the original list.

  List<String> removeDuplicates(List<String> inputList) {
  List<String> result = [];
  Set<String> uniqueElements = {};
  for (String element in inputList) {
    if (!uniqueElements.contains(element)) {
      uniqueElements.add(element);
      result.add(element);
    }
  }
  return result;
}
void main() {
  List<String> originalList = ["apple", "banana", "orange", "apple", "grape", "orange"];
  List<String> newList = removeDuplicates(originalList);
  print("Original List : $originalList");
  print("List without duplicates : $newList");
}
