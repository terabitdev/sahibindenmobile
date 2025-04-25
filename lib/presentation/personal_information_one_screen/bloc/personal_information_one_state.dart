part of 'personal_information_one_bloc.dart';

/// Represents the state of PersonalInformationOne in the application.

// ignore_for_file: must_be_immutable
class PersonalInformationOneState extends Equatable {
  PersonalInformationOneState(
      {this.userNameController,
        this.nametwoController,
        this.surnametwoController,
        this.phoneController,
        this.phoneoneController,
        this.personalInformationOneModelObj});

  TextEditingController? userNameController;

  TextEditingController? nametwoController;

  TextEditingController? surnametwoController;

  TextEditingController? phoneController;

  TextEditingController? phoneoneController;

  PersonalInformationOneModel? personalInformationOneModelObj;

  @override
  List<Object?> get props => [
    userNameController,
    nametwoController,
    surnametwoController,
    phoneController,
    phoneoneController,
    personalInformationOneModelObj
  ];
  PersonalInformationOneState copyWith({
    TextEditingController? userNameController,
    TextEditingController? nametwoController,
    TextEditingController? surnametwoController,
    TextEditingController? phoneController,
    TextEditingController? phoneoneController,
    PersonalInformationOneModel? personalInformationOneModelObj,
  }) {
    return PersonalInformationOneState(
      userNameController: userNameController ?? this.userNameController,
      nametwoController: nametwoController ?? this.nametwoController,
      surnametwoController: surnametwoController ?? this.surnametwoController,
      phoneController: phoneController ?? this.phoneController,
      phoneoneController: phoneoneController ?? this.phoneoneController,
      personalInformationOneModelObj:
      personalInformationOneModelObj ?? this.personalInformationOneModelObj,
    );
  }
}
