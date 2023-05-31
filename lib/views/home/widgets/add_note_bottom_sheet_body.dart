import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/core/constants.dart';

import '../../../core/app_elevated_button.dart';
import '../../../core/app_text_form_field.dart';

class AddNoteButtomSheetBody extends StatelessWidget {
  const AddNoteButtomSheetBody({super.key});

  @override
  Widget build(BuildContext context) {
    //double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(right: 16, left: 16, top: 36, bottom: 22),
      child: SizedBox(
        //height: MediaQuery.of(context).size.height * 0.6,
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: AddNoteForm(width: width),
        ),
      ),
    );
  }
}

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
    return Form(
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
          AppElevatedButton(
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            text: 'Add',
            width: widget.width,
            height: 55,
          ),
        ],
      ),
    );
  }
}
