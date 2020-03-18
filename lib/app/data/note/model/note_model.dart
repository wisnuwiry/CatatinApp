import 'dart:convert';

import 'package:meta/meta.dart';

import '../../../../db/app_db.dart';

class NoteWithBook {
  final Note note;
  final Book book;

  NoteWithBook({
    @required this.note,
    @required this.book,
  });

  Map<String, dynamic> toJson() {
    return {"note": note, "book": book};
  }

  @override
  String toString() {
    return "NoteWithBook(${jsonEncode(toJson())})";
  }
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

  Map<String, dynamic> toJson() {
    return {
      "note": note,
      "book": book,
      "content": content,
    };
  }

  @override
  String toString() {
    return "NoteWithContent(${jsonEncode(toJson())})";
  }
}

class BookWithCount {
  final Book book;
  final int count;
  BookWithCount({this.book, this.count});

  Map<String, dynamic> toJson() {
    return {"book": book, "count": count};
  }

  @override
  String toString() {
    return "NoteWithCount(${jsonEncode(toJson())})";
  }
}
