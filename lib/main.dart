import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/core/constants.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_notes/edit_note.dart';
import 'package:note_app/views/home/notes_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/simple_bloc_observer.dart';
import 'cubits/notes/notes_cubit.dart';

void main() async {
  await Hive.initFlutter();

  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotesHiveBox);
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
        return BlocProvider(
          create: (context) => NotesCubit(),
          child: MaterialApp(
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
          ),
        );
      },
    );
  }

  Map<String, WidgetBuilder> _getRoutes() {
    return {
      '/': (context) => const NotesView(),
      'editNote': (context) => EditNote(),
    };
  }
}
