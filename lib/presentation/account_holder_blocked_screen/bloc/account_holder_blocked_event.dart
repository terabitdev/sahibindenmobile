part of 'account_holder_blocked_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// AccountHolderBlocked widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AccountHolderBlockedEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AccountHolderBlocked widget is first created.
class AccountHolderBlockedInitialEvent extends AccountHolderBlockedEvent {
  @override
  List<Object?> get props => [];
}
