void main() {
  print("Inicio del programa");

  httpGet('url')
      .then((value) => print(value))
      .catchError((error) => print("Error: $error"));

  print("Fin del programa");
}

Future<String> httpGet(String url) {
  return Future.delayed(const Duration(seconds: 1), () {
    throw 'Error en la peticion http';

    //return 'La respuesta de la peticion htpp';
  });
}
