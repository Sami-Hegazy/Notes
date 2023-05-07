import 'package:flutter/material.dart';
import 'package:note_app/Edit/add_notes.dart';
import 'package:note_app/auth/login.dart';
import 'package:note_app/auth/signup.dart';
import 'package:note_app/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note App',
      home: const Login(),
      theme: ThemeData(
        primaryColor: const Color(0xff252525),
        cardColor: const Color(0xffFD99FF),
        focusColor: const Color(0xffFF9E9E),
        primaryColorDark: const Color(0xff252525),
        disabledColor: const Color(0xffFF0000),
      ),
      routes: {
        'login': (context) => const Login(),
        'signup': (context) => const SignUp(),
        'home': (context) => const HomePage(),
        'addNote': (context) => const AddNotes(),
      },
    );
  }
}
