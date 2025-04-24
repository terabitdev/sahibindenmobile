part of 'get_messages_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///GetMessages widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class GetMessagesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the GetMessages widget is first created.
class GetMessagesInitialEvent extends GetMessagesEvent {
  @override
  List<Object?> get props => [];
}
