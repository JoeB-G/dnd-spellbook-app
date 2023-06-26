import 'package:dnd_spellbook_app/screens/spellbook_level_0.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: 'https://jfgwsdleqfsayhywwhus.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImpmZ3dzZGxlcWZzYXloeXd3aHVzIiwicm9sZSI6ImFub24iLCJpYXQiOjE2ODc3NzYzMDAsImV4cCI6MjAwMzM1MjMwMH0.t5j6b5vsf4qzM6kkBvE6i7EF43Q85fTnXw9TXMmBa0E',
  );
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Spellbook0());
  }
}
