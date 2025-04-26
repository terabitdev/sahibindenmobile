part of 'while_selling_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WhileSelling widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WhileSellingEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WhileSelling widget is first created.
class WhileSellingInitialEvent extends WhileSellingEvent {
  @override
  List<Object?> get props => [];
}
