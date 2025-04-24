part of 'contracts_bloc.dart';

/// Represents the state of Contracts in the application.

// ignore_for_file: must_be_immutable
class ContractsState extends Equatable {
  ContractsState({this.contractsModelObj});

  ContractsModel? contractsModelObj;

  @override
  List<Object?> get props => [contractsModelObj];
  ContractsState copyWith({ContractsModel? contractsModelObj}) {
    return ContractsState(
      contractsModelObj: contractsModelObj ?? this.contractsModelObj,
    );
  }
}
