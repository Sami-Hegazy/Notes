import 'package:flutter/material.dart';
import '../../../core/custom_app_bar.dart';
import 'notes_list_view.dart';

class NotesBody extends StatelessWidget {
  const NotesBody({
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
          child: NotesListView(notes: notes, color: color),
        ),
      ],
    );
  }
}
