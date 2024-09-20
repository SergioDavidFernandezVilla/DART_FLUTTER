void main() {
  final winterPlanter = WinterPlant(initialEnery: 118);
  final nuclearPlanter = NuclearPlant(energy: 7354792);

  print(winterPlanter);

  print('Wind: ${cargarTelefono(winterPlanter)}');
  print('Nuclear: ${cargarTelefono(nuclearPlanter)}');
}

//TIPOS DE PLANTA
enum PlantTpye { nuclear, winter, water }

//CARGAR TELEFONO BROOOO
double cargarTelefono(EneryPlant plant) {
  if (plant.energy < 10) {
    throw Exception("No hay sufiente energia");
  }

  return plant.energy - 10;
}

//CLASE PLANTA DE ENERGIA
abstract class EneryPlant {
  double energy;
  final PlantTpye type;

  EneryPlant({required this.energy, required this.type});

  void consumirEnergia(double cantidadEnergia);
}

//TAMBIEN SIRVE PARA HEREDAR PERO AGARRA ALL(TODO) EL VIEJO MAÑOSO CODICIOSO
//ANDA MAÑOSO TAMBIEN EL VISUAL STUDIO CODE CON LA PALABRA TODO <- XD
class WinterPlant extends EneryPlant {
  WinterPlant({required double initialEnery})
      : super(energy: initialEnery, type: PlantTpye.winter);

  @override
  void consumirEnergia(double cantidadEnergia) {
    energy -= cantidadEnergia;
  }
}

//LA IMPLEMENTACION SIRVE PARA NOMAS AGARRAR LO QUE NECESITE HEREDAR
class NuclearPlant implements EneryPlant {
  @override
  double energy;

  @override
  final PlantTpye type = PlantTpye.nuclear;

  NuclearPlant({required this.energy});

  @override
  void consumirEnergia(double cantidadEnergia) {
    energy -= (cantidadEnergia * 0.5);
  }
}
