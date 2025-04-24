part of 'communication_bloc.dart';

/// Abstract class for all events that can be dispatched from the///Communication widget.////// Events must be immutable and implement the [Equatable] interface.
class CommunicationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Communication widget is first created.
class CommunicationInitialEvent extends CommunicationEvent {
  @override
  List<Object?> get props => [];
}
