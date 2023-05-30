import 'package:flutter/material.dart';
import 'widgets/home_body.dart';

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
            side: const BorderSide(color: Color(0xFF53EEDD), width: 2),
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Icon(Icons.add),
        ),
        body: HomeBody(notes: notes, color: color),
      ),
    );
  }
}
