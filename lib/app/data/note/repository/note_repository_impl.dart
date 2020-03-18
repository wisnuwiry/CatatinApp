import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

import '../../../../core/error/exceptions.dart';
import '../../../../core/error/failures.dart';
import '../../../../db/app_db.dart';
import '../../../domain/note/repository/note_repository.dart';
import '../datasources/note_local_data_source.dart';
import '../model/note_model.dart';

class NoteRepositoryImpl implements NoteRepository {
  final NoteLocalDataSource localDataSource;

  NoteRepositoryImpl({@required this.localDataSource});

  @override
  Future<Either<Failure, int>> deleteNote(NotesCompanion note) async {
    try {
      final result = await localDataSource.deleteNote(note);
      return Right(result);
    } on SqlException {
      return Left(SqlFailure());
    }
  }

  @override
  Future<Either<Failure, int>> insertNote(NotesCompanion note) async {
    try {
      final result = await localDataSource.insertNote(note);
      return Right(result);
    } on SqlException {
      return Left(SqlFailure());
    }
  }

  @override
  Future<Either<Failure, List<NoteWithBook>>> loadAllNote() async {
    try {
      final result = await localDataSource.loadAllNote();
      return Right(result);
    } on SqlException {
      return Left(SqlFailure());
    }
  }

  @override
  Future<Either<Failure, List<NoteWithBook>>> loadAllNoteByBookId(
      int id) async {
    try {
      final result = await localDataSource.loadAllNoteByBookId(id);
      return Right(result);
    } on SqlException {
      return Left(SqlFailure());
    }
  }

  @override
  Future<Either<Failure, NoteWithContent>> loadNoteDetail(int id) async {
    try {
      final result = await localDataSource.loadNoteDetail(id);
      return Right(result);
    } on SqlException {
      return Left(SqlFailure());
    }
  }

  @override
  Future<Either<Failure, NoteWithContent>> loadNoteDraft() async {
    try {
      final result = await localDataSource.loadNoteDraft();
      return Right(result);
    } on SqlException {
      return Left(SqlFailure());
    }
  }

  @override
  Future<Either<Failure, bool>> updateNote(NotesCompanion note) async {
    try {
      final result = await localDataSource.updateNote(note);
      return Right(result);
    } on SqlException {
      return Left(SqlFailure());
    }
  }
}
