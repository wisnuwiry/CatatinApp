import 'package:catatin/db/app_db.dart';
import 'package:catatin/db/dao/dao.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:moor_ffi/moor_ffi.dart';

void main() {
  AppDatabase db;
  BookDao bookDao;

  setUp(() {
    db = AppDatabase(VmDatabase.memory());
    bookDao = BookDao(db);
  });

  tearDown(() async {
    await db.close();
  });

  group('CRUD Operation DB from Table Book', () {
    final BooksCompanion bookTest =
        BooksCompanion(color: Value(0xFF000000), name: Value('Story'));

    final bookTestId = bookTest.copyWith(
      id: Value(1),
    );

    test('should Insert book Test and show book by id', () async {
      // act
      final id = await bookDao.insertBook(bookTest);
      // assert
      expect(id, isNonZero);
    });

    test('should update book return true if success', () async {
      // arrange
      await bookDao.insertBook(bookTest);
      final bookTestUpdate = bookTestId.copyWith(name: Value('Rahasia'));
      // act
      final result = await bookDao.updateBook(bookTestUpdate);
      // assert
      expect(result, isTrue); 
    });

    test('should delete book and return id if success', () async {
      // arrange
      await bookDao.insertBook(bookTest);
      // act
      final result = await bookDao.deleteBook(bookTestId);
      // assert
      expect(result, 1);
    });

    test('should return list/all of book',() async {
      // arrange
      for (int i = 0; i <= 6; i++) {
        await bookDao.insertBook(bookTest);
      }
      // act
      final result = await bookDao.getAllBooks();
      // assert
      expect(result, isList);
      expect(result.length, isNonZero);
    });
  });
}
