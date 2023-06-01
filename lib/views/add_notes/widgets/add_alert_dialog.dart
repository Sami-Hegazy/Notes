import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants.dart';

void showAlertDialog(BuildContext context, {required String image}) async {
  // show the dialog
  await showDialog(
    context: context,
    builder: (BuildContext context) {
      Future.delayed(const Duration(seconds: 3), () {
        Navigator.of(context).pop(true);
      });
      return customAlertDialog(context, kDoneImage);
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

// class CustomAlertDialog extends StatefulWidget {
//   final String image;

//   const CustomAlertDialog({super.key, required this.image});
//   @override
//   _CustomAlertDialogState createState() => _CustomAlertDialogState();
// }

// class _CustomAlertDialogState extends State<CustomAlertDialog> {

// BuildContext _context;

//   @override
//   void didChangeDependencies() {
//      _context = context;
//     super.didChangeDependencies();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return AlertDialog(
//       backgroundColor: Colors.transparent,
//       elevation: 0,
//       shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.all(Radius.circular(50.0))),
//       content: SizedBox(
//         width: 80.w,
//         height: 80.w,
//         child: Image.asset(widget.image),
//       ),
//     );
//   }
// }
