part of 'dao.dart';

@UseDao(tables: [Contents])
class ContentDao extends DatabaseAccessor<AppDatabase> with _$ContentDaoMixin {
  ContentDao(AppDatabase db) : super(db);

  Future<int> insertContent(Insertable<Content> content) =>
      into(contents).insert(content);
  Future<bool> updateContent(Insertable<Content> content) =>
      update(contents).replace(content);
  Future<int> deleteContent(Insertable<Content> content) =>
      delete(contents).delete(content);
}