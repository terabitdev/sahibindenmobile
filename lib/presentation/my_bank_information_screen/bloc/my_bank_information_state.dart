part of 'my_bank_information_bloc.dart';

/// Represents the state of MyBankInformation in the application.

// ignore_for_file: must_be_immutable
class MyBankInformationState extends Equatable {
  MyBankInformationState(
      {this.searchController, this.myBankInformationModelObj});

  TextEditingController? searchController;

  MyBankInformationModel? myBankInformationModelObj;

  @override
  List<Object?> get props => [searchController, myBankInformationModelObj];
  MyBankInformationState copyWith({
    TextEditingController? searchController,
    MyBankInformationModel? myBankInformationModelObj,
  }) {
    return MyBankInformationState(
      searchController: searchController ?? this.searchController,
      myBankInformationModelObj:
      myBankInformationModelObj ?? this.myBankInformationModelObj,
    );
  }
}
