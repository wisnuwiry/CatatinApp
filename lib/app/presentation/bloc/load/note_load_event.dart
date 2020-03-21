part of 'note_load_bloc.dart';

abstract class NoteLoadEvent extends Equatable {
  const NoteLoadEvent();
  @override
  List<Object> get props => [];
}

class GetAllNoteLoadEvent extends NoteLoadEvent {}

class GetNoteDetailEvent extends NoteLoadEvent {
  final int id;

  GetNoteDetailEvent({@required this.id});

  @override
  List<Object> get props => [id];
}

class GetAllNoteByBookIdEvent extends NoteLoadEvent {
  final int id;

  GetAllNoteByBookIdEvent({@required this.id});

  @override
  List<Object> get props => [id];
}

class GetNoteDraftEvent extends NoteLoadEvent {}
