void main() {
  // 7 - Herança, Polimorfismo e Abstração

  Luan luan = Luan();
  print(luan.falar());

  Pagamento pagamento = PagarComBoleto();
  pagamento.pagar();

  pagamento = PagarComPix();
  pagamento.pagar();
}

abstract class Pagamento {
  void pagar();
}

class PagarComBoleto implements Pagamento {
  @override
  void pagar() {
    print("Pagando com boleto.");
  }
}

class PagarComPix implements Pagamento {
  @override
  void pagar() {
    print("Pagamento com Pix!");
  }
}

class Pai {
  String falar() {
    return "girias";
  }
}

class Luan extends Pai {}

abstract class Pessoa {
  String comunicar();
}

class PessoaET implements Pessoa {
  @override
  String comunicar() {
    return "Olá Mundo!";
  }
}

class PessoaNaoET implements Pessoa {
  String comunicar() {
    return "Bom dia !";
  }
}
