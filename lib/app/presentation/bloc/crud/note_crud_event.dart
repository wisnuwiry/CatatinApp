part of 'note_crud_bloc.dart';

abstract class NoteCrudEvent extends Equatable {
  const NoteCrudEvent();

  @override
  List<Object> get props => [];
}

class InsertNoteEvent extends NoteCrudEvent{
  final NotesCompanion note;

  InsertNoteEvent({@required this.note});
  
  @override
  List<Object> get props => [note];
}

class UpdateNoteEvent extends NoteCrudEvent{
  final NotesCompanion note;

  UpdateNoteEvent({@required this.note});

  @override
  List<Object> get props => [note];
}

class DeleteNoteEvent extends NoteCrudEvent{
  final NotesCompanion note;

  DeleteNoteEvent({@required this.note});

  @override
  List<Object> get props => [note];
}