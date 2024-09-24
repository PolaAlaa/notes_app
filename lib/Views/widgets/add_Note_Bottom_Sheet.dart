import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/custom_Text_Field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        children: [
          CustomTextField(title: "Title"),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            title: "Content",
            maxline: 5,
          ),
        ],
      ),
    );
  }
}
