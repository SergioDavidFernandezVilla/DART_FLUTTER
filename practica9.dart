void main() {
  print("QUiole");
}

enum PlantTpye { nuclear, winter, water }

abstract class EneryPlant {
  double energy;
  PlantTpye type;

  void consumirEnergia(double cantidadEnergia);
}
