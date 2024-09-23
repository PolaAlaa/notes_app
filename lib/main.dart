import 'package:flutter/material.dart';
import 'package:note_app/Views/note_view.dart';

void main() {
  runApp(const noteApp());
}

// ignore: camel_case_types
class noteApp extends StatelessWidget {
  const noteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.grey.shade900),
      home: const NoteView(),
    );
  }
}
