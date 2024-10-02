import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_Model.dart';

part 'add_Note_State.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    try {
      var notebox = Hive.box<NoteModel>(kNotesBox);
      await notebox.add(note);

      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFaliur(e.toString()));
    }
  }
}
