import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/core/app_rounded_icon.dart';
import 'package:note_app/core/app_text_form_field.dart';
import 'package:note_app/core/constants.dart';
import 'package:note_app/core/custom_app_bar.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
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
                appRoundedIcon: AppRoundedIcon(icon: Icons.check, onTap: () {}),
              ),
              80.verticalSpace,
              const AppTextFormField(
                labelText: 'Edit Title',
                maxLength: 30,
              ),
              22.verticalSpace,
              const AppTextFormField(
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
