import 'Aula07.dart';

void main() {
  var pagamento = Pagamento();
  pagamento.pagar(TipoPagamento.CARTAO);
}

enum TipoPagamento {
  PIX(1, 'Pix'),
  BOLETO(2, 'Boleto'),
  CARTAO(3, 'Cartao');

  final String value;
  final int id;
  const TipoPagamento(this.id, this.value);
}

class Pagamento {
  void pagar(TipoPagamento tipoPagamento) {
    if (tipoPagamento.value == "Pix") {
      print('Pagando com Pix ${tipoPagamento.id}');
    } else if (tipoPagamento.value == "Boleto") {
      print('Pagando com Boleto ${tipoPagamento.id}');
    } else if (tipoPagamento.value == 'Cartao') {
      print('Pagamento com Cartao ${tipoPagamento.id}');
    }
  }
}
