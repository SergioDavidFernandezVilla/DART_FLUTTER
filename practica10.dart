abstract class Animal {}

abstract class Mamiferos extends Animal {}

abstract class Ave extends Animal {}

abstract class pescado extends Animal {}

mixin class Caminante {
  void caminar() => print("Estoy caminando");
}

mixin class Volador {
  void volar() => print("Estoy volando");
}

mixin class Nadador {
  void nadar() => print("Estoy nadando");
}

class Delfin extends Mamiferos with Nadador {}

class Murcielago extends Mamiferos with Caminante, Volador {}

class Paloma extends Ave with Caminante, Volador {}

class Pato extends Ave with Caminante, Volador, Nadador {}

class Tiburon extends pescado with Nadador {}

class PezVolador extends pescado with Nadador, Volador {}

void main() {
  final pato = Pato();
  pato.caminar();

  final tiburon = Tiburon();
  tiburon.nadar();

  final pezVolador = PezVolador();
  pezVolador.nadar();

  final paloma = Paloma();
  paloma.volar();
}
