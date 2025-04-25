part of 'my_delivery_billing_address_four_bloc.dart';

/// Represents the state of MyDeliveryBillingAddressFour in the application.

// ignore_for_file: must_be_immutable
class MyDeliveryBillingAddressFourState extends Equatable {
  MyDeliveryBillingAddressFourState(
      {this.nameoneController,
        this.namethreeController,
        this.surnametwoController,
        this.addresstwoController,
        this.phoneController,
        this.selectedDropDownValue,
        this.selectedDropDownValue1,
        this.selectedDropDownValue2,
        this.selectedDropDownValue3,
        this.individualone = false,
        this.institutional = false,
        this.myDeliveryBillingAddressFourModelObj});

  TextEditingController? nameoneController;

  TextEditingController? namethreeController;

  TextEditingController? surnametwoController;

  TextEditingController? addresstwoController;

  TextEditingController? phoneController;

  SelectionPopupModel? selectedDropDownValue;

  SelectionPopupModel? selectedDropDownValue1;

  SelectionPopupModel? selectedDropDownValue2;

  SelectionPopupModel? selectedDropDownValue3;

  MyDeliveryBillingAddressFourModel? myDeliveryBillingAddressFourModelObj;

  bool individualone;

  bool institutional;

  @override
  List<Object?> get props => [
    nameoneController,
    namethreeController,
    surnametwoController,
    addresstwoController,
    phoneController,
    selectedDropDownValue,
    selectedDropDownValue1,
    selectedDropDownValue2,
    selectedDropDownValue3,
    individualone,
    institutional,
    myDeliveryBillingAddressFourModelObj
  ];
  MyDeliveryBillingAddressFourState copyWith({
    TextEditingController? nameoneController,
    TextEditingController? namethreeController,
    TextEditingController? surnametwoController,
    TextEditingController? addresstwoController,
    TextEditingController? phoneController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    SelectionPopupModel? selectedDropDownValue3,
    bool? individualone,
    bool? institutional,
    MyDeliveryBillingAddressFourModel? myDeliveryBillingAddressFourModelObj,
  }) {
    return MyDeliveryBillingAddressFourState(
      nameoneController: nameoneController ?? this.nameoneController,
      namethreeController: namethreeController ?? this.namethreeController,
      surnametwoController: surnametwoController ?? this.surnametwoController,
      addresstwoController: addresstwoController ?? this.addresstwoController,
      phoneController: phoneController ?? this.phoneController,
      selectedDropDownValue:
      selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
      selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
      selectedDropDownValue2 ?? this.selectedDropDownValue2,
      selectedDropDownValue3:
      selectedDropDownValue3 ?? this.selectedDropDownValue3,
      individualone: individualone ?? this.individualone,
      institutional: institutional ?? this.institutional,
      myDeliveryBillingAddressFourModelObj:
      myDeliveryBillingAddressFourModelObj ??
          this.myDeliveryBillingAddressFourModelObj,
    );
  }
}
