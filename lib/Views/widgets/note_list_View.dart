import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/note_Container.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: 5,
          itemBuilder: (BuildContext context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: note_Container(),
            );
          },
        ));
  }
}
