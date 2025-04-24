import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';

/// This class defines the variables used in the [account_activities_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class AccountActivitiesModel extends Equatable {
  AccountActivitiesModel(
      {this.dropdownItemList = const [],
        this.dropdownItemList1 = const [],
        this.dropdownItemList2 = const [],
        this.selectedDate,
        this.date = "\"\"",
        this.selectedDateOne,
        this.dateOne = "\"\""}) {
    selectedDate = selectedDate ?? DateTime.now();
    selectedDateOne = selectedDateOne ?? DateTime.now();
  }

  List<SelectionPopupModel> dropdownItemList;

  List<SelectionPopupModel> dropdownItemList1;

  List<SelectionPopupModel> dropdownItemList2;

  DateTime? selectedDate;

  String date;

  DateTime? selectedDateOne;

  String dateOne;

  AccountActivitiesModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
    List<SelectionPopupModel>? dropdownItemList2,
    DateTime? selectedDate,
    String? date,
    DateTime? selectedDateOne,
    String? dateOne,
  }) {
    return AccountActivitiesModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
      dropdownItemList2: dropdownItemList2 ?? this.dropdownItemList2,
      selectedDate: selectedDate ?? this.selectedDate,
      date: date ?? this.date,
      selectedDateOne: selectedDateOne ?? this.selectedDateOne,
      dateOne: dateOne ?? this.dateOne,
    );
  }

  @override
  List<Object?> get props => [
    dropdownItemList,
    dropdownItemList1,
    dropdownItemList2,
    selectedDate,
    date,
    selectedDateOne,
    dateOne
  ];
}
