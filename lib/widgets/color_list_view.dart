import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_project_notes_app/constants.dart';
import 'package:learning_project_notes_app/cubits/cubit/add_note_cubit.dart';
import 'package:learning_project_notes_app/widgets/color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;

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
                  BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
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
