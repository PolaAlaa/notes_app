import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/add_botton.dart';
import 'package:note_app/Views/widgets/custom_Text_Field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const CustomTextField(title: "Title"),
            const SizedBox(
              height: 20,
            ),
            const CustomTextField(
              title: "Content",
              maxline: 5,
            ),
            const SizedBox(
              height: 100,
            ),
            AddBotton(context: context)
          ],
        ),
      ),
    );
  }
}
