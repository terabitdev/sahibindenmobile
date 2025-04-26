part of 'zero_vehicle_world_authorized_one_bloc.dart';

/// Represents the state of ZeroVehicleWorldAuthorizedOne in the application.

// ignore_for_file: must_be_immutable
class ZeroVehicleWorldAuthorizedOneState extends Equatable {
  ZeroVehicleWorldAuthorizedOneState(
      {this.selectedDropDownValue,
        this.selectedDropDownValue1,
        this.zeroVehicleWorldAuthorizedOneModelObj});

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  ZeroVehicleWorldAuthorizedOneModel? zeroVehicleWorldAuthorizedOneModelObj;

  @override
  List<Object?> get props => [
    selectedDropDownValue,
    selectedDropDownValue1,
    zeroVehicleWorldAuthorizedOneModelObj
  ];
  ZeroVehicleWorldAuthorizedOneState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    ZeroVehicleWorldAuthorizedOneModel? zeroVehicleWorldAuthorizedOneModelObj,
  }) {
    return ZeroVehicleWorldAuthorizedOneState(
      selectedDropDownValue:
      selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
      selectedDropDownValue1 ?? this.selectedDropDownValue1,
      zeroVehicleWorldAuthorizedOneModelObj:
      zeroVehicleWorldAuthorizedOneModelObj ??
          this.zeroVehicleWorldAuthorizedOneModelObj,
    );
  }
}
