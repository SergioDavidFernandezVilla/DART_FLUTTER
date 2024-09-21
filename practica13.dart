void main() {
  quiole().listen((value) {
    print("Steam: $value	");
  });
}

Stream<int> quiole() {
  return Stream.periodic(const Duration(seconds: 1), (value) {
    return value;
  }).take(10);
}
