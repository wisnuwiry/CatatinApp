import 'package:catatin/app/domain/note/repository/note_repository.dart';
import 'package:catatin/app/domain/note/usecases/get_all_note.dart';
import 'package:catatin/core/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixture/fixtures.dart' as fixture;

class MockNoteRepository extends Mock implements NoteRepository {}

void main() {
  GetAllNote usecase;
  MockNoteRepository mockNoteRepository;

  setUp(() {
    mockNoteRepository = MockNoteRepository();
    usecase = GetAllNote(mockNoteRepository);
  });

  test('should get load all note from DB', () async {
    // arrange
    when(mockNoteRepository.loadAllNote())
        .thenAnswer((_) async => Right(fixture.listNoteFixture));
    // act
    final result = await usecase(NoParams());
    // expect
    expect(result, Right(fixture.listNoteFixture));
    // verifikasi bahwa method pada repository apakah sudah dipanggil
    verify(mockNoteRepository.loadAllNote());
    // cuma memanggil method mock diatas
    verifyNoMoreInteractions(mockNoteRepository);
  });
}
