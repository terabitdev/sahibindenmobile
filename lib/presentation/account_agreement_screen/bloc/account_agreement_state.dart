part of 'account_agreement_bloc.dart';

/// Represents the state of AccountAgreement in the application.
// ignore_for_file: must_be_immutable
class AccountAgreementState extends Equatable {
  AccountAgreementState({this.accountAgreementModelObj});

  AccountAgreementModel? accountAgreementModelObj;

  @override
  List<Object?> get props => [accountAgreementModelObj];

  AccountAgreementState copyWith({AccountAgreementModel? accountAgreementModelObj}) {
    return AccountAgreementState(
      accountAgreementModelObj: accountAgreementModelObj ?? this.accountAgreementModelObj,
    );
  }
}
