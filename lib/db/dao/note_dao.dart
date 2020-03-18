part of 'dao.dart';

@UseDao(
  tables: [Notes, Books, Contents],
)
class NoteDao extends DatabaseAccessor<AppDatabase> with _$NoteDaoMixin {
  final AppDatabase db;
  NoteDao(this.db) : super(db);

  Future<List<NoteWithBook>> getAllNotes() async {
    final rows = await (select(notes)
          ..orderBy(
            [
              (t) => OrderingTerm(
                  expression: t.createdAt, mode: OrderingMode.desc),
              (t) => OrderingTerm(expression: t.title),
            ],
          ))
        .join(
      [
        leftOuterJoin(books, books.id.equalsExp(notes.book)),
        leftOuterJoin(contents, contents.id.equalsExp(notes.content))
      ],
    ).get();

    return rows.map((result) {
      return NoteWithBook(
        note: result.readTable(notes),
        book: result.readTable(books),
      );
    }).toList();
  }

  /// Return Note Detail (Content, Book)
  Future<NoteWithContent> getById(int id) async {
    return await (select(notes)..where((t) => t.id.equals(id)))
        .join(
          [
            leftOuterJoin(books, books.id.equalsExp(notes.book)),
            leftOuterJoin(contents, contents.id.equalsExp(notes.content))
          ],
        )
        .map((rows) => NoteWithContent(
            note: rows.readTable(notes),
            book: rows.readTable(books),
            content: rows.readTable(contents)))
        .getSingle();
  }

  Future<NoteWithContent> getDraft() async {
    return await (select(notes)..where((t) => t.draf.equals(true)))
        .join(
          [
            leftOuterJoin(books, books.id.equalsExp(notes.book)),
            leftOuterJoin(contents, contents.id.equalsExp(notes.content))
          ],
        )
        .map((rows) => NoteWithContent(
            note: rows.readTable(notes),
            book: rows.readTable(books),
            content: rows.readTable(contents)))
        .getSingle();
  }

  Future<List<NoteWithBook>> getByBookId(int id) async {
    final rows = await (select(notes)
          ..where((t) => t.book.equals(id))
          ..orderBy(
            [
              (t) => OrderingTerm(
                  expression: t.createdAt, mode: OrderingMode.desc),
              (t) => OrderingTerm(expression: t.title),
            ],
          ))
        .join(
      [
        leftOuterJoin(books, books.id.equalsExp(notes.book)),
        leftOuterJoin(contents, contents.id.equalsExp(notes.content))
      ],
    ).get();

    return rows.map((result) {
      return NoteWithBook(
        note: result.readTable(notes),
        book: result.readTable(books),
      );
    }).toList();
  }

  Future<int> insertNote(Insertable<Note> note) => into(notes).insert(note);
  Future<bool> updateNote(Insertable<Note> note) => update(notes).replace(note);
  Future<int> deleteNote(Insertable<Note> note) => delete(notes).delete(note);
}
