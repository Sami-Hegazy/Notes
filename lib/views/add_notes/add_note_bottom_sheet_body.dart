import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes/notes_cubit.dart';
import 'package:note_app/views/add_notes/widgets/add_notes_form.dart';

class AddNoteButtomSheet extends StatelessWidget {
  const AddNoteButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is AddNotesFailure) {}
          if (state is AddNotesSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          //prevent user to make action while it's loading
          return AbsorbPointer(
            absorbing: state is AddNotesLoading ? true : false,
            child: Padding(
              padding: const EdgeInsets.only(
                  right: 16, left: 16, top: 36, bottom: 22),
              child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: AddNoteForm(width: width)),
            ),
          );
        },
      ),
    );
  }
}
