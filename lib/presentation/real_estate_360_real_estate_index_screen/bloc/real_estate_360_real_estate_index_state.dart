part of 'real_estate_360_real_estate_index_bloc.dart';

/// Represents the state of RealEstate360RealEstateIndex in the application.

// ignore_for_file: must_be_immutable
class RealEstate360RealEstateIndexState extends Equatable {
  RealEstate360RealEstateIndexState(
      {this.selectedDropDownValue,
        this.selectedDropDownValue1,
        this.selectedDropDownValue2,
        this.selectedDropDownValue3,
        this.selectedDropDownValue4,
        this.realestateTwoTabModelObj,
        this.realEstate360RealEstateIndexModelObj});

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  SelectionPopupModel? selectedDropDownValue4;

  RealEstate360RealEstateIndexModel? realEstate360RealEstateIndexModelObj;

  RealestateTwoTabModel? realestateTwoTabModelObj;

  @override
  List<Object?> get props => [
    selectedDropDownValue,
    selectedDropDownValue1,
    selectedDropDownValue2,
    selectedDropDownValue3,
    selectedDropDownValue4,
    realestateTwoTabModelObj,
    realEstate360RealEstateIndexModelObj
  ];
  RealEstate360RealEstateIndexState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    SelectionPopupModel? selectedDropDownValue3,
    SelectionPopupModel? selectedDropDownValue4,
    RealestateTwoTabModel? realestateTwoTabModelObj,
    RealEstate360RealEstateIndexModel? realEstate360RealEstateIndexModelObj,
  }) {
    return RealEstate360RealEstateIndexState(
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
      realestateTwoTabModelObj:
      realestateTwoTabModelObj ?? this.realestateTwoTabModelObj,
      realEstate360RealEstateIndexModelObj:
      realEstate360RealEstateIndexModelObj ??
          this.realEstate360RealEstateIndexModelObj,
    );
  }
}
