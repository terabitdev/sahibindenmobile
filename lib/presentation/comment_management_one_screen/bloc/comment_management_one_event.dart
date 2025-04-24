part of 'comment_management_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the///CommentManagementOne widget.////// Events must be immutable and implement the [Equatable] interface.
class CommentManagementOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the CommentManagementOne widget is first created.
class CommentManagementOneInitialEvent extends CommentManagementOneEvent {
  @override
  List<Object?> get props => [];
}
