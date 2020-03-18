part of 'note_bloc.dart';

@immutable
abstract class NoteState extends Equatable {
  const NoteState();
  @override
  List<Object> get props => [];
}

class Empty extends NoteState {}

class Loading extends NoteState {}

class LoadedItem extends NoteState {
  final NoteWithContent note;

  LoadedItem({@required this.note});
}

class LoadedList extends NoteState {
  final List<NoteWithBook> note;

  LoadedList({@required this.note});
}

class StatusBool extends NoteState {
  final bool status;

  StatusBool({@required this.status});
}

class StatusInt extends NoteState {
  final int status;

  StatusInt({@required this.status});
}

class Error extends NoteState {
  final String message;

  Error({@required this.message});
}
