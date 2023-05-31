import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants.dart';
import '../../../core/custom_app_bar.dart';
import 'home_note_content.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
    required this.notes,
    required this.color,
  });

  final List notes;
  final List<Color> color;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomAppBar(),
        Expanded(
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: notes.length,
              itemBuilder: ((context, index) {
                return Dismissible(
                  background: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).disabledColor,
                      borderRadius: BorderRadius.circular(16.w),
                    ),
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  key: Key('$index'),
                  child: HomeNotesContent(
                    notes: notes[index],
                    cardColor: color[randomNum()],
                  ),
                );
              })),
        ),
      ],
    );
  }
}
