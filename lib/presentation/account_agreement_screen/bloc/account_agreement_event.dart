part of 'account_agreement_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// AccountAgreement widget.
///
/// Events must be immutable and implement the [Equatable] interface.
abstract class AccountAgreementEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AccountAgreement widget is first created.
class AccountAgreementInitialEvent extends AccountAgreementEvent {
  @override
  List<Object?> get props => [];
}
