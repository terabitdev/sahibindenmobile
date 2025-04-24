part of 'distance_selling_contracts_bloc.dart';

/// Represents the state of DistanceSellingContracts in the application.

// ignore_for_file: must_be_immutable
class DistanceSellingContractsState extends Equatable {
  DistanceSellingContractsState(
      {this.searchController,
        this.formtextfillController,
        this.formtextfill1Controller,
        this.formtextfill2Controller,
        this.formtextfill3Controller,
        this.distanceSellingContractsModelObj});

  TextEditingController? searchController;

  TextEditingController? formtextfillController;

  TextEditingController? formtextfill1Controller;

  TextEditingController? formtextfill2Controller;

  TextEditingController? formtextfill3Controller;

  DistanceSellingContractsModel? distanceSellingContractsModelObj;

  @override
  List<Object?> get props => [
    searchController,
    formtextfillController,
    formtextfill1Controller,
    formtextfill2Controller,
    formtextfill3Controller,
    distanceSellingContractsModelObj
  ];
  DistanceSellingContractsState copyWith({
    TextEditingController? searchController,
    TextEditingController? formtextfillController,
    TextEditingController? formtextfill1Controller,
    TextEditingController? formtextfill2Controller,
    TextEditingController? formtextfill3Controller,
    DistanceSellingContractsModel? distanceSellingContractsModelObj,
  }) {
    return DistanceSellingContractsState(
      searchController: searchController ?? this.searchController,
      formtextfillController:
      formtextfillController ?? this.formtextfillController,
      formtextfill1Controller:
      formtextfill1Controller ?? this.formtextfill1Controller,
      formtextfill2Controller:
      formtextfill2Controller ?? this.formtextfill2Controller,
      formtextfill3Controller:
      formtextfill3Controller ?? this.formtextfill3Controller,
      distanceSellingContractsModelObj: distanceSellingContractsModelObj ??
          this.distanceSellingContractsModelObj,
    );
  }
}
