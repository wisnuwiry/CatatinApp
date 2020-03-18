import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../repository/note_repository.dart';

class GetDeleteNote implements UseCase<int, ParamNotesCompanion> {
  final NoteRepository repository;

  GetDeleteNote(this.repository);

  @override
  Future<Either<Failure, int>> call(ParamNotesCompanion params) async {
    return await repository.deleteNote(params.note);
  }
}
