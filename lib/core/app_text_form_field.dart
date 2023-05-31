import 'package:flutter/material.dart';

class AppTextFormField extends StatelessWidget {
  final String? label;
  final TextInputType? textInputType;
  final bool? obscureText;
  final TextStyle? labelStyle;
  final double? circularBorderFocused;
  final Color? borderColorEnabled;
  final Color? borderColorFocused;
  final InputBorder? enableBorder;
  final int? maxLength;
  final double? cursorHeight;
  final Color? cursorColor;
  final String? hintText;
  final TextStyle? hintSyle;

  const AppTextFormField({
    Key? key,
    this.label,
    this.textInputType,
    this.obscureText,
    this.labelStyle,
    this.circularBorderFocused,
    this.borderColorEnabled,
    this.borderColorFocused,
    this.enableBorder,
    this.maxLength,
    this.cursorHeight,
    this.cursorColor,
    this.hintText,
    this.hintSyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      cursorHeight: cursorHeight,
      cursorColor: cursorColor,
      keyboardType: textInputType ?? TextInputType.text,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        prefixIconColor: Colors.white,
        labelText: label,
        hintText: hintText,
        hintStyle: hintSyle,
        labelStyle: labelStyle ?? const TextStyle(color: Colors.white54),
        enabledBorder: enableBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: borderColorEnabled ?? Colors.white,
              ),
            ),
        focusedBorder: enableBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.0),
              borderSide: BorderSide(
                color: borderColorFocused ?? Colors.white,
              ),
            ),
      ),
    );
  }
}
