import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubit/note_Cubit/note_cubit_cubit.dart';
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
              CustomAppBar(
                onPressed: () {
                  note.title = title == null ? note.title : title!;
                  note.content = content ?? note.content;
                  note.save();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  Navigator.pop(context);
                },
                text: "Edit Note",
                icon: Icons.donut_large,
              ),
              const SizedBox(
                height: 35,
              ),
              CustomTextFormField(
                  onChanged: (p0) {
                    title = p0;
                  },
                  title: note.title),
              const SizedBox(
                height: 15,
              ),
              CustomTextFormField(
                onChanged: (p0) {
                  content = p0;
                },
                title: note.content,
                maxline: 5,
              )
            ],
          ),
        ),
      ),
    );
  }
}
