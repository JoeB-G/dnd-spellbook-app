import 'package:dnd_spellbook_app/api/client.dart';
import 'package:dnd_spellbook_app/models/spells.dart';
import 'package:flutter/material.dart';

class SpellWidget extends StatefulWidget {
  const SpellWidget({super.key});

  @override
  State<SpellWidget> createState() => _SpellWidgetState();
}

class _SpellWidgetState extends State<SpellWidget> {
  late Future<Spells> _data;

  @override
  void initState() {
    super.initState();
    _data = BaseClient().get('/classes/wizard/levels/0/spells');
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _data,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final Spells data = snapshot.data as Spells;
            return ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                    leading: Image.asset(
                        "spellicons/${data.results[index].index}.png"),
                    title: Text(data.results[index].name),
                    onTap: () {});
              },
              itemCount: data.count,
            );
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
