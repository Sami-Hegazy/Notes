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
  final void Function(String?)? onSaved;
  final String? Function(String?)? validator;
  const AppTextFormField({
    Key? key,
    this.labelText,
    this.maxLength,
    this.maxLines,
    this.labelColor,
    this.cursorColor,
    this.circularRadius,
    this.onSaved,
    this.validator,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: validator,
      style: const TextStyle(color: kGreyColor),
      maxLength: maxLength,
      maxLines: maxLines,
      cursorColor: cursorColor ?? kSecondaryColor,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(color: labelColor ?? kGreyColor),
        enabledBorder: buildBorder(),
        errorBorder: buildBorder(borderColor: Colors.red),
        border: buildBorder(),
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
