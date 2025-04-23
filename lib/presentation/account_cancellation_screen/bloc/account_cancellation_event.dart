part of 'account_cancellation_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// AccountCancellation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AccountCancellationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AccountCancellation widget is first created.
class AccountCancellationInitialEvent extends AccountCancellationEvent {
  @override
  List<Object?> get props => [];
}
