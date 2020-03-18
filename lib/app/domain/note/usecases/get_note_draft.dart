import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../data/note/model/note_model.dart';
import '../repository/note_repository.dart';

class GetNoteDraf implements UseCase<NoteWithContent, NoParams> {
  final NoteRepository repository;

  GetNoteDraf(this.repository);

  @override
  Future<Either<Failure, NoteWithContent>> call(NoParams params) async {
    return await repository.loadNoteDraft();
  }
}
