part of 'delete_account_bloc.dart';

/// Represents the state of DeleteAccount in the application.

// ignore_for_file: must_be_immutable
class DeleteAccountState extends Equatable {
  DeleteAccountState({this.deleteAccountModelObj});

  DeleteAccountModel? deleteAccountModelObj;

  @override
  List<Object?> get props => [deleteAccountModelObj];
  DeleteAccountState copyWith({DeleteAccountModel? deleteAccountModelObj}) {
    return DeleteAccountState(
      deleteAccountModelObj:
      deleteAccountModelObj ?? this.deleteAccountModelObj,
    );
  }
}
