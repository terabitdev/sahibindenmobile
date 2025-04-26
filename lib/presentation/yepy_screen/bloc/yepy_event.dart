part of 'yepy_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Yepy widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class YepyEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Yepy widget is first created.
class YepyInitialEvent extends YepyEvent {
  @override
  List<Object?> get props => [];
}
