part of 'while_buying_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WhileBuying widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WhileBuyingEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WhileBuying widget is first created.
class WhileBuyingInitialEvent extends WhileBuyingEvent {
  @override
  List<Object?> get props => [];
}
