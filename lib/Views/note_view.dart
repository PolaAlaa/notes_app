import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/Custom_AppBar_Widget.dart';
import 'package:note_app/Views/widgets/note_list_View.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 62, 183, 239),
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(24),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            CustomAppBar(),
            NoteListView(),
          ],
        ),
      ),
    );
  }
}
