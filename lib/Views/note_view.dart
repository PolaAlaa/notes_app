import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/custom_AppBar_Widget.dart';
import 'package:note_app/Views/widgets/add_Note_Bottom_Sheet.dart';
import 'package:note_app/Views/widgets/note_list_View.dart';

class NoteView extends StatelessWidget {
  const NoteView({super.key});
  static String id = "noteView";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff62fcd7),
        child: IconButton(
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                backgroundColor: Colors.grey.shade900,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)),
                context: context,
                builder: (context) {
                  return const AddNoteBottomSheet();
                });
          },
          icon: const Icon(
            Icons.add,
          ),
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 24),
        child: Column(
          children: [
            CustomAppBar(
              text: "Notes",
              icon: Icons.search,
            ),
            Expanded(child: NoteListView()),
          ],
        ),
      ),
    );
  }
}
