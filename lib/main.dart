import 'package:flutter/material.dart';
import 'package:learning_project_notes_app/views/notes_view.dart';

void main() {
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: const NotesView(),
    );
  }
}
