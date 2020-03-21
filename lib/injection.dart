import 'package:get_it/get_it.dart';

import 'app/data/note/datasources/note_local_data_source.dart';
import 'app/data/note/repository/note_repository_impl.dart';
import 'app/domain/note/repository/note_repository.dart';
import 'app/domain/note/usecases/get_all_note.dart';
import 'app/domain/note/usecases/get_all_note_by_book_id.dart';
import 'app/domain/note/usecases/get_delete_note.dart';
import 'app/domain/note/usecases/get_insert_note.dart';
import 'app/domain/note/usecases/get_note_detail.dart';
import 'app/domain/note/usecases/get_note_draft.dart';
import 'app/domain/note/usecases/get_update_note.dart';
import 'app/presentation/bloc/crud/note_crud_bloc.dart';
import 'app/presentation/bloc/load/note_load_bloc.dart';

final sl = GetIt.instance;

Future<void> init() async {
  //! Feature

  // Bloc
  sl.registerFactory(() {
    return NoteCrudBloc(insert: sl(), update: sl(), delete: sl());
  });
  sl.registerFactory(() {
    return NoteLoadBloc();
  });

  // Use Cases
  sl.registerLazySingleton(() => GetAllNote(sl()));
  sl.registerLazySingleton(() => GetAllNoteByBookId(sl()));
  sl.registerLazySingleton(() => GetNoteDetail(sl()));
  sl.registerLazySingleton(() => GetNoteDraf(sl()));
  sl.registerLazySingleton(() => GetInsertNote(sl()));
  sl.registerLazySingleton(() => GetUpdateNote(sl()));
  sl.registerLazySingleton(() => GetDeleteNote(sl()));
  
  // Repository
  sl.registerLazySingleton<NoteRepository>(() {
    return NoteRepositoryImpl(localDataSource: sl());
  });

  // Data Source
  sl.registerLazySingleton((){
    NoteLocalDataSourceImpl(noteDao: sl());
  });

  //! External
}
