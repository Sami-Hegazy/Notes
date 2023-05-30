import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppRoundedIcon extends StatelessWidget {
  const AppRoundedIcon({
    super.key,
    required this.icon,
    required this.onTap,
  });
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xff3B3B3B),
        borderRadius: BorderRadius.circular(16.w),
      ),
      child: IconButton(
        onPressed: onTap,
        icon: Icon(icon),
        color: Colors.white,
      ),
    );
  }
}
