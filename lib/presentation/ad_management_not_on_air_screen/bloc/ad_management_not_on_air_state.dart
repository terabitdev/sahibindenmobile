part of 'ad_management_not_on_air_bloc.dart';

/// Represents the state of AdManagementNotOnAir in the application.
class AdManagementNotOnAirState extends Equatable {
  AdManagementNotOnAirState({
    this.searchController,
    this.formtextfillController,
    this.formtextfill1Controller,
    this.dateController,
    this.pricetwoController,
    this.adManagementNotOnAirModelObj,
  });

  TextEditingController? searchController;
  TextEditingController? formtextfillController;
  TextEditingController? formtextfill1Controller;
  TextEditingController? dateController;
  TextEditingController? pricetwoController;
  AdManagementNotOnAirModel? adManagementNotOnAirModelObj;

  @override
  List<Object?> get props => [
    searchController,
    formtextfillController,
    formtextfill1Controller,
    dateController,
    pricetwoController,
    adManagementNotOnAirModelObj,
  ];

  AdManagementNotOnAirState copyWith({
    TextEditingController? searchController,
    TextEditingController? formtextfillController,
    TextEditingController? formtextfill1Controller,
    TextEditingController? dateController,
    TextEditingController? pricetwoController,
    AdManagementNotOnAirModel? adManagementNotOnAirModelObj,
  }) {
    return AdManagementNotOnAirState(
      searchController: searchController ?? this.searchController,
      formtextfillController: formtextfillController ?? this.formtextfillController,
      formtextfill1Controller: formtextfill1Controller ?? this.formtextfill1Controller,
      dateController: dateController ?? this.dateController,
      pricetwoController: pricetwoController ?? this.pricetwoController,
      adManagementNotOnAirModelObj: adManagementNotOnAirModelObj ?? this.adManagementNotOnAirModelObj,
    );
  }
}
