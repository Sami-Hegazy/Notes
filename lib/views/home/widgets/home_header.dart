import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/app_rounded_icon.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 24.w, left: 18.w, right: 18.w, bottom: 24.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Notes',
            style: TextStyle(
              color: Colors.white,
              fontSize: 43.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          AppRoundedIcon(icon: Icons.search, onTap: () {}),
          16.horizontalSpace,
          AppRoundedIcon(icon: Icons.info_outline, onTap: () {}),
        ],
      ),
    );
  }
}
