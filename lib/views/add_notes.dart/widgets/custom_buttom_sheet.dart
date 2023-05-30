import 'package:flutter/material.dart';

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
