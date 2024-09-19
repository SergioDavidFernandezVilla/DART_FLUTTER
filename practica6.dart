void main() {
  print(SaludarPersona(name: "Juan", message: "Hola tiliin"));
}

String SaludarPersona({required String name, String message = 'Hola,'}) {
  return '${message} ${name}';
}

int Suma(int a, int b) => a + b;

int SumaOptional(int a, [int b = 0]) {
  return a + b;
}

String SaludarFunction() {
  return 'Hola!';
}
