part of 'safe_e_commerce_three_bloc.dart';

/// Represents the state of SafeECommerceThree in the application.

// ignore_for_file: must_be_immutable
class SafeECommerceThreeState extends Equatable {
  SafeECommerceThreeState(
      {this.selectedDropDownValue, this.safeECommerceThreeModelObj});

  SelectionPopupModel? selectedDropDownValue;

  SafeECommerceThreeModel? safeECommerceThreeModelObj;

  @override
  List<Object?> get props =>
      [selectedDropDownValue, safeECommerceThreeModelObj];
  SafeECommerceThreeState copyWith({
    SelectionPopupModel? selectedDropDownValue,
    SafeECommerceThreeModel? safeECommerceThreeModelObj,
  }) {
    return SafeECommerceThreeState(
      selectedDropDownValue:
      selectedDropDownValue ?? this.selectedDropDownValue,
      safeECommerceThreeModelObj:
      safeECommerceThreeModelObj ?? this.safeECommerceThreeModelObj,
    );
  }
}
