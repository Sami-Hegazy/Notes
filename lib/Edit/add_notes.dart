import 'package:flutter/material.dart';
import 'package:note_app/Edit/add_note_body.dart';
import 'package:note_app/Edit/add_note_header.dart';

class AddNotes extends StatefulWidget {
  const AddNotes({super.key});

  @override
  State<AddNotes> createState() => _AddNotesState();
}

class _AddNotesState extends State<AddNotes> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Theme.of(context).primaryColor,
          height: MediaQuery.of(context).size.height,
          child: SingleChildScrollView(
            child: Column(
              children: const [
                AddNoteHeader(),
                AddNoteBody(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
