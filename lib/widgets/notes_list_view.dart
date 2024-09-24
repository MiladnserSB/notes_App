import 'package:flutter/material.dart';
import 'package:learning_project_notes_app/widgets/note_item.dart';

class NotesListview extends StatelessWidget {
  const NotesListview({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context,index){
        return const Padding(
          padding:  EdgeInsets.symmetric(vertical: 5.0),
          child:  NoteItem(),
        );
      },
    );
  }
}