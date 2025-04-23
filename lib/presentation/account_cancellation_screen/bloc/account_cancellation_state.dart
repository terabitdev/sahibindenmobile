part of 'account_cancellation_bloc.dart';

/// Represents the state of AccountCancellation in the application.
// ignore_for_file: must_be_immutable
class AccountCancellationState extends Equatable {
  AccountCancellationState({this.accountCancellationModelObj});

  AccountCancellationModel? accountCancellationModelObj;

  @override
  List<Object?> get props => [accountCancellationModelObj];

  AccountCancellationState copyWith({
    AccountCancellationModel? accountCancellationModelObj,
  }) {
    return AccountCancellationState(
      accountCancellationModelObj:
      accountCancellationModelObj ?? this.accountCancellationModelObj,
    );
  }
}
