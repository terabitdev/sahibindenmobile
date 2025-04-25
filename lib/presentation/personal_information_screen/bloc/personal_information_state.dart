part of 'personal_information_bloc.dart';

/// Represents the state of PersonalInformation in the application.

// ignore_for_file: must_be_immutable
class PersonalInformationState extends Equatable {
  PersonalInformationState(
      {this.userNameController,
        this.surnameController,
        this.phoneController,
        this.phoneoneController,
        this.personalInformationModelObj});

  TextEditingController? userNameController;

  TextEditingController? surnameController;

  TextEditingController? phoneController;

  TextEditingController? phoneoneController;

  PersonalInformationModel? personalInformationModelObj;

  @override
  List<Object?> get props => [
    userNameController,
    surnameController,
    phoneController,
    phoneoneController,
    personalInformationModelObj
  ];
  PersonalInformationState copyWith({
    TextEditingController? userNameController,
    TextEditingController? surnameController,
    TextEditingController? phoneController,
    TextEditingController? phoneoneController,
    PersonalInformationModel? personalInformationModelObj,
  }) {
    return PersonalInformationState(
      userNameController: userNameController ?? this.userNameController,
      surnameController: surnameController ?? this.surnameController,
      phoneController: phoneController ?? this.phoneController,
      phoneoneController: phoneoneController ?? this.phoneoneController,
      personalInformationModelObj:
      personalInformationModelObj ?? this.personalInformationModelObj,
    );
  }
}
