import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void showAlertDialog(BuildContext context, {required String image}) {
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.of(context).pop(true);
      });
      return customAlertDialog(context, image);
    },
  );
}

customAlertDialog(context, image) {
  return AlertDialog(
    backgroundColor: Colors.transparent,
    elevation: 0,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(50.0))),
    content: SizedBox(
      width: 80.w,
      height: 80.w,
      child: Image.asset(image),
    ),
  );
}
