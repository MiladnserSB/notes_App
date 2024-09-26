import 'package:flutter/material.dart';
import 'package:learning_project_notes_app/widgets/custom_button.dart';
import 'package:learning_project_notes_app/widgets/custom_text_field.dart';

class AddNoteForm extends StatefulWidget {
   AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title,content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 24,
          ),
           CustomTextField(
            onSaved: (value){
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 20,
          ),
           CustomTextField(
              onSaved: (value){
              content = value;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 35,
          ),
          CustomButton(
            title: 'Add',
            onTap: () {
              if (formKey.currentState!.validate()) {
                print('object');
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(
                  () {},
                );
              }
              
            },
          ),
        ],
      ),
    );
  }
}

