part of 'zero_vehicle_world_bloc.dart';

/// Represents the state of ZeroVehicleWorld in the application.

// ignore_for_file: must_be_immutable
class ZeroVehicleWorldState extends Equatable {
  ZeroVehicleWorldState(
      {this.formtextfillController,
        this.formtextfill1Controller,
        this.selectedDropDownValue,
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
        this.selectedDropDownValue16,
        this.selectedDropDownValue17,
        this.selectedDropDownValue18,
        this.selectedDropDownValue19,
        this.selectedDropDownValue20,
        this.selectedDropDownValue21,
        this.zeroVehicleWorldModelObj});

  TextEditingController? formtextfillController;

  TextEditingController? formtextfill1Controller;

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

  SelectionPopupModel? selectedDropDownValue16;

  SelectionPopupModel? selectedDropDownValue17;

  SelectionPopupModel? selectedDropDownValue18;

  SelectionPopupModel? selectedDropDownValue19;

  SelectionPopupModel? selectedDropDownValue20;

  SelectionPopupModel? selectedDropDownValue21;

  ZeroVehicleWorldModel? zeroVehicleWorldModelObj;

  @override
  List<Object?> get props => [
    formtextfillController,
    formtextfill1Controller,
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
    selectedDropDownValue16,
    selectedDropDownValue17,
    selectedDropDownValue18,
    selectedDropDownValue19,
    selectedDropDownValue20,
    selectedDropDownValue21,
    zeroVehicleWorldModelObj
  ];
  ZeroVehicleWorldState copyWith({
    TextEditingController? formtextfillController,
    TextEditingController? formtextfill1Controller,
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
    SelectionPopupModel? selectedDropDownValue16,
    SelectionPopupModel? selectedDropDownValue17,
    SelectionPopupModel? selectedDropDownValue18,
    SelectionPopupModel? selectedDropDownValue19,
    SelectionPopupModel? selectedDropDownValue20,
    SelectionPopupModel? selectedDropDownValue21,
    ZeroVehicleWorldModel? zeroVehicleWorldModelObj,
  }) {
    return ZeroVehicleWorldState(
      formtextfillController:
      formtextfillController ?? this.formtextfillController,
      formtextfill1Controller:
      formtextfill1Controller ?? this.formtextfill1Controller,
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
      selectedDropDownValue16:
      selectedDropDownValue16 ?? this.selectedDropDownValue16,
      selectedDropDownValue17:
      selectedDropDownValue17 ?? this.selectedDropDownValue17,
      selectedDropDownValue18:
      selectedDropDownValue18 ?? this.selectedDropDownValue18,
      selectedDropDownValue19:
      selectedDropDownValue19 ?? this.selectedDropDownValue19,
      selectedDropDownValue20:
      selectedDropDownValue20 ?? this.selectedDropDownValue20,
      selectedDropDownValue21:
      selectedDropDownValue21 ?? this.selectedDropDownValue21,
      zeroVehicleWorldModelObj:
      zeroVehicleWorldModelObj ?? this.zeroVehicleWorldModelObj,
    );
  }
}
