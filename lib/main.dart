import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:learning_project_notes_app/constants.dart';
import 'package:learning_project_notes_app/cubits/cubit/add_note_cubit.dart';
import 'package:learning_project_notes_app/cubits/cubit/notes_cubit.dart';
import 'package:learning_project_notes_app/models/note_model.dart';
import 'package:learning_project_notes_app/simple_bloc_observer.dart';
import 'package:learning_project_notes_app/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesBox);

  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
        theme: ThemeData(brightness: Brightness.dark, fontFamily: 'Poppins'),
        home: const NotesView(),
      ),
    );
  }
}
