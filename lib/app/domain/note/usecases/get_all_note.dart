import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../data/note/model/note_model.dart';
import '../repository/note_repository.dart';

class GetAllNote implements UseCase<List<NoteWithBook>, NoParams> {
  final NoteRepository repository;

  GetAllNote(this.repository);

  @override
  Future<Either<Failure, List<NoteWithBook>>> call(NoParams params) async {
    return await repository.loadAllNote();
  }
}
