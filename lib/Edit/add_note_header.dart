import 'package:flutter/material.dart';

class AddNoteHeader extends StatelessWidget {
  const AddNoteHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, left: 18, right: 18, bottom: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff3B3B3B),
              borderRadius: BorderRadius.circular(14),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(Icons.arrow_back_ios_new),
              color: Colors.white,
            ),
          ),
          const Spacer(),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff3B3B3B),
              borderRadius: BorderRadius.circular(14),
            ),
            child: IconButton(
              onPressed: () {
                myShowBottomSheet(context);
              },
              icon: const Icon(Icons.image),
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 16),
          Container(
            decoration: BoxDecoration(
              color: const Color(0xff3B3B3B),
              borderRadius: BorderRadius.circular(14),
            ),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.save),
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }

  myShowBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        backgroundColor: Colors.transparent,
        context: context,
        builder: (context) {
          return SizedBox(
            height: 200,
            child: Card(
              margin: const EdgeInsets.all(8),
              color: const Color(0xffFFF599),
              child: Column(
                children: [
                  Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    child: const Text(
                      'Please Select an image to upload',
                      style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'nunito',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            radius: 30,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.photo, size: 30),
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            'From Gallery',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            radius: 30,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.camera, size: 30),
                            ),
                          ),
                          const SizedBox(height: 12),
                          const Text(
                            'From Camera',
                            style: TextStyle(
                                fontFamily: 'nunito',
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        });
  }
}
