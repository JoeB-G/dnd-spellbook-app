// To parse this JSON data, do
//
//     final spells = spellsFromJson(jsonString);

import 'dart:convert';

Spells spellsFromJson(String str) => Spells.fromJson(json.decode(str));

String spellsToJson(Spells data) => json.encode(data.toJson());

class Spells {
  int count;
  List<Result> results;

  Spells({
    required this.count,
    required this.results,
  });

  factory Spells.fromJson(Map<String, dynamic> json) => Spells(
        count: json["count"],
        results:
            List<Result>.from(json["results"].map((x) => Result.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "results": results != null
            ? List<dynamic>.from(results.map((x) => x.toJson()))
            : [],
      };
}

class Result {
  String index;
  String name;
  String url;

  Result({
    required this.index,
    required this.name,
    required this.url,
  });

  factory Result.fromJson(Map<String, dynamic> json) => Result(
        index: json["index"],
        name: json["name"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "index": index,
        "name": name,
        "url": url,
      };
}
