import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/core/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());

  Color color = const Color(0xffFD99FF);
  addNote(NoteModel noteModel) async {
    noteModel.color = color.value;
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesHiveBox);
      await notesBox.add(noteModel);
      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}
