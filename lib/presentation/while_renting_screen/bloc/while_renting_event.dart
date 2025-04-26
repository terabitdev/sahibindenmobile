part of 'while_renting_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WhileRenting widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WhileRentingEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WhileRenting widget is first created.
class WhileRentingInitialEvent extends WhileRentingEvent {
  @override
  List<Object?> get props => [];
}
