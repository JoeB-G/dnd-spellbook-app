import 'package:dnd_spellbook_app/api/client.dart';
import 'package:dnd_spellbook_app/models/spells.dart';
import 'package:flutter/material.dart';

class SpellWidget extends StatefulWidget {
  const SpellWidget({super.key});

  @override
  State<SpellWidget> createState() => _SpellWidgetState();
}

class _SpellWidgetState extends State<SpellWidget> {
  Spells? spellsLevel0;

  @override
  void initState() {
    super.initState();
    BaseClient()
        .get('/classes/wizard/levels/7/spells')
        .then((data) => {print(data), setState(() => spellsLevel0 = data)});
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return ListTile(
        title: Text(spellsLevel0!.results![index].name),
      );
    });
  }
}
