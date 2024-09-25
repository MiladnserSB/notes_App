import 'package:flutter/material.dart';
import 'package:learning_project_notes_app/constants.dart';
import 'package:learning_project_notes_app/widgets/custom_button.dart';
import 'package:learning_project_notes_app/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
          const CustomTextField(
            hint: 'Title',
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomTextField(
            hint: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 35,
          ),
          CustomButton(title: 'Add', onTap: (){} )
        ],
      ),
    );
  }
}

