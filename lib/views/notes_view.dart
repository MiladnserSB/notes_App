import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_project_notes_app/constants.dart';
import 'package:learning_project_notes_app/cubits/cubit/notes_cubit.dart';
import 'package:learning_project_notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:learning_project_notes_app/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) {
                  return AddNoteBottomSheet();
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              );
            },
            backgroundColor: kPrimaryColor,
            child: Icon(
              Icons.add,
              color: Colors.black,
            ),
            shape: CircleBorder()),
        body: const NotesViewBody(),
      ),
    );
  }
}
