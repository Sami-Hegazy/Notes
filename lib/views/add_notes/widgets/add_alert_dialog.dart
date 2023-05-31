import 'package:flutter/material.dart';

void showAlertDialog(BuildContext context) {
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return customAlertDialog(context);
    },
  );
}

customAlertDialog(context) {
  return const AlertDialog(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0))),
    content: Column(
      children: [],
    ),
  );
}
