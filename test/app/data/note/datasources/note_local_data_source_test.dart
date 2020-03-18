import 'package:catatin/app/data/note/datasources/note_local_data_source.dart';
import 'package:catatin/db/app_db.dart';
import 'package:catatin/db/dao/dao.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:moor_ffi/moor_ffi.dart';

import '../../../../fixture/fixtures.dart' as fixture;

// TODO: Add Test All on Data Source Note
void main() {
  NoteLocalDataSourceImpl dataSource;
  NoteDao noteDao;
  AppDatabase appDatabase;

  setUp(() {
    appDatabase = AppDatabase(VmDatabase.memory());
    noteDao = NoteDao(appDatabase);
    dataSource = NoteLocalDataSourceImpl(noteDao: noteDao);
  });

  group('get loadAllNote', () {
    test('should return List All Note from SqlLite', () async {
      // arrange
      // when(dataSource.loadAllNote())
      //     .thenAnswer((_) async => fixture.listNoteFixture);
      // act

      // assert
    });
  });
}
