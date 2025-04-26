part of 'vehicle_valuation_one_bloc.dart';

/// Represents the state of VehicleValuationOne in the application.

// ignore_for_file: must_be_immutable
class VehicleValuationOneState extends Equatable {
  VehicleValuationOneState(
      {this.selectedDropDownValue,
        this.selectedDropDownValue1,
        this.selectedDropDownValue2,
        this.vehicleValuationOneModelObj});

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  VehicleValuationOneModel? vehicleValuationOneModelObj;

  @override
  List<Object?> get props => [
    selectedDropDownValue,
    selectedDropDownValue1,
    selectedDropDownValue2,
    vehicleValuationOneModelObj
  ];
  VehicleValuationOneState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    VehicleValuationOneModel? vehicleValuationOneModelObj,
  }) {
    return VehicleValuationOneState(
      selectedDropDownValue:
      selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
      selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
      selectedDropDownValue2 ?? this.selectedDropDownValue2,
      vehicleValuationOneModelObj:
      vehicleValuationOneModelObj ?? this.vehicleValuationOneModelObj,
    );
  }
}
