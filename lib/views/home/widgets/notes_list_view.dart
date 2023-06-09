import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/cubits/notes/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/home/widgets/note_card_content.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({super.key});

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return ListView.builder(
            reverse: true,
            physics: const BouncingScrollPhysics(),
            itemCount: notes.length,
            itemBuilder: ((context, index) {
              return Dismissible(
                onDismissed: (direction) {
                  QuickAlert.show(
                    context: context,
                    type: QuickAlertType.confirm,
                    onCancelBtnTap: () {
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                      Navigator.pop(context);
                    },
                    onConfirmBtnTap: () {
                      setState(() {
                        notes[index].delete();
                        BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                        Navigator.pop(context);
                      });
                    },
                  );
                },
                background: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).disabledColor,
                    borderRadius: BorderRadius.circular(16.w),
                  ),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                key: UniqueKey(),
                child: NotecardsContent(
                  note: notes[index],
                ),
              );
            }));
      },
    );
  }
}
