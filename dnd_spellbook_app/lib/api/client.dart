import 'package:dnd_spellbook_app/models/spells.dart';
import 'package:http/http.dart' as http;

const String baseUrl = 'https://www.dnd5eapi.co/api';

class BaseClient {
  var client = http.Client();

  Future<dynamic> get(String api) async {
    var url = Uri.parse(baseUrl + api);

    var response = await client.get(url);

    if (response.statusCode == 200) {
      print("got the data idjut");
      return spellsFromJson(response.body);
    } else {
      print("didnt get data idjur");
      throw Exception("failed to fetch API data");
    }
  }
}
