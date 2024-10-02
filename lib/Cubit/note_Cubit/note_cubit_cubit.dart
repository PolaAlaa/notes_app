import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_Model.dart';

part 'note_cubit_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NoteCubitInitial());
  List<NoteModel>? notes;
  fetchAllNotes() {
    debugPrint(notes.toString());

    var notebox = Hive.box<NoteModel>(kNotesBox);

    notes = notebox.values.toList();
    emit(NoteCubitSuccess());
  }
}
