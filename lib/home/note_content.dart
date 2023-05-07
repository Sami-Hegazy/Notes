import 'package:flutter/material.dart';

class NotesContent extends StatefulWidget {
  final dynamic notes;
  final Color cardColor;

  const NotesContent({super.key, required this.notes, required this.cardColor});

  @override
  State<NotesContent> createState() => _NotesContentState();
}

class _NotesContentState extends State<NotesContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
      child: Card(
        color: widget.cardColor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: const Text(
              'Title',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              widget.notes['note'],
              style: const TextStyle(
                  fontFamily: 'Nunito', fontWeight: FontWeight.w500),
            ),
            trailing: const Icon(Icons.edit),
          ),
        ),
      ),
    );
  }
}
