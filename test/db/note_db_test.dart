import 'package:catatin/db/app_db.dart';
import 'package:catatin/db/dao/dao.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:moor_ffi/moor_ffi.dart';

import '../fixture/fixtures.dart' as fixture;

void main() {
  AppDatabase db;
  NoteDao noteDao;
  BookDao bookDao;

  setUp(() {
    db = AppDatabase(VmDatabase.memory());
    noteDao = NoteDao(db);
    bookDao = BookDao(db);
  });

  tearDown(() async {
    await db.close();
  });

  Future<int> insertNote(NotesCompanion notes) async {
    return await noteDao.insertNote(notes);
  }

  group('CRUD Operation DB from Table Note', () {
    test('should Insert note Test and show note by id', () async {
      // arrange
      final id = await insertNote(fixture.noteTestCompanion);
      // result
      final result = await noteDao.getById(id);
      // expect
      expect(result.note, fixture.noteFixture);
      expect(id, isNonZero);
    });

    test('should Load note where note is draft true', () async {
      // arrange
      insertNote(fixture.noteTestCompanion);
      // result
      final result = await noteDao.getDraft();
      // expect
      expect(result.note, fixture.noteFixture);
    });

    test('should load list all note', () async {
      // arrange
      for (int i = 0; i <= 6; i++) {
        await insertNote(fixture.noteTestCompanion);
      }
      // act
      final result = await noteDao.getAllNotes();
      // assert
      expect(result, isList);
      expect(result.length, 7);
    });

    test('should update note then ouput id if success', () async {
      // arrange
      await insertNote(fixture.noteTestCompanion);
      final updateNoteTest = fixture.noteTestIdCompanion.copyWith(
        title: Value('Hohoho hoho'),
        draf: Value(false),
      );

      // act
      final result = await noteDao.updateNote(updateNoteTest);
      final getNote = await noteDao.getById(1);
      // assert
      expect(result, isTrue);
      expect(getNote.note, fixture.noteFixtureUpdate);
    });

    test('should delete item note', () async {
      // arrange
      await insertNote(fixture.noteTestIdCompanion);
      // act
      final result = await noteDao.deleteNote(fixture.noteTestIdCompanion);
      // assert
      expect(result, isNonZero);
    });

    test('should get all note by book id', () async {
      // arrange
      final idBook = await bookDao.insertBook(BooksCompanion(
        name: Value('Story'),
        color: Value(0xFFFFFFFF),
      ));
      for (int i = 0; i <= 6; i++) {
        await noteDao.insertNote(
            fixture.noteTestCompanion.copyWith(book: Value(idBook)));
      }
      // act
      final data = await noteDao.getByBookId(idBook);
      // assert
      expect(data, isList);
      expect(data.length, 7);
    });
  });
}
