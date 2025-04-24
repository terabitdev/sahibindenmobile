part of 'completed_orders_bloc.dart';

/// Represents the state of CompletedOrders in the application.

// ignore_for_file: must_be_immutable
class CompletedOrdersState extends Equatable {
  CompletedOrdersState(
      {this.searchController,
        this.formtextfillController,
        this.formtextfill1Controller,
        this.dateController,
        this.pricetwoController,
        this.completedOrdersModelObj});

  TextEditingController? searchController;

  TextEditingController? formtextfillController;

  TextEditingController? formtextfill1Controller;

  TextEditingController? dateController;

  TextEditingController? pricetwoController;

  CompletedOrdersModel? completedOrdersModelObj;

  @override
  List<Object?> get props => [
    searchController,
    formtextfillController,
    formtextfill1Controller,
    dateController,
    pricetwoController,
    completedOrdersModelObj
  ];
  CompletedOrdersState copyWith({
    TextEditingController? searchController,
    TextEditingController? formtextfillController,
    TextEditingController? formtextfill1Controller,
    TextEditingController? dateController,
    TextEditingController? pricetwoController,
    CompletedOrdersModel? completedOrdersModelObj,
  }) {
    return CompletedOrdersState(
      searchController: searchController ?? this.searchController,
      formtextfillController:
      formtextfillController ?? this.formtextfillController,
      formtextfill1Controller:
      formtextfill1Controller ?? this.formtextfill1Controller,
      dateController: dateController ?? this.dateController,
      pricetwoController: pricetwoController ?? this.pricetwoController,
      completedOrdersModelObj:
      completedOrdersModelObj ?? this.completedOrdersModelObj,
    );
  }
}
