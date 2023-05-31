import 'package:flutter/material.dart';

class AddNoteBody extends StatefulWidget {
  const AddNoteBody({super.key});

  @override
  State<AddNoteBody> createState() => _AddNoteBodyState();
}

class _AddNoteBodyState extends State<AddNoteBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      alignment: Alignment.topCenter,
      child: Form(
          child: Column(
        children: [
          TextFormField(
            style: const TextStyle(
                color: Colors.white, fontSize: 35, fontWeight: FontWeight.w500),
            maxLength: 30,
            cursorHeight: 35,
            cursorColor: Theme.of(context).focusColor,
            decoration: const InputDecoration(
                hintText: 'Title',
                hintStyle: TextStyle(
                  color: Color(0xff9A9A9A),
                  height: 22 / 17,
                  fontSize: 35,
                ),
                border: OutlineInputBorder(borderSide: BorderSide.none),
                counterStyle: TextStyle(color: Color(0xff9A9A9A))),
          ),
          const SizedBox(height: 30),
          TextFormField(
            style: const TextStyle(color: Colors.white, fontSize: 20),
            cursorHeight: 30,
            keyboardType: TextInputType.multiline,
            minLines: 1,
            maxLines: 5,
            maxLength: 200,
            cursorColor: Theme.of(context).focusColor,
            decoration: const InputDecoration(
              hintText: 'Type Somthing...',
              hintStyle: TextStyle(
                color: Color(0xff9A9A9A),
                fontSize: 20,
              ),
              border: OutlineInputBorder(borderSide: BorderSide.none),
              counterStyle: TextStyle(color: Color(0xff9A9A9A)),
            ),
          ),
        ],
      )),
    );
  }
}
