import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/home/widgets/note_card_content.dart';

import '../../../core/constants.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({
    super.key,
    required this.notes,
    required this.color,
  });

  final List notes;
  final List<Color> color;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
            child: NotecardsContent(
              notes: notes[index],
              cardColor: color[randomNum()],
            ),
          );
        }));
  }
}
