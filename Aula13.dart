void main() {
  String nome = 'luan';
  //print(nome[0].toLowerCase() + nome.substring(1).toUpperCase());
  //print(Utils().toFirstCharToUpperCase(nome));
  print(nome.toFirstCharToUpperCase());
}

extension ExtensionString on String {
  String toFirstCharToUpperCase() {
    return this[0].toUpperCase() + this.substring(1);
  }
}

class Utils {
  toFirstCharToUpperCase(String value) {
    return value[0].toUpperCase() + value.substring(1);
  }
}
