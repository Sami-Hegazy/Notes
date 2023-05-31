import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/core/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<AddNotesState> {
  NotesCubit() : super(AddNotesInitial());

  addNote(NoteModel noteModel) async {
    emit(AddNotesLoading());
    try {
      var notesBox = Hive.box(kNotesHiveBox);
      emit(AddNotesSuccess());

      await notesBox.add(noteModel);
    } catch (e) {
      emit(AddNotesFailure(e.toString()));
    }
  }
}
