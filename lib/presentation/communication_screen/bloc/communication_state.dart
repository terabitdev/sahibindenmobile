part of 'communication_bloc.dart';

/// Represents the state of Communication in the application.// ignore_for_file: must_be_immutable
class CommunicationState extends Equatable {
  CommunicationState(
      {this.filizsaranoneController,
      this.zipcodeController,
      this.addressController,
      this.group1614oneController,
      this.group2219oneController,
      this.group2221oneController,
      this.group2223oneController,
      this.group2225oneController,
      this.communicationModelObj});
  TextEditingController? filizsaranoneController;
  TextEditingController? zipcodeController;
  TextEditingController? addressController;

  TextEditingController? group1614oneController;
  TextEditingController? group2219oneController;
  TextEditingController? group2221oneController;
  TextEditingController? group2223oneController;
  TextEditingController? group2225oneController;
  CommunicationModel? communicationModelObj;

  @override
  List<Object?> get props => [
        filizsaranoneController,
        zipcodeController,
        addressController,
        group1614oneController,
        group2219oneController,
        group2221oneController,
        group2223oneController,
        group2225oneController,
        communicationModelObj
      ];

  CommunicationState copyWith({
    TextEditingController? filizsaranoneController,
    TextEditingController? zipcodeController,
    TextEditingController? addressController,
    TextEditingController? group1614oneController,
    TextEditingController? group2219oneController,
    TextEditingController? group2221oneController,
    TextEditingController? group2223oneController,
    TextEditingController? group2225oneController,
    CommunicationModel? communicationModelObj,
  }) {
    return CommunicationState(
      filizsaranoneController:
          filizsaranoneController ?? this.filizsaranoneController,
      zipcodeController: zipcodeController ?? this.zipcodeController,
      addressController: addressController ?? this.addressController,
      group1614oneController:
          group1614oneController ?? this.group1614oneController,
      group2219oneController:
          group2219oneController ?? this.group2219oneController,
      group2221oneController:
          group2221oneController ?? this.group2221oneController,
      group2223oneController:
          group2223oneController ?? this.group2223oneController,
      group2225oneController:
          group2225oneController ?? this.group2225oneController,
      communicationModelObj:
          communicationModelObj ?? this.communicationModelObj,
    );
  }
}
