void main() async {
  print("Inicio del programa");

  try {
    final valueURL = await httpGet("http://cursos?query=1?page=1");

    print(valueURL);
  } on Exception {
    print("Tenemos una exception");
  } catch (erro) {
    print("Ops algo cause un error ${erro}");
  } finally {
    print("fin del try y catch");
  }

  print("Fin del programa");
}

Future httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1));

  throw new Exception("Falta parametros en la url");

  //return 'Esta es la peticion htpp de la url:  ${url}';
}
