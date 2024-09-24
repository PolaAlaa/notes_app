import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/custom_Text_Field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
      child: Column(
        children: [
          CustomTextField(title: title),
        ],
      ),
    );
  }
}
