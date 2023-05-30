import 'package:flutter/material.dart';

import '../../../core/app_rounded_icon.dart';
import 'custom_buttom_sheet.dart';

class AddNoteHeader extends StatelessWidget {
  const AddNoteHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, left: 18, right: 18, bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          AppRoundedIcon(
              icon: Icons.arrow_back_ios_new,
              onTap: () {
                Navigator.pop(context);
              }),
          const Spacer(),
          AppRoundedIcon(
              icon: Icons.image,
              onTap: () {
                myShowBottomSheet(context);
              }),
          const SizedBox(width: 16),
          AppRoundedIcon(icon: Icons.save, onTap: () {}),
        ],
      ),
    );
  }
}
