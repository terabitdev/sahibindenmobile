part of 'account_transcation_bloc.dart';

/// Represents the state of AccountTranscation in the application.
class AccountTranscationState extends Equatable {
  AccountTranscationState({
    this.searchController,
    this.accountTranscationModelObj,
  });

  TextEditingController? searchController;
  AccountTranscationModel? accountTranscationModelObj;

  @override
  List<Object?> get props => [searchController, accountTranscationModelObj];

  AccountTranscationState copyWith({
    TextEditingController? searchController,
    AccountTranscationModel? accountTranscationModelObj,
  }) {
    return AccountTranscationState(
      searchController: searchController ?? this.searchController,
      accountTranscationModelObj:
      accountTranscationModelObj ?? this.accountTranscationModelObj,
    );
  }
}
