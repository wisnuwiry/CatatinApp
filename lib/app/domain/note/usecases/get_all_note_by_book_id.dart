import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../data/note/model/note_model.dart';
import '../repository/note_repository.dart';

class GetAllNoteByBookId implements UseCase<List<NoteWithBook>, ParamId> {
  final NoteRepository repository;

  GetAllNoteByBookId(this.repository);

  @override
  Future<Either<Failure, List<NoteWithBook>>> call(ParamId params) async {
    return await repository.loadAllNoteByBookId(params.id);
  }
}
