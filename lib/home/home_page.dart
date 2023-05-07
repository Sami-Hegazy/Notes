import 'dart:math';
import 'package:flutter/material.dart';
import 'package:note_app/home/home_header.dart';
import 'note_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List notes = [
    {
      'note':
          'This is the first note it\'s not a real note just I\'m testing it'
    },
    {
      'note':
          'This is the Second note it\'s not a real note just I\'m testing it'
    },
    {
      'note':
          'This is the Third note it\'s not a real note just I\'m testing it'
    },
    {
      'note':
          'This is the Fourth note it\'s not a real note just I\'m testing it'
    },
    {
      'note':
          'This is the Fifth note it\'s not a real note just I\'m testing it'
    },
    {
      'note':
          'This is the Fifth note it\'s not a real note just I\'m testing it'
    },
    {
      'note':
          'This is the Fifth note it\'s not a real note just I\'m testing it'
    },
    {
      'note':
          'This is the Fifth note it\'s not a real note just I\'m testing it'
    },
    {
      'note':
          'This is the Fifth note it\'s not a real note just I\'m testing it'
    },
    {
      'note':
          'This is the Fifth note it\'s not a real note just I\'m testing it'
    },
    {
      'note':
          'This is the Fifth note it\'s not a real note just I\'m testing it'
    },
  ];

  var color = const [
    Color(0xffFD99FF),
    Color(0xffFF9E9E),
    Color(0xff91F48F),
    Color(0xffFFF599),
    Color(0xffB69CFF),
    Color(0xff9EFFFF),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed('addNote');
          },
          backgroundColor: const Color(0xff252525),
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Icon(Icons.add),
        ),
        body: Container(
          color: const Color(0xff252525),
          child: Column(
            children: [
              const HomeHeader(),
              Expanded(
                child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: notes.length,
                    itemBuilder: ((context, index) {
                      return Dismissible(
                        background: Card(
                          color: Theme.of(context).disabledColor,
                          child: const Icon(Icons.delete, color: Colors.white),
                        ),
                        key: Key('$index'),
                        child: NotesContent(
                          notes: notes[index],
                          cardColor: color[randomNum()],
                        ),
                      );
                    })),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

int randomNum() {
  Random rnd;
  int min = 0;
  int max = 5;
  rnd = Random();
  int r = min + rnd.nextInt(max - min);
  return r;
}
