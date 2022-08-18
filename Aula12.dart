import 'dart:developer';

void main() {
  //try {
  //print((2 / 0).toInt());
  //} catch (e, strackStrace) {
  //print(strackStrace);
  //print('Printando o erro: $e \n');
  //rethrow; //propagar o erro
  //throw Exception('Ocorreu uma excessão'); //retorna um novo erro
  //throw CustomError('Erro customizado');
  //}

  //String user = 'admim';
  //String pass = '123';
  //if (pass.length <= 6) throw PasswordLengthError();

  Login login = Login();

  try {
    login.logar();
  } on PasswordLengthError catch (e) {
    print('Falhou ao logar');
  } catch (e) {
    print('Outro erro!');
  } finally {
    print('Finalizou'); // Poderia enviar logs para o servidor ou firebase...
  }
}

class CustomError implements Exception {
  final String error;
  CustomError(this.error);
}

class PasswordLengthError implements Exception {
  PasswordLengthError();
}

class Login {
  void logar() {
    String user = 'admim';
    String pass = '123';

    //if (pass.length <= 6) throw PasswordLengthError();
    if (pass.length <= 6) throw Exception();
  }
}
