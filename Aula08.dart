void main() async {
// 8 - Future, Async e Await

  String nome = "Luan";
  Future<String> cepFuture = getCepByName("Avenida Rui Barbosa");
  late String cep;

  //cepFuture.then((result) => cep = result);
  cep = await cepFuture;

  print(cep);
}

//external Service
Future<String> getCepByName(String name) {
  //simulando uma requisição
  return Future.value("12211105");
}
