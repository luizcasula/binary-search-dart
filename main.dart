void main() {
  List<int> array = [1, 2, 4, 5, 7, 8, 9, 10];
  var test = binarySearch(array, 11);
  print(test);
}



binarySearch(List<dynamic> array, var target) {
  int left = 0;
  int right = array.length - 1;

  int middlePosition = (left + right) ~/ 2;

  while (true) {
    var middleElement = array[middlePosition];

    if (middleElement == target) return middlePosition;

    if (target < middleElement) right = middlePosition - 1;

    if (target > middleElement) left = middlePosition + 1;

    if (left > right) return -1;

    middlePosition = (left + right) ~/ 2;
  }
}
