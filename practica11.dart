void main() async {
  print("Inicio del programa");

  try {
    final valueURL = await httpGet("http://cursos?query=1?page=1");

    print(valueURL);
  } catch (erro) {
    print(erro);
  }

  print("Fin del programa");
}

Future httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  return 'Esta es la peticion htpp de la url:  ${url}';
}
