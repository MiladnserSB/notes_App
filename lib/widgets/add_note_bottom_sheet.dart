import 'package:flutter/material.dart';
import 'package:learning_project_notes_app/constants.dart';
import 'package:learning_project_notes_app/widgets/add_note_form.dart';
import 'package:learning_project_notes_app/widgets/custom_button.dart';
import 'package:learning_project_notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: AddNoteForm(),
    );
  }
}

