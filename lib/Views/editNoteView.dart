import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/custom_AppBar_Widget.dart';
import 'package:note_app/Views/widgets/custom_Text_Field.dart';
import 'package:note_app/models/note_Model.dart';

class Editnoteview extends StatelessWidget {
  const Editnoteview({super.key});
  static String id = "Editnoteview";

  @override
  Widget build(BuildContext context) {
    NoteModel note = ModalRoute.of(context)!.settings.arguments as NoteModel;
    String? title;
    String? content;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const CustomAppBar(
                text: "Edit Note",
                icon: Icons.check,
              ),
              const SizedBox(
                height: 35,
              ),
              CustomTextFormField(
                  onSaved: (p0) {
                    title = p0;
                  },
                  title: "Title"),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                onSaved: (p0) {
                  content = p0;
                },
                title: "Content",
                maxline: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
