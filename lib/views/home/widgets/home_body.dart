import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'home_header.dart';
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
        const HomeHeader(),
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

int randomNum() {
  Random rnd;
  int min = 0;
  int max = 5;
  rnd = Random();
  int r = min + rnd.nextInt(max - min);
  return r;
}
