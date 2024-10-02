part of 'note_cubit_cubit.dart';

@immutable
sealed class NoteCubitState {}

final class NoteCubitInitial extends NoteCubitState {}

final class NoteCubitSuccess extends NoteCubitState {
  final List<dynamic> notes;

  NoteCubitSuccess({required this.notes});
}

final class NoteCubitFailur extends NoteCubitState {
  final String errorMessage;

  NoteCubitFailur(this.errorMessage);
}

final class NoteCubitLoading extends NoteCubitState {}
