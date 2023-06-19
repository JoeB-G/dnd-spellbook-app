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
        .get('/classes/wizard/levels/0/spells')
        .then((data) => {setState(() => spellsLevel0 = data)});
  }

  @override
  Widget build(BuildContext context) {
    if (spellsLevel0 != null) {
      return ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(spellsLevel0!.results![index].name),
          );
        },
        itemCount: spellsLevel0?.count,
      );
    } else {
      return const SizedBox(
          width: 60, height: 60, child: CircularProgressIndicator());
    }
  }
}
