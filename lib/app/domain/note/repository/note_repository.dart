import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../db/app_db.dart';
import '../../../data/note/model/note_model.dart';

abstract class NoteRepository {
  // Only Operation get data from DB
  // Example load all list data or data detail
  Future<Either<Failure, List<NoteWithBook>>> loadAllNote();

  Future<Either<Failure, List<NoteWithBook>>> loadAllNoteByBookId(int id);

  Future<Either<Failure, NoteWithContent>> loadNoteDetail(int id);

  Future<Either<Failure, NoteWithContent>> loadNoteDraft();

  // Operating to DB INSERT, UPDATE, DELETE
  // Must insert params NotesCompanion
  // and then return number 1 if operation is success

  Future<Either<Failure, int>> insertNote(NotesCompanion note);

  Future<Either<Failure, bool>> updateNote(NotesCompanion note);

  Future<Either<Failure, int>> deleteNote(NotesCompanion note);
}
