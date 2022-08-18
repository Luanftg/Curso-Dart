void main() {
  // 6 - Programação Orientada a Objetos
  Carro mercedes = Carro("mercedes");
  Carro gol = Carro("gol");

  mercedes._segredo;
  print(mercedes.valorDoCarro);
  mercedes.setValue(2000);
  print(mercedes.valorDoCarro);
}

class Carro {
  final String modelo;
  String _segredo = 'Meu Segredo'; // private segredo

  int _valor = 1000;

  int get valorDoCarro => _valor;
  void setValue(int valor) => _valor = valor;

  Carro(this.modelo);
}
