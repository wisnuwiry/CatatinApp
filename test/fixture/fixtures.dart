import 'package:catatin/app/data/note/model/note_model.dart';
import 'package:catatin/db/app_db.dart';
import 'package:moor_flutter/moor_flutter.dart';

final DateTime _dateFake = DateTime.parse("2020-03-16 08:32:05.000");

final noteFixture = Note(
    id: 1,
    createdAt: _dateFake,
    editAt: _dateFake,
    title: "Some Title",
    summary: "Some Summary",
    book: null,
    content: 1,
    draf: true);

final noteFixtureUpdate = Note(
    id: 1,
    createdAt: _dateFake,
    editAt: _dateFake,
    title: "Hohoho hoho",
    summary: "Some Summary",
    book: null,
    content: 1,
    draf: false);

final bookFixture = Book(
  id: 1,
  name: 'Some Name',
  color: 0xFF000000,
);

final contentFixture = Content(
  data: contentFixtureData,
  id: 1,
);

final contentFixtureData = """[
   {"insert":"Karl","attributes":{"bold":true}},
   {"insert":" the "},
   {"insert":"Fog","attributes":{"italic":true}}
]""";

final noteWithContentFixture = NoteWithContent(
  book: bookFixture,
  content: contentFixture,
  note: noteFixture,
);

final noteWithBookFixture = NoteWithBook(
  book: bookFixture,
  note: noteFixture,
);

final List<NoteWithBook> listNoteFixture = [
  NoteWithBook(note: noteFixture, book: bookFixture),
];

// ############## Companions ############
final noteTestCompanion = NotesCompanion(
  title: Value('Some Title'),
  draf: Value(true),
  createdAt: Value(DateTime.parse("2020-03-16 08:32:05.000")),
  editAt: Value(DateTime.parse("2020-03-16 08:32:05.000")),
  summary: Value('Some Summary'),
  content: Value(1),
);

final noteTestIdCompanion = noteTestCompanion.copyWith(
  id: Value(1),
);
