part of 'oto360_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Oto360Two widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class Oto360TwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Oto360Two widget is first created.
class Oto360TwoInitialEvent extends Oto360TwoEvent {
  @override
  List<Object?> get props => [];
}
