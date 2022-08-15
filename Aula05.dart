void main() {
// 4 - Métodos e Classes

  Celular celularLuan = Celular("azul", 0.8, 5, 5.7);
  Celular celularLena = Celular("preto", 0.1, 10, 5.7);

  print(celularLena.toString());
  print(celularLuan.toString());
  double resultadoValor = celularLena.valorDoCelular(800);
  print(resultadoValor);
  print(celularLuan.valorDoCelular(1000));
}

class Celular {
  final String cor;
  final int qtdPros;
  final double tamanho;
  final double peso;

  Celular(this.cor, this.peso, this.qtdPros, this.tamanho);

  @override
  String toString() {
    return "Cor: $cor, qtdPros: $qtdPros, Peso: $peso, Tamanho: $tamanho";
  }

  double valorDoCelular(double valor) {
    return valor * qtdPros;
  }
}
