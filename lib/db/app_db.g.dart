// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Note extends DataClass implements Insertable<Note> {
  final int id;
  final DateTime createdAt;
  final DateTime editAt;
  final String title;
  final String summary;
  final int book;
  final int content;
  final bool draf;
  Note(
      {@required this.id,
      @required this.createdAt,
      @required this.editAt,
      @required this.title,
      this.summary,
      this.book,
      this.content,
      @required this.draf});
  factory Note.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    return Note(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      createdAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}created_at']),
      editAt: dateTimeType
          .mapFromDatabaseResponse(data['${effectivePrefix}edit_at']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      summary:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}summary']),
      book: intType.mapFromDatabaseResponse(data['${effectivePrefix}book']),
      content:
          intType.mapFromDatabaseResponse(data['${effectivePrefix}content']),
      draf: boolType.mapFromDatabaseResponse(data['${effectivePrefix}draf']),
    );
  }
  factory Note.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Note(
      id: serializer.fromJson<int>(json['id']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      editAt: serializer.fromJson<DateTime>(json['editAt']),
      title: serializer.fromJson<String>(json['title']),
      summary: serializer.fromJson<String>(json['summary']),
      book: serializer.fromJson<int>(json['book']),
      content: serializer.fromJson<int>(json['content']),
      draf: serializer.fromJson<bool>(json['draf']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'editAt': serializer.toJson<DateTime>(editAt),
      'title': serializer.toJson<String>(title),
      'summary': serializer.toJson<String>(summary),
      'book': serializer.toJson<int>(book),
      'content': serializer.toJson<int>(content),
      'draf': serializer.toJson<bool>(draf),
    };
  }

  @override
  NotesCompanion createCompanion(bool nullToAbsent) {
    return NotesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      editAt:
          editAt == null && nullToAbsent ? const Value.absent() : Value(editAt),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      summary: summary == null && nullToAbsent
          ? const Value.absent()
          : Value(summary),
      book: book == null && nullToAbsent ? const Value.absent() : Value(book),
      content: content == null && nullToAbsent
          ? const Value.absent()
          : Value(content),
      draf: draf == null && nullToAbsent ? const Value.absent() : Value(draf),
    );
  }

  Note copyWith(
          {int id,
          DateTime createdAt,
          DateTime editAt,
          String title,
          String summary,
          int book,
          int content,
          bool draf}) =>
      Note(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        editAt: editAt ?? this.editAt,
        title: title ?? this.title,
        summary: summary ?? this.summary,
        book: book ?? this.book,
        content: content ?? this.content,
        draf: draf ?? this.draf,
      );
  @override
  String toString() {
    return (StringBuffer('Note(')
          ..write('id: $id, ')
          ..write('createdAt: $createdAt, ')
          ..write('editAt: $editAt, ')
          ..write('title: $title, ')
          ..write('summary: $summary, ')
          ..write('book: $book, ')
          ..write('content: $content, ')
          ..write('draf: $draf')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          createdAt.hashCode,
          $mrjc(
              editAt.hashCode,
              $mrjc(
                  title.hashCode,
                  $mrjc(
                      summary.hashCode,
                      $mrjc(book.hashCode,
                          $mrjc(content.hashCode, draf.hashCode))))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Note &&
          other.id == this.id &&
          other.createdAt == this.createdAt &&
          other.editAt == this.editAt &&
          other.title == this.title &&
          other.summary == this.summary &&
          other.book == this.book &&
          other.content == this.content &&
          other.draf == this.draf);
}

class NotesCompanion extends UpdateCompanion<Note> {
  final Value<int> id;
  final Value<DateTime> createdAt;
  final Value<DateTime> editAt;
  final Value<String> title;
  final Value<String> summary;
  final Value<int> book;
  final Value<int> content;
  final Value<bool> draf;
  const NotesCompanion({
    this.id = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.editAt = const Value.absent(),
    this.title = const Value.absent(),
    this.summary = const Value.absent(),
    this.book = const Value.absent(),
    this.content = const Value.absent(),
    this.draf = const Value.absent(),
  });
  NotesCompanion.insert({
    this.id = const Value.absent(),
    @required DateTime createdAt,
    @required DateTime editAt,
    @required String title,
    this.summary = const Value.absent(),
    this.book = const Value.absent(),
    this.content = const Value.absent(),
    this.draf = const Value.absent(),
  })  : createdAt = Value(createdAt),
        editAt = Value(editAt),
        title = Value(title);
  NotesCompanion copyWith(
      {Value<int> id,
      Value<DateTime> createdAt,
      Value<DateTime> editAt,
      Value<String> title,
      Value<String> summary,
      Value<int> book,
      Value<int> content,
      Value<bool> draf}) {
    return NotesCompanion(
      id: id ?? this.id,
      createdAt: createdAt ?? this.createdAt,
      editAt: editAt ?? this.editAt,
      title: title ?? this.title,
      summary: summary ?? this.summary,
      book: book ?? this.book,
      content: content ?? this.content,
      draf: draf ?? this.draf,
    );
  }
}

class $NotesTable extends Notes with TableInfo<$NotesTable, Note> {
  final GeneratedDatabase _db;
  final String _alias;
  $NotesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _createdAtMeta = const VerificationMeta('createdAt');
  GeneratedDateTimeColumn _createdAt;
  @override
  GeneratedDateTimeColumn get createdAt => _createdAt ??= _constructCreatedAt();
  GeneratedDateTimeColumn _constructCreatedAt() {
    return GeneratedDateTimeColumn(
      'created_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _editAtMeta = const VerificationMeta('editAt');
  GeneratedDateTimeColumn _editAt;
  @override
  GeneratedDateTimeColumn get editAt => _editAt ??= _constructEditAt();
  GeneratedDateTimeColumn _constructEditAt() {
    return GeneratedDateTimeColumn(
      'edit_at',
      $tableName,
      false,
    );
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      false,
    );
  }

  final VerificationMeta _summaryMeta = const VerificationMeta('summary');
  GeneratedTextColumn _summary;
  @override
  GeneratedTextColumn get summary => _summary ??= _constructSummary();
  GeneratedTextColumn _constructSummary() {
    return GeneratedTextColumn(
      'summary',
      $tableName,
      true,
    );
  }

  final VerificationMeta _bookMeta = const VerificationMeta('book');
  GeneratedIntColumn _book;
  @override
  GeneratedIntColumn get book => _book ??= _constructBook();
  GeneratedIntColumn _constructBook() {
    return GeneratedIntColumn('book', $tableName, true,
        $customConstraints: 'NULL REFERENCES books(id)');
  }

  final VerificationMeta _contentMeta = const VerificationMeta('content');
  GeneratedIntColumn _content;
  @override
  GeneratedIntColumn get content => _content ??= _constructContent();
  GeneratedIntColumn _constructContent() {
    return GeneratedIntColumn('content', $tableName, true,
        $customConstraints: 'NULL REFERENCES contents(id)');
  }

  final VerificationMeta _drafMeta = const VerificationMeta('draf');
  GeneratedBoolColumn _draf;
  @override
  GeneratedBoolColumn get draf => _draf ??= _constructDraf();
  GeneratedBoolColumn _constructDraf() {
    return GeneratedBoolColumn('draf', $tableName, false,
        defaultValue: Constant(true));
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, createdAt, editAt, title, summary, book, content, draf];
  @override
  $NotesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'notes';
  @override
  final String actualTableName = 'notes';
  @override
  VerificationContext validateIntegrity(NotesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.createdAt.present) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableValue(d.createdAt.value, _createdAtMeta));
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (d.editAt.present) {
      context.handle(
          _editAtMeta, editAt.isAcceptableValue(d.editAt.value, _editAtMeta));
    } else if (isInserting) {
      context.missing(_editAtMeta);
    }
    if (d.title.present) {
      context.handle(
          _titleMeta, title.isAcceptableValue(d.title.value, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (d.summary.present) {
      context.handle(_summaryMeta,
          summary.isAcceptableValue(d.summary.value, _summaryMeta));
    }
    if (d.book.present) {
      context.handle(
          _bookMeta, book.isAcceptableValue(d.book.value, _bookMeta));
    }
    if (d.content.present) {
      context.handle(_contentMeta,
          content.isAcceptableValue(d.content.value, _contentMeta));
    }
    if (d.draf.present) {
      context.handle(
          _drafMeta, draf.isAcceptableValue(d.draf.value, _drafMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Note map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Note.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(NotesCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.createdAt.present) {
      map['created_at'] = Variable<DateTime, DateTimeType>(d.createdAt.value);
    }
    if (d.editAt.present) {
      map['edit_at'] = Variable<DateTime, DateTimeType>(d.editAt.value);
    }
    if (d.title.present) {
      map['title'] = Variable<String, StringType>(d.title.value);
    }
    if (d.summary.present) {
      map['summary'] = Variable<String, StringType>(d.summary.value);
    }
    if (d.book.present) {
      map['book'] = Variable<int, IntType>(d.book.value);
    }
    if (d.content.present) {
      map['content'] = Variable<int, IntType>(d.content.value);
    }
    if (d.draf.present) {
      map['draf'] = Variable<bool, BoolType>(d.draf.value);
    }
    return map;
  }

  @override
  $NotesTable createAlias(String alias) {
    return $NotesTable(_db, alias);
  }
}

class Book extends DataClass implements Insertable<Book> {
  final int id;
  final String name;
  final int color;
  Book({@required this.id, @required this.name, this.color});
  factory Book.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Book(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      color: intType.mapFromDatabaseResponse(data['${effectivePrefix}color']),
    );
  }
  factory Book.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Book(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      color: serializer.fromJson<int>(json['color']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String>(name),
      'color': serializer.toJson<int>(color),
    };
  }

  @override
  BooksCompanion createCompanion(bool nullToAbsent) {
    return BooksCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      color:
          color == null && nullToAbsent ? const Value.absent() : Value(color),
    );
  }

  Book copyWith({int id, String name, int color}) => Book(
        id: id ?? this.id,
        name: name ?? this.name,
        color: color ?? this.color,
      );
  @override
  String toString() {
    return (StringBuffer('Book(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('color: $color')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      $mrjf($mrjc(id.hashCode, $mrjc(name.hashCode, color.hashCode)));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Book &&
          other.id == this.id &&
          other.name == this.name &&
          other.color == this.color);
}

class BooksCompanion extends UpdateCompanion<Book> {
  final Value<int> id;
  final Value<String> name;
  final Value<int> color;
  const BooksCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.color = const Value.absent(),
  });
  BooksCompanion.insert({
    this.id = const Value.absent(),
    @required String name,
    this.color = const Value.absent(),
  }) : name = Value(name);
  BooksCompanion copyWith(
      {Value<int> id, Value<String> name, Value<int> color}) {
    return BooksCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      color: color ?? this.color,
    );
  }
}

class $BooksTable extends Books with TableInfo<$BooksTable, Book> {
  final GeneratedDatabase _db;
  final String _alias;
  $BooksTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
        minTextLength: 1, maxTextLength: 10);
  }

  final VerificationMeta _colorMeta = const VerificationMeta('color');
  GeneratedIntColumn _color;
  @override
  GeneratedIntColumn get color => _color ??= _constructColor();
  GeneratedIntColumn _constructColor() {
    return GeneratedIntColumn(
      'color',
      $tableName,
      true,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, name, color];
  @override
  $BooksTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'books';
  @override
  final String actualTableName = 'books';
  @override
  VerificationContext validateIntegrity(BooksCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.name.present) {
      context.handle(
          _nameMeta, name.isAcceptableValue(d.name.value, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (d.color.present) {
      context.handle(
          _colorMeta, color.isAcceptableValue(d.color.value, _colorMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Book map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Book.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(BooksCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.name.present) {
      map['name'] = Variable<String, StringType>(d.name.value);
    }
    if (d.color.present) {
      map['color'] = Variable<int, IntType>(d.color.value);
    }
    return map;
  }

  @override
  $BooksTable createAlias(String alias) {
    return $BooksTable(_db, alias);
  }
}

class Content extends DataClass implements Insertable<Content> {
  final int id;
  final String data;
  Content({@required this.id, @required this.data});
  factory Content.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Content(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      data: stringType.mapFromDatabaseResponse(data['${effectivePrefix}data']),
    );
  }
  factory Content.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Content(
      id: serializer.fromJson<int>(json['id']),
      data: serializer.fromJson<String>(json['data']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'data': serializer.toJson<String>(data),
    };
  }

  @override
  ContentsCompanion createCompanion(bool nullToAbsent) {
    return ContentsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      data: data == null && nullToAbsent ? const Value.absent() : Value(data),
    );
  }

  Content copyWith({int id, String data}) => Content(
        id: id ?? this.id,
        data: data ?? this.data,
      );
  @override
  String toString() {
    return (StringBuffer('Content(')
          ..write('id: $id, ')
          ..write('data: $data')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(id.hashCode, data.hashCode));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Content && other.id == this.id && other.data == this.data);
}

class ContentsCompanion extends UpdateCompanion<Content> {
  final Value<int> id;
  final Value<String> data;
  const ContentsCompanion({
    this.id = const Value.absent(),
    this.data = const Value.absent(),
  });
  ContentsCompanion.insert({
    this.id = const Value.absent(),
    @required String data,
  }) : data = Value(data);
  ContentsCompanion copyWith({Value<int> id, Value<String> data}) {
    return ContentsCompanion(
      id: id ?? this.id,
      data: data ?? this.data,
    );
  }
}

class $ContentsTable extends Contents with TableInfo<$ContentsTable, Content> {
  final GeneratedDatabase _db;
  final String _alias;
  $ContentsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn('id', $tableName, false,
        hasAutoIncrement: true, declaredAsPrimaryKey: true);
  }

  final VerificationMeta _dataMeta = const VerificationMeta('data');
  GeneratedTextColumn _data;
  @override
  GeneratedTextColumn get data => _data ??= _constructData();
  GeneratedTextColumn _constructData() {
    return GeneratedTextColumn(
      'data',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, data];
  @override
  $ContentsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'contents';
  @override
  final String actualTableName = 'contents';
  @override
  VerificationContext validateIntegrity(ContentsCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    }
    if (d.data.present) {
      context.handle(
          _dataMeta, data.isAcceptableValue(d.data.value, _dataMeta));
    } else if (isInserting) {
      context.missing(_dataMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Content map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Content.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ContentsCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.data.present) {
      map['data'] = Variable<String, StringType>(d.data.value);
    }
    return map;
  }

  @override
  $ContentsTable createAlias(String alias) {
    return $ContentsTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $NotesTable _notes;
  $NotesTable get notes => _notes ??= $NotesTable(this);
  $BooksTable _books;
  $BooksTable get books => _books ??= $BooksTable(this);
  $ContentsTable _contents;
  $ContentsTable get contents => _contents ??= $ContentsTable(this);
  NoteDao _noteDao;
  NoteDao get noteDao => _noteDao ??= NoteDao(this as AppDatabase);
  BookDao _bookDao;
  BookDao get bookDao => _bookDao ??= BookDao(this as AppDatabase);
  ContentDao _contentDao;
  ContentDao get contentDao => _contentDao ??= ContentDao(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [notes, books, contents];
}
