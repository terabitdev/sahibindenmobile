part of 'message_read_information_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MessageReadInformationTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class MessageReadInformationTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MessageReadInformationTwo widget is first created.
class MessageReadInformationTwoInitialEvent
    extends MessageReadInformationTwoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitchEvent extends MessageReadInformationTwoEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
