part of 'account_holder_blocked_bloc.dart';

/// Represents the state of AccountHolderBlocked in the application.
// ignore_for_file: must_be_immutable
class AccountHolderBlockedState extends Equatable {
  AccountHolderBlockedState({this.accountHolderBlockedModelObj});

  AccountHolderBlockedModel? accountHolderBlockedModelObj;

  @override
  List<Object?> get props => [accountHolderBlockedModelObj];

  AccountHolderBlockedState copyWith({
    AccountHolderBlockedModel? accountHolderBlockedModelObj,
  }) {
    return AccountHolderBlockedState(
      accountHolderBlockedModelObj: accountHolderBlockedModelObj ?? this.accountHolderBlockedModelObj,
    );
  }
}
