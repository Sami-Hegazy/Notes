import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/cubits/notes/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';

import '../../../core/app_elevated_button.dart';
import '../../../core/app_text_form_field.dart';
import '../../../core/constants.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
    required this.width,
  });

  final double width;

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, note;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            Text(
              'Add Note',
              style: TextStyle(
                color: kSecondaryColor,
                fontSize: 24.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            36.verticalSpace,
            AppTextFormField(
              onSaved: (value) {
                title = value;
              },
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Field is required';
                } else {
                  return null;
                }
              },
              labelText: 'Title',
              maxLength: 30,
            ),
            22.verticalSpace,
            AppTextFormField(
              onSaved: (value) {
                note = value;
              },
              validator: (value) {
                if (value?.isEmpty ?? true) {
                  return 'Field is required';
                } else {
                  return null;
                }
              },
              labelText: 'Type Something....',
              maxLength: 200,
              maxLines: 6,
            ),
            22.verticalSpace,
            BlocBuilder<AddNotesCubit, AddNotesState>(
              builder: (context, state) {
                return AppElevatedButton(
                  isLoading: state is AddNotesLoading ? true : false,
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();

                      NoteModel noteModel = NoteModel(
                        title: title!,
                        note: note!,
                        date: DateTime.now().toString(),
                        color: colorList[randomNum()].value,
                      );
                      BlocProvider.of<AddNotesCubit>(context)
                          .addNote(noteModel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  text: 'Add',
                  width: widget.width,
                  height: 45,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
