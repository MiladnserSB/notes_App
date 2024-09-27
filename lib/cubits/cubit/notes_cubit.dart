import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:learning_project_notes_app/constants.dart';
import 'package:learning_project_notes_app/models/note_model.dart';
import 'package:meta/meta.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  List<NoteModel>? notes;
  fetchNotes() {
    var notesBox = Hive.box<NoteModel>(kNotesBox);
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
