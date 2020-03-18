part of 'note_bloc.dart';

@immutable
abstract class NoteEvent extends Equatable {
  const NoteEvent();

  @override
  List<Object> get props => [];
}

class GetAllNoteEvent extends NoteEvent {}

class GetNoteDetail extends NoteEvent {
  final int id;

  GetNoteDetail({@required this.id});

  @override
  List<Object> get props => [id];
}

class GetAllNoteByBookIdEvent extends NoteEvent {
  final int id;

  GetAllNoteByBookIdEvent({@required this.id});

  @override
  List<Object> get props => [id];
}

class GetNoteDraftEvent extends NoteEvent{}

class InsertNoteEvent extends NoteEvent{
  final NotesCompanion note;

  InsertNoteEvent({@required this.note});
  
  @override
  List<Object> get props => [note];
}

class UpdateNoteEvent extends NoteEvent{
  final NotesCompanion note;

  UpdateNoteEvent({@required this.note});

  @override
  List<Object> get props => [note];
}

class DeleteNoteEvent extends NoteEvent{
  final NotesCompanion note;

  DeleteNoteEvent({@required this.note});

  @override
  List<Object> get props => [note];
}