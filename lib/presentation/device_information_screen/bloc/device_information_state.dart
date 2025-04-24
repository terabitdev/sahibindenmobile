part of 'device_information_bloc.dart';

/// Represents the state of DeviceInformation in the application.

// ignore_for_file: must_be_immutable
class DeviceInformationState extends Equatable {
  DeviceInformationState(
      {this.selectedDropDownValue,
        this.selectedDropDownValue1,
        this.selectedDropDownValue2,
        this.selectedDropDownValue3,
        this.selectedDropDownValue4,
        this.deviceInformationModelObj});

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  SelectionPopupModel? selectedDropDownValue4;

  DeviceInformationModel? deviceInformationModelObj;

  @override
  List<Object?> get props => [
    selectedDropDownValue,
    selectedDropDownValue1,
    selectedDropDownValue2,
    selectedDropDownValue3,
    selectedDropDownValue4,
    deviceInformationModelObj
  ];
  DeviceInformationState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    SelectionPopupModel? selectedDropDownValue3,
    SelectionPopupModel? selectedDropDownValue4,
    DeviceInformationModel? deviceInformationModelObj,
  }) {
    return DeviceInformationState(
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
      deviceInformationModelObj:
      deviceInformationModelObj ?? this.deviceInformationModelObj,
    );
  }
}
