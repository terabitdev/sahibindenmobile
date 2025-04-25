part of 'real_estate_360_real_estate_expertise_bloc.dart';

/// Represents the state of RealEstate360RealEstateExpertise in the application.

// ignore_for_file: must_be_immutable
class RealEstate360RealEstateExpertiseState extends Equatable {
  RealEstate360RealEstateExpertiseState(
      {this.nametwoController,
        this.surnametwoController,
        this.mobileNumberController,
        this.emailController,
        this.selectedDropDownValue,
        this.selectedDropDownValue1,
        this.realEstate360RealEstateExpertiseModelObj});

  TextEditingController? nametwoController;

  TextEditingController? surnametwoController;

  TextEditingController? mobileNumberController;

  TextEditingController? emailController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  RealEstate360RealEstateExpertiseModel?
  realEstate360RealEstateExpertiseModelObj;

  @override
  List<Object?> get props => [
    nametwoController,
    surnametwoController,
    mobileNumberController,
    emailController,
    selectedDropDownValue,
    selectedDropDownValue1,
    realEstate360RealEstateExpertiseModelObj
  ];
  RealEstate360RealEstateExpertiseState copyWith({
    TextEditingController? nametwoController,
    TextEditingController? surnametwoController,
    TextEditingController? mobileNumberController,
    TextEditingController? emailController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    RealEstate360RealEstateExpertiseModel?
    realEstate360RealEstateExpertiseModelObj,
  }) {
    return RealEstate360RealEstateExpertiseState(
      nametwoController: nametwoController ?? this.nametwoController,
      surnametwoController: surnametwoController ?? this.surnametwoController,
      mobileNumberController:
      mobileNumberController ?? this.mobileNumberController,
      emailController: emailController ?? this.emailController,
      selectedDropDownValue:
      selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
      selectedDropDownValue1 ?? this.selectedDropDownValue1,
      realEstate360RealEstateExpertiseModelObj:
      realEstate360RealEstateExpertiseModelObj ??
          this.realEstate360RealEstateExpertiseModelObj,
    );
  }
}
