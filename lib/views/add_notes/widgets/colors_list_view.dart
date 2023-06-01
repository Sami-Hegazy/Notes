import 'package:flutter/material.dart';

import 'color_item.dart';

class ColorListView extends StatelessWidget {
  const ColorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return const ColorItem();
        },
      ),
    );
  }
}
