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
              const AppTextFormField(
                labelText: 'Title',
                maxLength: 30,
              ),
              22.verticalSpace,
              const AppTextFormField(
                labelText: 'Type Something....',
                maxLength: 200,
                maxLines: 6,
              ),
              22.verticalSpace,
              AppElevatedButton(text: 'Add', width: width, height: 55),
            ],
          ),
        ),
      ),
    );
  }
}
