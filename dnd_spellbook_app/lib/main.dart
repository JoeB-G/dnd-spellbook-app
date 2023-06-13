import 'package:dnd_spellbook_app/screens/spellbook_level_0.dart';
import 'package:dnd_spellbook_app/screens/spellbook_main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Spellbook0());
  }
}
