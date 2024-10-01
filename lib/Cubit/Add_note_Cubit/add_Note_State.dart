part of "add_Note_Cubit.dart";

abstract class AddNoteState {}

class AddNoteInitial extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFaliur extends AddNoteState {
  final String error;

  AddNoteFaliur(this.error);
}
