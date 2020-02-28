// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dao.dart';

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$BookDaoMixin on DatabaseAccessor<AppDatabase> {
  $BooksTable get books => db.books;
}
mixin _$NoteDaoMixin on DatabaseAccessor<AppDatabase> {
  $NotesTable get notes => db.notes;
  $BooksTable get books => db.books;
  $ContentsTable get contents => db.contents;
}
mixin _$ContentDaoMixin on DatabaseAccessor<AppDatabase> {
  $ContentsTable get contents => db.contents;
}
