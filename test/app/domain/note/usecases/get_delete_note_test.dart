import 'package:catatin/app/domain/note/repository/note_repository.dart';
import 'package:catatin/app/domain/note/usecases/get_delete_note.dart';
import 'package:catatin/core/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixture/fixtures.dart' as fixture;

class MockNoteRepository extends Mock implements NoteRepository {}

void main() {
  GetDeleteNote usecase;
  MockNoteRepository mockNoteRepository;

  setUp(() {
    mockNoteRepository = MockNoteRepository();
    usecase = GetDeleteNote(mockNoteRepository);
  });

  test('should delete note from DB', () async {
    // arrange
    when(mockNoteRepository.deleteNote(fixture.noteTestIdCompanion))
        .thenAnswer((_) async => Right(1));
    // act
    final result = await usecase(ParamNotesCompanion(note: fixture.noteTestIdCompanion));
    // expect
    expect(result, Right(1));
    // verifikasi bahwa method pada repository apakah sudah dipanggil
    verify(mockNoteRepository.deleteNote(fixture.noteTestIdCompanion));
    // cuma memanggil method mock diatas
    verifyNoMoreInteractions(mockNoteRepository);
  });
}
