void main() {
  print("La function saludar: ${(SaludarFunction())}");

  print("Suma: ${Suma(10, 30)}");
  print("Suma optional: ${SumaOptional(10)}");
}

int Suma(int a, int b) => a + b;

int SumaOptional(int a, [int b = 0]) {
  return a + b;
}

String SaludarFunction() {
  return 'Hola!';
}
