part of 'vehicle_damage_inquiry_bloc.dart';

/// Represents the state of VehicleDamageInquiry in the application.

// ignore_for_file: must_be_immutable
class VehicleDamageInquiryState extends Equatable {
  VehicleDamageInquiryState(
      {this.platenumberController,
        this.vehicledamageTabModelObj,
        this.radioGroup = "",
        this.vehicleDamageInquiryModelObj});

  TextEditingController? platenumberController;

  VehicleDamageInquiryModel? vehicleDamageInquiryModelObj;

  VehicledamageTabModel? vehicledamageTabModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
    platenumberController,
    vehicledamageTabModelObj,
    radioGroup,
    vehicleDamageInquiryModelObj
  ];
  VehicleDamageInquiryState copyWith({
    TextEditingController? platenumberController,
    VehicledamageTabModel? vehicledamageTabModelObj,
    String? radioGroup,
    VehicleDamageInquiryModel? vehicleDamageInquiryModelObj,
  }) {
    return VehicleDamageInquiryState(
      platenumberController:
      platenumberController ?? this.platenumberController,
      vehicledamageTabModelObj:
      vehicledamageTabModelObj ?? this.vehicledamageTabModelObj,
      radioGroup: radioGroup ?? this.radioGroup,
      vehicleDamageInquiryModelObj:
      vehicleDamageInquiryModelObj ?? this.vehicleDamageInquiryModelObj,
    );
  }
}
