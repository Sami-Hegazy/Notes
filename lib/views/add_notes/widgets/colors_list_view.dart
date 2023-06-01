import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/cubits/add_notes/add_notes_cubit.dart';

import '../../../core/constants.dart';
import 'color_item.dart';

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
                    BlocProvider.of<AddNotesCubit>(context).color =
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
