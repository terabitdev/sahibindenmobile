part of 'comment_management_bloc.dart';

/// Abstract class for all events that can be dispatched from the///CommentManagement widget.////// Events must be immutable and implement the [Equatable] interface.
class CommentManagementEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CommentManagement widget is first created.
class CommentManagementInitialEvent extends CommentManagementEvent {
  @override
  List<Object?> get props => [];
}
