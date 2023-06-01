import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/core/app_elevated_button.dart';

void showDismissAlertDialog(BuildContext context,
    {required VoidCallback deleteButton,
    required VoidCallback cancelButton}) async {
  // show the dialog
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Permanently Delete This note?'),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              AppElevatedButton(
                onTap: cancelButton,
                width: 80.w,
                height: 40.h,
                text: 'Cancel',
              ),
              14.horizontalSpace,
              AppElevatedButton(
                onTap: deleteButton,
                width: 80.w,
                height: 40.h,
                text: 'Delete',
                backgroundColor: const Color(0xffFD99FF),
              ),
              14.horizontalSpace,
            ],
          )
        ],
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12.0))),
      );
    },
  );
}

customAlertDialog(context, {required VoidCallback deleteButton}) {
  return;
}
