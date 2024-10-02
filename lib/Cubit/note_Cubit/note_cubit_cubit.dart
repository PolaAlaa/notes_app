import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_Model.dart';

part 'note_cubit_state.dart';

class NoteCubitCubit extends Cubit<NoteCubitState> {
  NoteCubitCubit() : super(NoteCubitInitial());

  fetchAllNotes(NoteModel note) {
    try {
      var notebox = Hive.box(kNotesBox);
      List notes = notebox.values.toList();
      emit(NoteCubitSuccess(notes: notes));
    } catch (e) {
      emit(NoteCubitFailur(e.toString()));
    }
  }
}
