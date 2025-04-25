part of 'my_head_office_address_bloc.dart';

/// Represents the state of MyHeadOfficeAddress in the application.

// ignore_for_file: must_be_immutable
class MyHeadOfficeAddressState extends Equatable {
  MyHeadOfficeAddressState(
      {this.surnameController,
        this.phoneController,
        this.formtextfillController,
        this.addresstwoController,
        this.selectedDropDownValue,
        this.selectedDropDownValue1,
        this.selectedDropDownValue2,
        this.selectedDropDownValue3,
        this.myHeadOfficeAddressModelObj});

  TextEditingController? surnameController;

  TextEditingController? phoneController;

  TextEditingController? formtextfillController;

  TextEditingController? addresstwoController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  MyHeadOfficeAddressModel? myHeadOfficeAddressModelObj;

  @override
  List<Object?> get props => [
    surnameController,
    phoneController,
    formtextfillController,
    addresstwoController,
    selectedDropDownValue,
    selectedDropDownValue1,
    selectedDropDownValue2,
    selectedDropDownValue3,
    myHeadOfficeAddressModelObj
  ];
  MyHeadOfficeAddressState copyWith({
    TextEditingController? surnameController,
    TextEditingController? phoneController,
    TextEditingController? formtextfillController,
    TextEditingController? addresstwoController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    SelectionPopupModel? selectedDropDownValue3,
    MyHeadOfficeAddressModel? myHeadOfficeAddressModelObj,
  }) {
    return MyHeadOfficeAddressState(
      surnameController: surnameController ?? this.surnameController,
      phoneController: phoneController ?? this.phoneController,
      formtextfillController:
      formtextfillController ?? this.formtextfillController,
      addresstwoController: addresstwoController ?? this.addresstwoController,
      selectedDropDownValue:
      selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
      selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
      selectedDropDownValue2 ?? this.selectedDropDownValue2,
      selectedDropDownValue3:
      selectedDropDownValue3 ?? this.selectedDropDownValue3,
      myHeadOfficeAddressModelObj:
      myHeadOfficeAddressModelObj ?? this.myHeadOfficeAddressModelObj,
    );
  }
}
