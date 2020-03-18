import 'package:catatin/app/domain/note/repository/note_repository.dart';
import 'package:catatin/app/domain/note/usecases/get_insert_note.dart';
import 'package:catatin/core/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixture/fixtures.dart' as fixture;

class MockNoteRepository extends Mock implements NoteRepository {}

void main() {
  GetInsertNote usecase;
  MockNoteRepository mockNoteRepository;

  setUp(() {
    mockNoteRepository = MockNoteRepository();
    usecase = GetInsertNote(mockNoteRepository);
  });

  test('should insert note to DB', () async {
    // arrange
    when(mockNoteRepository.insertNote(fixture.noteTestCompanion))
        .thenAnswer((_) async => Right(1));
    // act
    final result = await usecase(ParamNotesCompanion(note: fixture.noteTestCompanion));
    // expect
    expect(result, Right(1));
    // verifikasi bahwa method pada repository apakah sudah dipanggil
    verify(mockNoteRepository.insertNote(fixture.noteTestCompanion));
    // cuma memanggil method mock diatas
    verifyNoMoreInteractions(mockNoteRepository);
  });
}
