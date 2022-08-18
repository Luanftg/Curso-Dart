void main() {
  var pagamento = Pagamento();
  pagamento.pagar(TipoPagamento.CARTAO);
}

enum TipoPagamento { PIX, BOLETO, CARTAO }

extension ExtensionTipoPagamento on TipoPagamento {
  String toValue() {
    Map map = {
      TipoPagamento.PIX: 'Pix',
      TipoPagamento.BOLETO: 'Boleto',
      TipoPagamento.CARTAO: 'Cartao',
    };

    return map[this];
  }
}

class Pagamento {
  void pagar(TipoPagamento tipoPagamento) {
    if (tipoPagamento.toValue() == "Pix") {
      print('Pagando com Pix');
    } else if (tipoPagamento.toValue() == "Boleto") {
      print('Pagando com Boleto');
    } else if (tipoPagamento.toValue() == 'Cartao') {
      print('Pagamento com Cartao');
    }
  }
}
