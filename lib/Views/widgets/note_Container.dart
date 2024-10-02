import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/Cubit/note_Cubit/note_cubit_cubit.dart';
import 'package:note_app/Views/editNoteView.dart';
import 'package:note_app/models/note_Model.dart';

class NoteContainer extends StatelessWidget {
  const NoteContainer({
    super.key,
    required this.note,
  });

  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Editnoteview.id, arguments: note);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: note.color.isNaN ? Colors.orange[400] : Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: const TextStyle(fontSize: 26, color: Colors.black),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  note.content,
                  style: TextStyle(
                      fontSize: 20, color: Colors.black.withOpacity(.6)),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  note.delete();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                },
                iconSize: 30,
                icon: const Icon(FontAwesomeIcons.trash),
                color: Colors.black,
              ),
            ),
            Text(
              "${DateTime.parse(note.date).year}/${DateTime.parse(note.date).month}/${DateTime.parse(note.date).day}  ${DateTime.parse(note.date).hour}:${DateTime.parse(note.date).minute}",
              style:
                  TextStyle(fontSize: 16, color: Colors.black.withOpacity(.8)),
            ),
          ],
        ),
      ),
    );
  }
}
