void main() {
  final Hero heroe = Hero(name: "Iron man", power: "Usar armadura de maquina");

  print("El hero : ${heroe.name} con su poder ${heroe.power}");
}

//Clase
class Hero {
  String name;
  String power;

  Hero({required this.name, required this.power});
}
