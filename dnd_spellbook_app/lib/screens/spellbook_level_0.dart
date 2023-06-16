import 'package:dnd_spellbook_app/widgets/spell_widget.dart';
import 'package:flutter/material.dart';

class Spellbook0 extends StatefulWidget {
  const Spellbook0({super.key});

  @override
  State<Spellbook0> createState() => _Spellbook0State();
}

class _Spellbook0State extends State<Spellbook0> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Level 0 spells'),
      ),
      body: const SpellWidget(),
    );
  }
}
