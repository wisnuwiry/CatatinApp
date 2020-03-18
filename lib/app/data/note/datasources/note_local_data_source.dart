import 'package:meta/meta.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../db/app_db.dart';
import '../../../../db/dao/dao.dart';
import '../model/note_model.dart';

abstract class NoteLocalDataSource {
  // Only Operation get data from DB
  // Example load all list data or data detail
  Future<List<NoteWithBook>> loadAllNote();

  Future<List<NoteWithBook>> loadAllNoteByBookId(int id);

  Future<NoteWithContent> loadNoteDetail(int id);

  Future<NoteWithContent> loadNoteDraft();

  // Operating to DB INSERT, UPDATE, DELETE
  // Must insert params NotesCompanion
  // and then return number 1 if operation is success

  Future<int> insertNote(NotesCompanion note);

  Future<bool> updateNote(NotesCompanion note);

  Future<int> deleteNote(NotesCompanion note);
}

class NoteLocalDataSourceImpl implements NoteLocalDataSource {
  final NoteDao noteDao;

  NoteLocalDataSourceImpl({@required this.noteDao});

  @override
  Future<int> deleteNote(NotesCompanion note) async {
    if (checkIdValidOrNot(note.id.value)) {
      return await noteDao.deleteNote(note);
    } else {
      throw SqlException();
    }
  }

  @override
  Future<int> insertNote(NotesCompanion note) async {
    return await noteDao.insertNote(note);
  }

  @override
  Future<List<NoteWithBook>> loadAllNote() async {
    return await noteDao.getAllNotes();
  }

  @override
  Future<List<NoteWithBook>> loadAllNoteByBookId(int id) async {
    if (checkIdValidOrNot(id)) {
      return await noteDao.getByBookId(id);
    } else {
      throw SqlException();
    }
  }

  @override
  Future<NoteWithContent> loadNoteDetail(int id) async {
    if (checkIdValidOrNot(id)) {
      return await noteDao.getById(id);
    } else {
      throw SqlException();
    }
  }

  @override
  Future<NoteWithContent> loadNoteDraft() async {
    return await noteDao.getDraft();
  }

  @override
  Future<bool> updateNote(NotesCompanion note) async {
    if (checkIdValidOrNot(note.id.value)) {
      return await noteDao.updateNote(note);
    } else {
      throw SqlException();
    }
  }

  bool checkIdValidOrNot(int id) {
    if (id is int && id >= 1) {
      return true;
    } else {
      return false;
    }
  }
}
