import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repository/note_repository.dart';

class GetUpdateNote implements UseCase<bool, ParamNotesCompanion> {
  final NoteRepository repository;

  GetUpdateNote(this.repository);

  @override
  Future<Either<Failure, bool>> call(ParamNotesCompanion params) async {
    return await repository.updateNote(params.note);
  }
}
