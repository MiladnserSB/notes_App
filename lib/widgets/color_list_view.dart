import 'package:flutter/material.dart';
import 'package:learning_project_notes_app/widgets/color_item.dart';

class ColorListView extends StatelessWidget {
  const ColorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: SizedBox(
        height: 80,
        child: ListView.builder(
          itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context,index){
          return const Padding(
            padding:  EdgeInsets.symmetric(horizontal:  2.0),
            child:  ColorItem(),
          );
        }),
      ),
    );
  }
}