import 'package:flutter/material.dart';
import 'package:note_app/views/home/widgets/add_note_bottom_sheet_body.dart';
import '../../core/constants.dart';
import 'widgets/home_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              backgroundColor: kPrimaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24),
                  side: const BorderSide(color: kSecondaryColor)),
              context: context,
              builder: (context) {
                return const AddNoteButtomSheetBody();
              },
            );
            //Navigator.of(context).pushNamed('addNote');
          },
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            side: const BorderSide(color: kSecondaryColor, width: 2),
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Icon(Icons.add),
        ),
        body: HomeBody(notes: notesList, color: colorList),
      ),
    );
  }
}
