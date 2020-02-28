import 'package:meta/meta.dart';

import '../../../../db/app_db.dart';

class NoteWithBook {
  final Note note;
  final Book book;

  NoteWithBook({
    @required this.note,
    @required this.book,
  });
}

class NoteWithContent {
  final Note note;
  final Book book;
  final Content content;

  NoteWithContent({
    @required this.note,
    @required this.book,
    @required this.content,
  });
}

class BookWithCount {
  final Book book;
  final int count;
  BookWithCount({this.book, this.count});
}