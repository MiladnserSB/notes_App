import 'package:flutter/material.dart';
import 'package:learning_project_notes_app/constants.dart';
import 'package:learning_project_notes_app/models/note_model.dart';
import 'package:learning_project_notes_app/widgets/color_item.dart';

class EditNoteColorlist extends StatefulWidget {
  const EditNoteColorlist({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNoteColorlist> createState() => _EditNoteColorlistState();
}

class _EditNoteColorlistState extends State<EditNoteColorlist> {
  late int currentIndex;
  @override
  void initState() {
    // TODO: implement initState
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          itemCount: kColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kColors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  isActive: currentIndex == index,
                  color: kColors[index],
                ),
              ),
            );
          }),
    );
  }
}
