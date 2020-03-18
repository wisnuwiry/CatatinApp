import 'package:catatin/app/data/note/datasources/note_local_data_source.dart';
import 'package:catatin/app/data/note/repository/note_repository_impl.dart';
import 'package:catatin/core/error/exceptions.dart';
import 'package:catatin/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixture/fixtures.dart' as fixture;

class MockLocalDataSource extends Mock implements NoteLocalDataSource {}

// TODO: Refactoring all code

void main() {
  NoteRepositoryImpl repository;
  MockLocalDataSource mockLocalDataSource;

  setUp(() {
    mockLocalDataSource = MockLocalDataSource();
    repository = NoteRepositoryImpl(localDataSource: mockLocalDataSource);
  });

  void runTestException(Function body) {
    test('should return SQLException from throw SqlException', () async {
      body();
    });
  }

  group('LoadAllNote', () {
    test('should return All Data Note', () async {
      // arrange
      when(mockLocalDataSource.loadAllNote())
          .thenAnswer((_) async => fixture.listNoteFixture);
      // act
      final result = await repository.loadAllNote();
      // assert
      verify(mockLocalDataSource.loadAllNote());
      expect(result, equals(Right(fixture.listNoteFixture)));
    });

    runTestException(() async {
      // arrange
      when(mockLocalDataSource.loadAllNote()).thenThrow(SqlException());
      // act
      final result = await repository.loadAllNote();
      // assert
      verify(mockLocalDataSource.loadAllNote());
      expect(result, equals(Left(SqlFailure())));
    });
  });

  group('LoadNoteDetail', () {
    int id = 1;
    test('should return single Data Note Detail', () async {
      // arrange
      when(mockLocalDataSource.loadNoteDetail(id))
          .thenAnswer((_) async => fixture.noteWithContentFixture);
      // act
      final result = await repository.loadNoteDetail(id);
      // assert
      verify(mockLocalDataSource.loadNoteDetail(id));
      expect(result, equals(Right(fixture.noteWithContentFixture)));
    });

    runTestException(() async {
      // arrange
      when(mockLocalDataSource.loadNoteDetail(id)).thenThrow(SqlException());
      // act
      final result = await repository.loadNoteDetail(id);
      // assert
      verify(mockLocalDataSource.loadNoteDetail(id));
      expect(result, equals(Left(SqlFailure())));
    });
  });

  group('LoadAllNoteByBookId', () {
    int id = 1;
    test('should return All Data Note By Book ID', () async {
      // arrange
      when(mockLocalDataSource.loadAllNoteByBookId(id))
          .thenAnswer((_) async => fixture.listNoteFixture);
      // act
      await repository.loadAllNoteByBookId(id);
      // assert
      verify(mockLocalDataSource.loadAllNoteByBookId(id));
      // TODO:  Add Expect Test from result
    });

    runTestException(() async {
      // arrange
      when(mockLocalDataSource.loadAllNoteByBookId(id))
          .thenThrow(SqlException());
      // act
      final result = await repository.loadAllNoteByBookId(id);
      // assert
      verify(mockLocalDataSource.loadAllNoteByBookId(id));
      expect(result, equals(Left(SqlFailure())));
    });
  });

  group('LoadNoteDraft', () {
    test('should return Note where draft is true', () async {
      // arrange
      when(mockLocalDataSource.loadNoteDraft())
          .thenAnswer((_) async => fixture.noteWithContentFixture);
      // act
      final result = await repository.loadNoteDraft();
      // assert
      verify(mockLocalDataSource.loadNoteDraft());
      expect(result, equals(Right(fixture.noteWithContentFixture)));
    });

    runTestException(() async {
      // arrange
      when(mockLocalDataSource.loadNoteDraft()).thenThrow(SqlException());
      // act
      final result = await repository.loadNoteDraft();
      // assert
      verify(mockLocalDataSource.loadNoteDraft());
      expect(result, equals(Left(SqlFailure())));
    });
  });

  group('InsertNote', () {
    test('should insert data to database and return ID note', () async {
      // arrange
      when(mockLocalDataSource.insertNote(fixture.noteTestCompanion))
          .thenAnswer((_) async => 1);
      // act
      final result = await repository.insertNote(fixture.noteTestCompanion);
      // assert
      verify(mockLocalDataSource.insertNote(fixture.noteTestCompanion));
      expect(result, equals(Right(1)));
    });

    runTestException(() async {
      // arrange
      when(mockLocalDataSource.insertNote(fixture.noteTestCompanion))
          .thenThrow(SqlException());
      // act
      final result = await repository.insertNote(fixture.noteTestCompanion);
      // assert
      verify(mockLocalDataSource.insertNote(fixture.noteTestCompanion));
      expect(result, equals(Left(SqlFailure())));
    });

    group('InsertNote', () {
      test('should insert data to database and return ID note', () async {
        // arrange
        when(mockLocalDataSource.insertNote(fixture.noteTestCompanion))
            .thenAnswer((_) async => 1);
        // act
        final result = await repository.insertNote(fixture.noteTestCompanion);
        // assert
        verify(mockLocalDataSource.insertNote(fixture.noteTestCompanion));
        expect(result, equals(Right(1)));
      });

      runTestException(() async {
        // arrange
        when(mockLocalDataSource.insertNote(fixture.noteTestCompanion))
            .thenThrow(SqlException());
        // act
        final result = await repository.insertNote(fixture.noteTestCompanion);
        // assert
        verify(mockLocalDataSource.insertNote(fixture.noteTestCompanion));
        expect(result, equals(Left(SqlFailure())));
      });
    });
    group('UpdateNote', () {
      test('should update note to database and return True', () async {
        // arrange
        when(mockLocalDataSource.updateNote(fixture.noteTestIdCompanion))
            .thenAnswer((_) async => true);
        // act
        final result = await repository.updateNote(fixture.noteTestIdCompanion);
        // assert
        verify(mockLocalDataSource.updateNote(fixture.noteTestIdCompanion));
        expect(result, equals(Right(true)));
      });

      runTestException(() async {
        // arrange
        when(mockLocalDataSource.updateNote(fixture.noteTestIdCompanion))
            .thenThrow(SqlException());
        // act
        final result = await repository.updateNote(fixture.noteTestIdCompanion);
        // assert
        verify(mockLocalDataSource.updateNote(fixture.noteTestIdCompanion));
        expect(result, equals(Left(SqlFailure())));
      });
    });

    group('DeleteNote', () {
      test('should delete note from database and return 1', () async {
        // arrange
        when(mockLocalDataSource.deleteNote(fixture.noteTestIdCompanion))
            .thenAnswer((_) async => 1);
        // act
        final result = await repository.deleteNote(fixture.noteTestIdCompanion);
        // assert
        verify(mockLocalDataSource.deleteNote(fixture.noteTestIdCompanion));
        expect(result, equals(Right(1)));
      });

      runTestException(() async {
        // arrange
        when(mockLocalDataSource.deleteNote(fixture.noteTestIdCompanion))
            .thenThrow(SqlException());
        // act
        final result = await repository.deleteNote(fixture.noteTestIdCompanion);
        // assert
        verify(mockLocalDataSource.deleteNote(fixture.noteTestIdCompanion));
        expect(result, equals(Left(SqlFailure())));
      });
    });
  });
}
