import 'package:flutter/material.dart';

import '../spell_data.dart';

class SpellWidget extends StatefulWidget {
  const SpellWidget({super.key});

  @override
  State<SpellWidget> createState() => _SpellWidgetState();
}

class _SpellWidgetState extends State<SpellWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ExpansionTile(
          leading:
              Image.asset("spellicons/${spellData[index]["assetName"]}.png"),
          title: Text(spellData[index]["name"]),
          children: [
            ListTile(
              title: Text("this is tile $index"),
              subtitle: Text(spellData[index]["description"]),
            )
          ],
        );
      },
      itemCount: spellData.length,
    );
  }
}
