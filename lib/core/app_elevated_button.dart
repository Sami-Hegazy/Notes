import 'package:flutter/material.dart';

import 'constants.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    super.key,
    required this.width,
    required this.height,
    this.circularBorder,
    required this.text,
    this.textColor,
    this.backgroundColor,
  });

  final double width;
  final double height;
  final double? circularBorder;
  final String text;
  final Color? textColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? kSecondaryColor,
        fixedSize: Size(width, height),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(circularBorder ?? 8)),
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor ?? kPrimaryColor),
      ),
    );
  }
}