part of 'delete_account_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DeleteAccount widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class DeleteAccountEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the DeleteAccount widget is first created.
class DeleteAccountInitialEvent extends DeleteAccountEvent {
  @override
  List<Object?> get props => [];
}
