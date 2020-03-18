import 'package:catatin/db/app_db.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../error/failures.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}

class ParamId extends Equatable{
  final int id;

  ParamId({@required this.id});

  @override
  List<Object> get props => [id];
}

class ParamNotesCompanion extends Equatable{
  final NotesCompanion note;

  ParamNotesCompanion({@required this.note});

  @override
  List<Object> get props => [note];
}