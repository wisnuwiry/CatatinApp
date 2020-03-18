import 'package:catatin/app/domain/note/repository/note_repository.dart';
import 'package:catatin/app/domain/note/usecases/get_note_detail.dart';
import 'package:catatin/app/domain/note/usecases/get_update_note.dart';
import 'package:catatin/core/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixture/fixtures.dart' as fixture;

class MockNoteRepository extends Mock implements NoteRepository {}

void main() {
  GetUpdateNote usecase;
  MockNoteRepository mockNoteRepository;

  setUp(() {
    mockNoteRepository = MockNoteRepository();
    usecase = GetUpdateNote(mockNoteRepository);
  });

  test('should get update note from DB', () async {
    // arrange
    when(mockNoteRepository.updateNote(fixture.noteTestIdCompanion))
        .thenAnswer((_) async => Right(true));
    // act
    final result = await usecase(ParamNotesCompanion(note: fixture.noteTestIdCompanion));
    // expect
    expect(result, Right(true));
    // verifikasi bahwa method pada repository apakah sudah dipanggil
    verify(mockNoteRepository.updateNote(fixture.noteTestIdCompanion));
    // cuma memanggil method mock diatas
    verifyNoMoreInteractions(mockNoteRepository);
  });
}
