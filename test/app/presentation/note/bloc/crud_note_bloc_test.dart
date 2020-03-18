import 'package:catatin/app/domain/note/usecases/get_delete_note.dart';
import 'package:catatin/app/domain/note/usecases/get_insert_note.dart';
import 'package:catatin/app/domain/note/usecases/get_update_note.dart';
import 'package:catatin/app/presentation/bloc/crud/note_crud_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockGetInsertNote extends Mock implements GetInsertNote {}

class MockGetUpdateNote extends Mock implements GetUpdateNote {}

class MockGetDeleteNote extends Mock implements GetDeleteNote {}

void main() {
  NoteCrudBloc bloc;
  MockGetInsertNote mockGetInsertNote;
  MockGetUpdateNote mockGetUpdateNote;
  MockGetDeleteNote mockGetDeleteNote;

  setUp(() {
    mockGetInsertNote = MockGetInsertNote();
    mockGetUpdateNote = MockGetUpdateNote();
    mockGetDeleteNote = MockGetDeleteNote();
    // bloc = NoteCrudBloc(
    //     getInsertNote: mockGetInsertNote,
    //     getUpdateNote: mockGetUpdateNote,
    //     getDeleteNote: mockGetDeleteNote);
  });

  test('initialState should be Empty', (){
    expect(bloc.initialState, equals(Empty()));
  });

  group('GetInsertNote', (){
    test('should call input title must be not null',() async {
      // arrange

      // act
      // assert
    
    });
  });
}
