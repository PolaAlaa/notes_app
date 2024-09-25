import 'package:flutter/material.dart';
import 'package:note_app/Views/widgets/Custom_AppBar_Widget.dart';
import 'package:note_app/Views/widgets/custom_Text_Field.dart';

class Editnoteview extends StatelessWidget {
  const Editnoteview({super.key});
  static String id = "Editnoteview";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 24),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomAppBar(
                text: "Edit Note",
                icon: Icons.check,
              ),
              SizedBox(
                height: 35,
              ),
              CustomTextField(title: "Title"),
              SizedBox(
                height: 15,
              ),
              CustomTextField(
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
