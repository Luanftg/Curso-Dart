void main() {
  List<String> lista = ['Luan', 'Lena'];

  Map<String, String> mapaNomes = {'nome': 'valor'};
  print(lista[1]);
  print(mapaNomes['nome']);

  print("\n--------put---------\n");
  mapaNomes.putIfAbsent('novaChave', () => 'novoValor');
  print(mapaNomes);

  print("\n--------Atribuição direta---------\n");
  mapaNomes['novaChaveDois'] = 'NovoValorDois';
  print(mapaNomes);

  print("\n--------remove---------\n");
  mapaNomes.remove('nome');
  print(mapaNomes);

  print("\n--------update---------\n");
  mapaNomes.update('novaChaveDois', (value) => 'AtualizadoDois');
  print(mapaNomes);

  print("\n--------forEach---------\n");
  mapaNomes.forEach((key, value) => print('a chave é $key, o valor é $value'));
  print(mapaNomes);
}
