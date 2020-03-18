import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../data/note/model/note_model.dart';
import '../repository/note_repository.dart';

class GetNoteDetail implements UseCase<NoteWithContent, ParamId> {
  final NoteRepository repository;

  GetNoteDetail(this.repository);

  @override
  Future<Either<Failure, NoteWithContent>> call(ParamId params) async {
    return await repository.loadNoteDetail(params.id);
  }
}
