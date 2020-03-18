import 'package:catatin/app/domain/note/repository/note_repository.dart';
import 'package:catatin/app/domain/note/usecases/get_note_detail.dart';
import 'package:catatin/core/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixture/fixtures.dart' as fixture;

class MockNoteRepository extends Mock implements NoteRepository {}

void main() {
  GetNoteDetail usecase;
  MockNoteRepository mockNoteRepository;

  setUp(() {
    mockNoteRepository = MockNoteRepository();
    usecase = GetNoteDetail(mockNoteRepository);
  });

  final int idNote = 1;
  test('should get load note detail from DB', () async {
    // arrange
    when(mockNoteRepository.loadNoteDetail(idNote))
        .thenAnswer((_) async => Right(fixture.noteWithContentFixture));
    // act
    final result = await usecase(ParamId(id: idNote));
    // expect
    expect(result, Right(fixture.noteWithContentFixture));
    // verifikasi bahwa method pada repository apakah sudah dipanggil
    verify(mockNoteRepository.loadNoteDetail(idNote));
    // cuma memanggil method mock diatas
    verifyNoMoreInteractions(mockNoteRepository);
  });
}
