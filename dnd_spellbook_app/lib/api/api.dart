import 'package:http/http.dart' as http;

Future<http.Response> fetchSpells0() {
  return http.get(
      Uri.parse('https://www.dnd5eapi.co/api/classes/wizard/levels/0/spells'));
}
