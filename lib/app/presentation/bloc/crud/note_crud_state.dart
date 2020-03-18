part of 'note_crud_bloc.dart';

@immutable
abstract class NoteCrudState extends Equatable {
  const NoteCrudState();
  @override
  List<Object> get props => [];
}

class Loading extends NoteCrudState {}
class Empty extends NoteCrudState {}
class Error extends NoteCrudState {
  final String message;

  Error({@required this.message});
}

class StatusBool extends NoteCrudState {
  final bool status;

  StatusBool({@required this.status});
}

class StatusInt extends NoteCrudState {
  final int status;

  StatusInt({@required this.status});
}
