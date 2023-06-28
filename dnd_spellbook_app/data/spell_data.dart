class Spells {
  String? name;
  int? level;
  String? description;
  String? range;
  String? castingTime;
  bool? ritual;
  String? duration;
  bool? concentration;

  Spells(
      {required this.name,
      required this.level,
      required this.description,
      required this.range,
      required this.castingTime,
      required this.ritual,
      required this.duration,
      required this.concentration});

  Spells.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    level = json['level'];
    description = json['description'];
    range = json['range'];
    castingTime = json['casting time'];
    ritual = json['ritual'];
    duration = json['duration'];
    concentration = json['concentration'];
  }
}
