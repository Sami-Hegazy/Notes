import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/models/note_model.dart';

class NotecardsContent extends StatelessWidget {
  final NoteModel note;

  const NotecardsContent({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 18.w, vertical: 6.w),
      child: Container(
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16.w),
        ),
        padding: EdgeInsets.symmetric(vertical: 18.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Nunito'),
              ),
              subtitle: Padding(
                padding: EdgeInsets.only(top: 20.w),
                child: Text(
                  note.note,
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              trailing: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed('editNote', arguments: note);
                  },
                  child: const Icon(Icons.edit)),
            ),
            Padding(
              padding: EdgeInsets.only(right: 20.w, bottom: 8.w, top: 18),
              child: Text(
                note.date,
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
