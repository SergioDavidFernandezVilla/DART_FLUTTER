void main() {
  EmitirArreglo().listen((value) => print("Valor: $value	"));
}

Stream<int> EmitirArreglo() async* {
  final valuesList = [1, 2, 3, 4, 5, 6, 7, 8];

  for (var i in valuesList) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
