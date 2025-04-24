part of 'credit_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Credit widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class CreditEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Credit widget is first created.
class CreditInitialEvent extends CreditEvent {
  @override
  List<Object?> get props => [];
}
