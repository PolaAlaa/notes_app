import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/Custom_AppBar_Widget.dart';
import 'package:note_app/Views/widgets/note_Container.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomAppBar(),
            note_container(),
            note_container(),
            note_container(),
          ],
        ),
      ),
    );
  }
}
