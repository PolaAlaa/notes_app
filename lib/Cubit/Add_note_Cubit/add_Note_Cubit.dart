import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/models/note_Model.dart';

part 'add_Note_State.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  AddNote(NoteModel note) {}
}
