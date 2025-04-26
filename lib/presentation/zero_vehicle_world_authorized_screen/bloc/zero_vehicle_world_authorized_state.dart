part of 'zero_vehicle_world_authorized_bloc.dart';

/// Represents the state of ZeroVehicleWorldAuthorized in the application.

// ignore_for_file: must_be_immutable
class ZeroVehicleWorldAuthorizedState extends Equatable {
  ZeroVehicleWorldAuthorizedState(
      {this.selectedDropDownValue,
        this.selectedDropDownValue1,
        this.selectedDropDownValue2,
        this.zeroVehicleWorldAuthorizedModelObj});

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  ZeroVehicleWorldAuthorizedModel? zeroVehicleWorldAuthorizedModelObj;

  @override
  List<Object?> get props => [
    selectedDropDownValue,
    selectedDropDownValue1,
    selectedDropDownValue2,
    zeroVehicleWorldAuthorizedModelObj
  ];
  ZeroVehicleWorldAuthorizedState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    ZeroVehicleWorldAuthorizedModel? zeroVehicleWorldAuthorizedModelObj,
  }) {
    return ZeroVehicleWorldAuthorizedState(
      selectedDropDownValue:
      selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
      selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
      selectedDropDownValue2 ?? this.selectedDropDownValue2,
      zeroVehicleWorldAuthorizedModelObj: zeroVehicleWorldAuthorizedModelObj ??
          this.zeroVehicleWorldAuthorizedModelObj,
    );
  }
}
