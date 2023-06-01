import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/models/note_model.dart';

import '../../../core/constants.dart';
import '../../add_notes/widgets/color_item.dart';

class EditNoteColorList extends StatefulWidget {
  const EditNoteColorList({super.key, required this.note});

  final NoteModel note;
  @override
  State<EditNoteColorList> createState() => _EditNoteColorListState();
}

class _EditNoteColorListState extends State<EditNoteColorList> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44.h,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: colorList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.w),
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    currentIndex = index;
                    widget.note.color = colorList[index].value;
                    colorList[index];
                  });
                },
                child: ColorItem(
                  isActive: currentIndex == index,
                  color: colorList[index],
                )),
          );
        },
      ),
    );
  }
}
