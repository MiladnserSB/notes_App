import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_project_notes_app/cubits/cubit/notes_cubit.dart';
import 'package:learning_project_notes_app/widgets/custom_app_bar.dart';
import 'package:learning_project_notes_app/widgets/note_item.dart';
import 'package:learning_project_notes_app/widgets/notes_list_view.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody
> {

  @override
void initState() {
  super.initState();
  BlocProvider.of<NotesCubit>(context).fetchNotes();
}
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.0),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Notes',
            icon: Icons.search,
          ),
          Expanded(child: NotesListview()),
        ],
      ),
    );
  }
}
