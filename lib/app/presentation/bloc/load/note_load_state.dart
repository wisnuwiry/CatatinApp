part of 'note_load_bloc.dart';

abstract class NoteLoadState extends Equatable {
  const NoteLoadState();
  @override
  List<Object> get props => [];
}

class Empty extends NoteLoadState {}

class Loading extends NoteLoadState {}

class LoadedItem extends NoteLoadState {
  final NoteWithContent note;

  LoadedItem({@required this.note});
}

class LoadedList extends NoteLoadState {
  final List<NoteWithBook> note;

  LoadedList({@required this.note});
}

class Error extends NoteLoadState {
  final String message;

  Error({@required this.message});
}
