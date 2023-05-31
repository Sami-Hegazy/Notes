import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'constants.dart';

class AppTextFormField extends StatelessWidget {
  final String? labelText;
  final int? maxLength;
  final int? maxLines;
  final Color? labelColor;
  final Color? cursorColor;
  final double? circularRadius;
  const AppTextFormField({
    super.key,
    this.labelText,
    this.maxLength,
    this.labelColor,
    this.cursorColor,
    this.circularRadius,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(color: kGreyColor),
      maxLength: maxLength,
      maxLines: maxLines,
      cursorColor: cursorColor ?? kSecondaryColor,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: labelColor ?? kGreyColor),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(borderColor: kSecondaryColor),
        counterStyle: const TextStyle(color: kSecondaryColor),
      ),
    );
  }

  OutlineInputBorder buildBorder({Color? borderColor}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(circularRadius ?? 8.w),
      borderSide: BorderSide(
        color: borderColor ?? kSecondaryColor,
      ),
    );
  }
}
