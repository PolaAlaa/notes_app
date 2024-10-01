import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/Views/editNoteView.dart';
import 'package:note_app/Views/note_view.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_Model.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const noteApp());
}

// ignore: camel_case_types
class noteApp extends StatelessWidget {
  const noteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        Editnoteview.id: (context) => const Editnoteview(),
        NoteView.id: (context) => const NoteView(),
      },
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.grey.shade900, fontFamily: "Poppins"),
      home: const NoteView(),
    );
  }
}
