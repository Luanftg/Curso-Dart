import 'dart:convert';

void main() {
  // JSON

  String json = '''
  { 
    "usuario": "luanftg@email.com",
    "senha": 123456,
    "permissoes": [
      "owner","admin"
    ]
  }
''';

  print(json);

  Map resultJson = jsonDecode(json);
  print(resultJson['permissoes'][0]);

  Map mapa = {
    'nome': 'Luan',
    'pass': 123,
    'permissoes': ['owner', 'admin']
  };

  String result = jsonEncode(mapa);
  print(result);
}
