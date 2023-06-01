import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/core/app_rounded_icon.dart';
import 'package:note_app/core/app_text_form_field.dart';
import 'package:note_app/core/constants.dart';
import 'package:note_app/core/custom_app_bar.dart';
import 'package:note_app/cubits/notes/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    final NoteModel note =
        ModalRoute.of(context)!.settings.arguments as NoteModel;
    String? title, noteContent;

    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 18),
          child: Column(
            children: [
              CustomAppBar(
                padding: EdgeInsets.zero,
                title: 'Edit Note',
                titleSize: 32.sp,
                appRoundedIcon: AppRoundedIcon(
                    icon: Icons.check,
                    onTap: () {
                      note.title = title ?? note.title;
                      note.note = noteContent ?? note.note;
                      note.save();
                      BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                      Navigator.pop(context);
                    }),
              ),
              80.verticalSpace,
              AppTextFormField(
                onChanged: (val) {
                  title = val;
                },
                labelText: 'Edit Title',
                maxLength: 30,
              ),
              22.verticalSpace,
              AppTextFormField(
                onChanged: (val) {
                  noteContent = val;
                },
                labelText: 'Edit Note',
                maxLength: 200,
                maxLines: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
