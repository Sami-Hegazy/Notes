import 'package:flutter/material.dart';
import 'package:note_app/views/add_notes.dart/add_notes.dart';
import 'package:note_app/views/auth/login.dart';
import 'package:note_app/views/auth/signup.dart';
import 'package:note_app/views/home/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Note App',
          initialRoute: '/',
          theme: ThemeData(
            //brightness: Brightness.dark,
            primaryColor: const Color(0xff252525),
            cardColor: const Color(0xffFD99FF),
            focusColor: const Color(0xffFF9E9E),
            primaryColorDark: const Color(0xff252525),
            disabledColor: const Color(0xffFF0000),
          ),
          routes: _getRoutes(),
        );
      },
    );
  }

  Map<String, WidgetBuilder> _getRoutes() {
    return {
      '/': (context) => const HomePage(),
      'login': (context) => const Login(),
      'signup': (context) => const SignUp(),
      'addNote': (context) => const AddNotes(),
    };
  }
}
