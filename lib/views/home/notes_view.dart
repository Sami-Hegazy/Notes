import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes/notes_cubit.dart';
import 'package:note_app/views/add_notes/add_note_bottom_sheet_body.dart';
import '../../core/constants.dart';
import 'widgets/notes_body.dart';

class NotesView extends StatefulWidget {
  const NotesView({super.key});

  @override
  State<NotesView> createState() => _NotesViewState();
}

class _NotesViewState extends State<NotesView> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: kPrimaryColor,
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                    side: const BorderSide(color: kSecondaryColor)),
                context: context,
                builder: (context) {
                  return const AddNoteButtomSheet();
                },
              );
              //Navigator.of(context).pushNamed('addNote');
            },
            backgroundColor: kPrimaryColor,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: kSecondaryColor, width: 2),
              borderRadius: BorderRadius.circular(100),
            ),
            child: const Icon(Icons.add),
          ),
          body: const NotesBody(),
        ),
      ),
    );
  }
}
