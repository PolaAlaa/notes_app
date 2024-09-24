import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/Custom_AppBar_Widget.dart';
import 'package:note_app/Views/widgets/add_Note_Bottom_Sheet.dart';
import 'package:note_app/Views/widgets/note_list_View.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff62fcd7),
        child: IconButton(
          onPressed: () {
            showModalBottomSheet(
                backgroundColor: Colors.grey.shade900,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet(
                    title: "Title",
                  );
                });
          },
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
            Expanded(child: NoteListView()),
          ],
        ),
      ),
    );
  }
}
