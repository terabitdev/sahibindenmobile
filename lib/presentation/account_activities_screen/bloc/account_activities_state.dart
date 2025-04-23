part of 'account_activities_bloc.dart';

/// Represents the state of AccountActivities in the application.
// ignore_for_file: must_be_immutable
class AccountActivitiesState extends Equatable {
  AccountActivitiesState({
    this.dateController,
    this.dateoneController,
    this.selectedDropDownValue,
    this.selectedDropDownValue1,
    this.selectedDropDownValue2,
    this.accountActivitiesModelObj,
  });

  TextEditingController? dateController;
  TextEditingController? dateoneController;
  SelectionPopupModel? selectedDropDownValue;
  SelectionPopupModel? selectedDropDownValue1;
  SelectionPopupModel? selectedDropDownValue2;
  AccountActivitiesModel? accountActivitiesModelObj;

  @override
  List<Object?> get props => [
    dateController,
    dateoneController,
    selectedDropDownValue,
    selectedDropDownValue1,
    selectedDropDownValue2,
    accountActivitiesModelObj
  ];

  AccountActivitiesState copyWith({
    TextEditingController? dateController,
    TextEditingController? dateoneController,
    SelectionPopupModel? selectedDropDownValue,
    SelectionPopupModel? selectedDropDownValue1,
    SelectionPopupModel? selectedDropDownValue2,
    AccountActivitiesModel? accountActivitiesModelObj,
  }) {
    return AccountActivitiesState(
      dateController: dateController ?? this.dateController,
      dateoneController: dateoneController ?? this.dateoneController,
      selectedDropDownValue:
      selectedDropDownValue ?? this.selectedDropDownValue,
      selectedDropDownValue1:
      selectedDropDownValue1 ?? this.selectedDropDownValue1,
      selectedDropDownValue2:
      selectedDropDownValue2 ?? this.selectedDropDownValue2,
      accountActivitiesModelObj:
      accountActivitiesModelObj ?? this.accountActivitiesModelObj,
    );
  }
}
