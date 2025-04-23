part of 'ad_management_on_air_bloc.dart';

/// Represents the state of AdManagementOnAir in the application.
class AdManagementOnAirState extends Equatable {
  AdManagementOnAirState({
    this.searchController,
    this.formtextfillController,
    this.formtextfill1Controller,
    this.dateController,
    this.pricetwoController,
    this.adManagementOnAirModelObj,
  });

  TextEditingController? searchController;
  TextEditingController? formtextfillController;
  TextEditingController? formtextfill1Controller;
  TextEditingController? dateController;
  TextEditingController? pricetwoController;
  AdManagementOnAirModel? adManagementOnAirModelObj;

  @override
  List<Object?> get props => [
    searchController,
    formtextfillController,
    formtextfill1Controller,
    dateController,
    pricetwoController,
    adManagementOnAirModelObj,
  ];

  AdManagementOnAirState copyWith({
    TextEditingController? searchController,
    TextEditingController? formtextfillController,
    TextEditingController? formtextfill1Controller,
    TextEditingController? dateController,
    TextEditingController? pricetwoController,
    AdManagementOnAirModel? adManagementOnAirModelObj,
  }) {
    return AdManagementOnAirState(
      searchController: searchController ?? this.searchController,
      formtextfillController:
      formtextfillController ?? this.formtextfillController,
      formtextfill1Controller:
      formtextfill1Controller ?? this.formtextfill1Controller,
      dateController: dateController ?? this.dateController,
      pricetwoController: pricetwoController ?? this.pricetwoController,
      adManagementOnAirModelObj:
      adManagementOnAirModelObj ?? this.adManagementOnAirModelObj,
    );
  }
}
