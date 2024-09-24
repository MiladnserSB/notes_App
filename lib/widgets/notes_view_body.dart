import 'package:flutter/material.dart';
import 'package:learning_project_notes_app/widgets/custom_app_bar.dart';
import 'package:learning_project_notes_app/widgets/note_item.dart';
import 'package:learning_project_notes_app/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.0),
      child: Column(
        children: [
          SizedBox(height: 50,),
            CustomAppBar(),
           Expanded(child: NotesListview()),
           
        ],
      ),
    );
  }
}
