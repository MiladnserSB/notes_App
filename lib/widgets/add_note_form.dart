import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_project_notes_app/cubits/cubit/add_note_cubit.dart';
import 'package:learning_project_notes_app/models/note_model.dart';
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

  String? title, content;

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
            onSaved: (value) {
              title = value;
            },
            hint: 'Title',
          ),
          const SizedBox(
            height: 20,
          ),
          CustomTextField(
            onSaved: (value) {
              content = value;
            },
            hint: 'Content',
            maxLines: 5,
          ),
          const SizedBox(
            height: 35,
          ),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: CustomButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  title: 'Add',
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      print('object');
                      formKey.currentState!.save();
                      var noteModel = NoteModel(
                          title: title!,
                          subTitle: content!,
                          date: DateTime.now().toString(),
                          color: Colors.deepOrange.value);
                      BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(
                        () {},
                      );
                    }
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
