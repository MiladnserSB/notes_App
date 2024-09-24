import 'package:flutter/material.dart';
import 'package:learning_project_notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: (){}, backgroundColor: Colors.greenAccent.shade400 , child: Icon(Icons.add, color: Colors.black,) , shape: CircleBorder()), 
      body: const NotesViewBody(),
    );
  }
}
