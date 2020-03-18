import 'package:catatin/app/data/note/model/note_model.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixture/fixtures.dart' as fixture;
import '../../../../fixture/expect_json.dart';

void main() {
  final tNoteWithBook = NoteWithBook(
    book: fixture.bookFixture,
    note: fixture.noteFixture,
  );

  final tNoteWithContent = NoteWithContent(
    note: fixture.noteFixture,
    book: fixture.bookFixture,
    content: fixture.contentFixture,
  );

  group('Check Model Class', () {
    test('should be a subclass of NoteWithBook Model', () async {
      // assert
      expect(tNoteWithBook, isA<NoteWithBook>());
    });

    test('should be a subclass of NoteWithContent Model', () async {
      // assert
      expect(tNoteWithContent, isA<NoteWithContent>());
    });
  });

  group('toJson model', () {
    test('should return a JSON map NoteWithBook', () async {
      // act
      final result = tNoteWithBook.toJson();
      // assert
      expect(result, expectNoteWithBook);
    });

    test('should return a JSON map NoteWithContent', () async {
      // act
      final result = tNoteWithContent.toJson();
      // assert
      expect(result, expectNoteWithContent);
    });
  });
}
