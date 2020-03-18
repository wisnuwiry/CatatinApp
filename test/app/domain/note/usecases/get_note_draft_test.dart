import 'package:catatin/app/domain/note/repository/note_repository.dart';
import 'package:catatin/app/domain/note/usecases/get_note_draft.dart';
import 'package:catatin/core/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixture/fixtures.dart' as fixture;

class MockNoteRepository extends Mock implements NoteRepository {}

void main() {
  GetNoteDraf usecase;
  MockNoteRepository mockNoteRepository;

  setUp(() {
    mockNoteRepository = MockNoteRepository();
    usecase = GetNoteDraf(mockNoteRepository);
  });

  test('should get load note where draft true from DB', () async {
    // arrange
    when(mockNoteRepository.loadNoteDraft())
        .thenAnswer((_) async => Right(fixture.noteWithContentFixture));
    // act
    final result = await usecase(NoParams());
    // expect
    expect(result, Right(fixture.noteWithContentFixture));
    // verifikasi bahwa method pada repository apakah sudah dipanggil
    verify(mockNoteRepository.loadNoteDraft());
    // cuma memanggil method mock diatas
    verifyNoMoreInteractions(mockNoteRepository);
  });
}
