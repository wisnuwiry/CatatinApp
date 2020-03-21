import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:catatin/app/data/note/model/note_model.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../core/usecases/usecase.dart';
import '../../../../db/app_db.dart';
import '../../../domain/note/usecases/get_delete_note.dart';
import '../../../domain/note/usecases/get_insert_note.dart';
import '../../../domain/note/usecases/get_update_note.dart';

part 'note_crud_event.dart';
part 'note_crud_state.dart';

class NoteCrudBloc extends Bloc<NoteCrudEvent, NoteCrudState> {
  final GetInsertNote getInsertNote;
  final GetUpdateNote getUpdateNote;
  final GetDeleteNote getDeleteNote;

  NoteCrudBloc({
    @required GetInsertNote insert,
    @required GetUpdateNote update,
    @required GetDeleteNote delete,
  })  : assert(insert != null),
        assert(update != null),
        assert(delete != null),
        getInsertNote = insert,
        getUpdateNote = update,
        getDeleteNote = delete;

  @override
  NoteCrudState get initialState => Empty();

  @override
  Stream<NoteCrudState> mapEventToState(
    NoteCrudEvent event,
  ) async* {
    if (event is InsertNoteEvent) {
      yield* _mapNoteInsertState(event.note);
    } else if (event is UpdateNoteEvent) {
      yield* _mapNoteUpdateState(event.note);
    } else if (event is DeleteNoteEvent) {
      yield* _mapNoteDeleteState(event.note);
    }
  }

  _mapNoteInsertState(NotesCompanion note) async {
    return getInsertNote(ParamNotesCompanion(note: note));
  }

  _mapNoteUpdateState(NotesCompanion note) async {
    return getUpdateNote(ParamNotesCompanion(note: note));
  }

  _mapNoteDeleteState(NotesCompanion note) async {
    return getDeleteNote(ParamNotesCompanion(note: note));
  }
}
