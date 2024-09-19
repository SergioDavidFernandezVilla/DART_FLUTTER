void main() {
  final listNumbers = [1, 2, 3, 4, 5, 5, 5, 5, 6, 7, 8, 9];

  print("Lista original: ${listNumbers}");

  final reversedListNumbers = listNumbers.reversed;
  print("Lista iterable: ${reversedListNumbers}");

  final listNumbersLIST = reversedListNumbers.toList();
  print("Lista LISTA XD: $listNumbersLIST");

  final listNumbersSET = reversedListNumbers.toSet();
  print("Lista SET: ${listNumbersSET}");

  final variable = listNumbers.where((num) {
    return num > 5;
  });

  print("Nose : ${variable}");
}
