import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:catatin/app/data/note/model/note_model.dart';
import 'package:catatin/db/app_db.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

part 'note_event.dart';
part 'note_state.dart';

class NoteBloc extends Bloc<NoteEvent, NoteState> {
  @override
  NoteState get initialState => Loading();

  @override
  Stream<NoteState> mapEventToState(
    NoteEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
