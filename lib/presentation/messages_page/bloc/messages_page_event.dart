part of 'messages_page_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MessagesOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class MessagesOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MessagesOne widget is first created.
class MessagesOneInitialEvent extends MessagesOneEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing date

// ignore_for_file: must_be_immutable
class ChangeDateEvent extends MessagesOneEvent {
  ChangeDateEvent({required this.date});

  DateTime date;

  @override
  List<Object?> get props => [date];
}
