part of 'dao.dart';

@UseDao(tables: [Books])
class BookDao extends DatabaseAccessor<AppDatabase> with _$BookDaoMixin {
  BookDao(AppDatabase db) : super(db);

  Future<List<Book>> getAllBooks() async => await select(books).get();
  Future<int> insertBook(Insertable<Book> book) => into(books).insert(book);
  Future<bool> updateBook(Insertable<Book> book) => update(books).replace(book);
  Future<int> deleteBook(Insertable<Book> book) => delete(books).delete(book);
}
