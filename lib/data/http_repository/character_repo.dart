import 'package:http/http.dart' as http;

class HttpCharacterStorage {
  Future<dynamic> getList() async {
    try {
      final response =
          await http.get('https://rickandmortyapi.com/api/character');
      return (response.body);
    } catch (e) {
      print(e);
      print('Error en la base de datos');
    }
  }
}
