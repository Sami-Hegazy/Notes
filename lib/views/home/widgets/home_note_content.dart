import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeNotesContent extends StatefulWidget {
  final dynamic notes;
  final Color cardColor;

  const HomeNotesContent(
      {super.key, required this.notes, required this.cardColor});

  @override
  State<HomeNotesContent> createState() => _HomeNotesContentState();
}

class _HomeNotesContentState extends State<HomeNotesContent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 6.w),
      child: Container(
        decoration: BoxDecoration(
          color: widget.cardColor,
          borderRadius: BorderRadius.circular(16.w),
        ),
        padding: EdgeInsets.symmetric(vertical: 18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ListTile(
              title: Text(
                'Flutter Notes',
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Nunito'),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 20.w),
                child: Text(
                  widget.notes['note'],
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              trailing: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('editNote');
                  },
                  child: const Icon(Icons.edit)),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.w, bottom: 8.w, top: 18),
              child: Text(
                'May 30,2023',
                style: TextStyle(
                  fontSize: 12.sp,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
