import 'package:catatin/db/app_db.dart';

final Map<String, dynamic> expectNoteWithBook = {
  "note": Note(
      id: 1,
      createdAt: DateTime.parse("2020-03-16 08:32:05.000"),
      editAt: DateTime.parse("2020-03-16 08:32:05.000"),
      title: "Some Title",
      summary: "Some Summary",
      book: null,
      content: 1,
      draf: true),
  "book": Book(id: 1, name: "Some Name", color: 4278190080)
};

final Map<String, dynamic> expectNoteWithContent = {
  "note": Note(
      id: 1,
      createdAt: DateTime.parse("2020-03-16 08:32:05.000"),
      editAt: DateTime.parse("2020-03-16 08:32:05.000"),
      title: "Some Title",
      summary: "Some Summary",
      book: null,
      content: 1,
      draf: true),
  "book": Book(id: 1, name: "Some Name", color: 4278190080),
  "content": Content(id: 1, data: '''[
   {"insert":"Karl","attributes":{"bold":true}},
   {"insert":" the "},
   {"insert":"Fog","attributes":{"italic":true}}
]''')
};
