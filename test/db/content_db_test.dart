import 'package:catatin/db/app_db.dart';
import 'package:catatin/db/dao/dao.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:moor_flutter/moor_flutter.dart';
import 'package:moor_ffi/moor_ffi.dart';

import '../fixture/fixtures.dart';

void main() {
  AppDatabase db;
  ContentDao contentDao;

  setUp(() {
    db = AppDatabase(VmDatabase.memory());
    contentDao = ContentDao(db);
  });

  tearDown(() async {
    await db.close();
  });

  group('CRUD Operation DB from Table Content', () {
    final ContentsCompanion contentTest =
        ContentsCompanion(data: Value(contentFixtureData));

    final contentTestId = contentTest.copyWith(
      id: Value(1),
    );

    test('should Insert content Test and show content by id', () async {
      // act
      final id = await contentDao.insertContent(contentTest);
      // assert
      expect(id, isNonZero);
    });

    test('should update content return true if success', () async {
      // arrange
      await contentDao.insertContent(contentTest);
      final contentTestUpdate =
          contentTestId.copyWith(data: Value('[{"retain": 35}]'));
      // act
      final result = await contentDao.updateContent(contentTestUpdate);
      // assert
      expect(result, isTrue);
    });

    test('should delete content and return id if success', () async {
      // arrange
      await contentDao.insertContent(contentTest);
      // act
      final result = await contentDao.deleteContent(contentTestId);
      // assert
      expect(result, 1);
    });
  });
}
