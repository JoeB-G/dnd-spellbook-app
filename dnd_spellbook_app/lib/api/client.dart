import 'package:http/http.dart' as http;

const String baseUrl = 'https://www.dnd5eapi.co/api';

class BaseClient {
  var client = http.Client();

  Future<dynamic> get(String api) async {
    var url = Uri.parse(baseUrl + api);

    var response = await client.get(url);

    if (response.statusCode == 200) {
      return response.body;
    } else {}
  }
}
