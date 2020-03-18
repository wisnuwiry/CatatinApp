import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../data/note/model/note_model.dart';

part 'note_load_event.dart';
part 'note_load_state.dart';

class NoteLoadBloc extends Bloc<NoteLoadEvent, NoteLoadState> {
  @override
  Stream<NoteLoadState> mapEventToState(
    NoteLoadEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }

  @override
  // TODO: implement initialState
  NoteLoadState get initialState => Empty();
}
