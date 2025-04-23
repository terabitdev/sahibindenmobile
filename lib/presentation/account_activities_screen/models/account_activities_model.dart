// ignore_for_file: must_be_immutable

class AccountActivitiesModel extends Equatable {
  AccountActivitiesModel({
    this.dropdownItemList = const [],
    this.dropdownItemList1 = const [],
    this.dropdownItemList2 = const [],
    this.selectedDate,
    this.date = "\"\"",
    this.selectedDateOne,
    this.dateOne = "\"\"",
  }) {
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
