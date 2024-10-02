part of 'note_cubit_cubit.dart';

@immutable
sealed class NotesState {}

final class NoteCubitInitial extends NotesState {}

final class NoteCubitSuccess extends NotesState {}
