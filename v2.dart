import 'dart:io';

void main() {
  List<String> listWords = getWords();
  var i = binarySearch(listWords, "zambujo");
  print(i);
  assert(i >= 0);
  print(listWords[i]);

  List<int> listNumbers = [1, 2, 4, 5, 7, 8, 9, 10];
  i = binarySearch(listNumbers, 5);
  print(i);
  assert(i >= 0);
  print(listNumbers[i]);

}

List<String> getWords() {
  var path = "words.txt";
  File file = File(path);
  return file
      .readAsStringSync()
      .split("\n")
      .where((w) => w.isNotEmpty)
      .toList();
}

binarySearch(List<dynamic> array, dynamic target) {
  int left = 0;
  int right = array.length - 1;
  
  int middlePosition;
  while (left <= right) {
    middlePosition = (left + right) ~/ 2;
    int compare = target.compareTo(array[middlePosition]);

    if (compare == 0) return middlePosition;

    if (compare < 0)
      left = middlePosition + 1;
    else
      right = middlePosition - 1;

    if (left > right) return -1;
  }
}