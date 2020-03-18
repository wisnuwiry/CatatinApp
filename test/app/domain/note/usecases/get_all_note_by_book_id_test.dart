import 'package:catatin/app/domain/note/repository/note_repository.dart';
import 'package:catatin/app/domain/note/usecases/get_all_note_by_book_id.dart';
import 'package:catatin/core/usecases/usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../../fixture/fixtures.dart' as fixture;

class MockNoteRepository extends Mock implements NoteRepository {}

void main() {
  GetAllNoteByBookId usecase;
  MockNoteRepository mockNoteRepository;

  setUp(() {
    mockNoteRepository = MockNoteRepository();
    usecase = GetAllNoteByBookId(mockNoteRepository);
  });

  final int idBookTest = 1;
  test('should get load all note by book id from DB', () async {
    // arrange
    when(mockNoteRepository.loadAllNoteByBookId(idBookTest))
        .thenAnswer((_) async => Right(fixture.listNoteFixture));
    // act
    final result = await usecase(ParamId(id: idBookTest));
    // expect
    expect(result, Right(fixture.listNoteFixture));
    // verifikasi bahwa method pada repository apakah sudah dipanggil
    verify(mockNoteRepository.loadAllNoteByBookId(idBookTest));
    // cuma memanggil method mock diatas
    verifyNoMoreInteractions(mockNoteRepository);
  });
}
