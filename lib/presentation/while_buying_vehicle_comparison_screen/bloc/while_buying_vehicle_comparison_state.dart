part of 'while_buying_vehicle_comparison_bloc.dart';

/// Represents the state of WhileBuyingVehicleComparison in the application.

// ignore_for_file: must_be_immutable
class WhileBuyingVehicleComparisonState extends Equatable {
  WhileBuyingVehicleComparisonState(
      {this.selectedDropDownValue,
        this.selectedDropDownValue1,
        this.selectedDropDownValue2,
        this.selectedDropDownValue3,
        this.selectedDropDownValue4,
        this.selectedDropDownValue5,
        this.selectedDropDownValue6,
        this.selectedDropDownValue7,
        this.selectedDropDownValue8,
        this.selectedDropDownValue9,
        this.selectedDropDownValue10,
        this.selectedDropDownValue11,
        this.selectedDropDownValue12,
        this.selectedDropDownValue13,
        this.selectedDropDownValue14,
        this.selectedDropDownValue15,
        this.whileBuyingVehicleComparisonModelObj});

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  SelectionPopupModel? selectedDropDownValue4;

  SelectionPopupModel? selectedDropDownValue5;

  SelectionPopupModel? selectedDropDownValue6;

  SelectionPopupModel? selectedDropDownValue7;

  SelectionPopupModel? selectedDropDownValue8;

  SelectionPopupModel? selectedDropDownValue9;

  SelectionPopupModel? selectedDropDownValue10;

  SelectionPopupModel? selectedDropDownValue11;

  SelectionPopupModel? selectedDropDownValue12;

  SelectionPopupModel? selectedDropDownValue13;

  SelectionPopupModel? selectedDropDownValue14;

  SelectionPopupModel? selectedDropDownValue15;

  WhileBuyingVehicleComparisonModel? whileBuyingVehicleComparisonModelObj;

  @override
  List<Object?> get props => [
    selectedDropDownValue,
    selectedDropDownValue1,
    selectedDropDownValue2,
    selectedDropDownValue3,
    selectedDropDownValue4,
    selectedDropDownValue5,
    selectedDropDownValue6,
    selectedDropDownValue7,
    selectedDropDownValue8,
    selectedDropDownValue9,
    selectedDropDownValue10,
    selectedDropDownValue11,
    selectedDropDownValue12,
    selectedDropDownValue13,
    selectedDropDownValue14,
    selectedDropDownValue15,
    whileBuyingVehicleComparisonModelObj
  ];
  WhileBuyingVehicleComparisonState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    SelectionPopupModel? selectedDropDownValue3,
    SelectionPopupModel? selectedDropDownValue4,
    SelectionPopupModel? selectedDropDownValue5,
    SelectionPopupModel? selectedDropDownValue6,
    SelectionPopupModel? selectedDropDownValue7,
    SelectionPopupModel? selectedDropDownValue8,
    SelectionPopupModel? selectedDropDownValue9,
    SelectionPopupModel? selectedDropDownValue10,
    SelectionPopupModel? selectedDropDownValue11,
    SelectionPopupModel? selectedDropDownValue12,
    SelectionPopupModel? selectedDropDownValue13,
    SelectionPopupModel? selectedDropDownValue14,
    SelectionPopupModel? selectedDropDownValue15,
    WhileBuyingVehicleComparisonModel? whileBuyingVehicleComparisonModelObj,
  }) {
    return WhileBuyingVehicleComparisonState(
      selectedDropDownValue:
      selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
      selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
      selectedDropDownValue2 ?? this.selectedDropDownValue2,
      selectedDropDownValue3:
      selectedDropDownValue3 ?? this.selectedDropDownValue3,
      selectedDropDownValue4:
      selectedDropDownValue4 ?? this.selectedDropDownValue4,
      selectedDropDownValue5:
      selectedDropDownValue5 ?? this.selectedDropDownValue5,
      selectedDropDownValue6:
      selectedDropDownValue6 ?? this.selectedDropDownValue6,
      selectedDropDownValue7:
      selectedDropDownValue7 ?? this.selectedDropDownValue7,
      selectedDropDownValue8:
      selectedDropDownValue8 ?? this.selectedDropDownValue8,
      selectedDropDownValue9:
      selectedDropDownValue9 ?? this.selectedDropDownValue9,
      selectedDropDownValue10:
      selectedDropDownValue10 ?? this.selectedDropDownValue10,
      selectedDropDownValue11:
      selectedDropDownValue11 ?? this.selectedDropDownValue11,
      selectedDropDownValue12:
      selectedDropDownValue12 ?? this.selectedDropDownValue12,
      selectedDropDownValue13:
      selectedDropDownValue13 ?? this.selectedDropDownValue13,
      selectedDropDownValue14:
      selectedDropDownValue14 ?? this.selectedDropDownValue14,
      selectedDropDownValue15:
      selectedDropDownValue15 ?? this.selectedDropDownValue15,
      whileBuyingVehicleComparisonModelObj:
      whileBuyingVehicleComparisonModelObj ??
          this.whileBuyingVehicleComparisonModelObj,
    );
  }
}
