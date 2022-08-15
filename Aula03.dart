import 'dart:typed_data';

void main() {
  // 3 - Estruturas de Fluxo - IF e SWITCH

  bool seguirEmFrente = true;

  if (seguirEmFrente) {
    print('Andar');
  } else {
    print('Parar');
  }

  if (10 > 5) print("10 eh maior que 05");

  int valor = 5;
  switch (valor) {
    case 0:
      print("ZERO");
      break;
    case 1:
      print("UM");
      break;
    case 2:
      print("DOIS");
      break;
    default:
      print('Padrao');
  }
}
