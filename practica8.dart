void main() {
  final ironman = Hero(name: "Iron man", power: "money", isAlive: true);

  print(ironman);
}

class Hero {
  String name;
  String power;
  bool isAlive;

  Hero({required this.name, required this.power, required this.isAlive});

  @override
  String toString() {
    return '$name - $power - ${isAlive ? "YES!" : "NOPE"}';
  }
}
