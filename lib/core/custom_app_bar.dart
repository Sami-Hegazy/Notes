import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/core/constants.dart';

import 'app_rounded_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.title,
    this.appRoundedIcon,
    this.titleSize,
    this.padding,
  });

  final String? title;
  final double? titleSize;
  final AppRoundedIcon? appRoundedIcon;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ??
          EdgeInsets.only(top: 24.w, left: 18.w, right: 18.w, bottom: 24.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            title ?? 'Notes',
            style: TextStyle(
              color: kSecondaryColor,
              fontSize: titleSize ?? 43.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          appRoundedIcon ?? AppRoundedIcon(icon: Icons.search, onTap: () {}),
        ],
      ),
    );
  }
}
