import 'package:moor_flutter/moor_flutter.dart';

import 'dao/dao.dart';

part 'app_db.g.dart';

@DataClassName('Note')
class Notes extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get editAt => dateTime()();
  TextColumn get title => text()();
  TextColumn get summary => text().nullable()();
  IntColumn get book =>
      integer().nullable().customConstraint('NULL REFERENCES books(id)')();
  IntColumn get content =>
      integer().nullable().customConstraint('NULL REFERENCES contents(id)')();
  BoolColumn get draf => boolean().withDefault(Constant(true))();
}

@DataClassName('Book')
class Books extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 10)();
  IntColumn get color => integer().nullable()();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('Content')
class Contents extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get data => text()();

  @override
  Set<Column> get primaryKey => {id};
}

@UseMoor(
  tables: [Notes, Books, Contents],
  daos: [
    NoteDao,
    BookDao,
    ContentDao,
  ],
)
class AppDatabase extends _$AppDatabase {
  AppDatabase(QueryExecutor e)
      : super(e);

  @override
  int get schemaVersion => 1;
}
