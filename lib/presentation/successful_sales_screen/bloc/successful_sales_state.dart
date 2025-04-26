part of 'successful_sales_bloc.dart';

/// Represents the state of SuccessfulSales in the application.

// ignore_for_file: must_be_immutable
class SuccessfulSalesState extends Equatable {
  SuccessfulSalesState(
      {this.searchController,
        this.nameController,
        this.formtextfillController,
        this.formtextfill1Controller,
        this.dateController,
        this.successfulSalesModelObj});

  TextEditingController? searchController;

  TextEditingController? nameController;

  TextEditingController? formtextfillController;

  TextEditingController? formtextfill1Controller;

  TextEditingController? dateController;

  SuccessfulSalesModel? successfulSalesModelObj;

  @override
  List<Object?> get props => [
    searchController,
    nameController,
    formtextfillController,
    formtextfill1Controller,
    dateController,
    successfulSalesModelObj
  ];
  SuccessfulSalesState copyWith({
    TextEditingController? searchController,
    TextEditingController? nameController,
    TextEditingController? formtextfillController,
    TextEditingController? formtextfill1Controller,
    TextEditingController? dateController,
    SuccessfulSalesModel? successfulSalesModelObj,
  }) {
    return SuccessfulSalesState(
      searchController: searchController ?? this.searchController,
      nameController: nameController ?? this.nameController,
      formtextfillController:
      formtextfillController ?? this.formtextfillController,
      formtextfill1Controller:
      formtextfill1Controller ?? this.formtextfill1Controller,
      dateController: dateController ?? this.dateController,
      successfulSalesModelObj:
      successfulSalesModelObj ?? this.successfulSalesModelObj,
    );
  }
}
