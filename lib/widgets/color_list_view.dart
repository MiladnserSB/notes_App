import 'package:flutter/material.dart';
import 'package:learning_project_notes_app/widgets/color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  int currentIndex = 0;
  List <Color> colors = const [
    Color(0xffCE2D4F),
    Color(0xffCE6D8B),
    Color(0xffCEBBC9),
    Color(0xff4056F4),
    Color(0xff470FF4),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
          itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  setState(() {});
                },
                child: ColorItem(
                  isActive: currentIndex == index,
                  color: colors[index],
                ),
              ),
            );
          }),
    );
  }
}
