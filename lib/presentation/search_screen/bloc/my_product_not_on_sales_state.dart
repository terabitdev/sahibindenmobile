part of 'my_product_not_on_sales_bloc.dart';

/// Represents the state of MyProductNotOnSales in the application.

// ignore_for_file: must_be_immutable
class MyProductNotOnSalesState extends Equatable {
  MyProductNotOnSalesState(
      {this.searchController, this.myProductNotOnSalesModelObj});

  TextEditingController? searchController;

  MyProductNotOnSalesModel? myProductNotOnSalesModelObj;

  @override
  List<Object?> get props => [searchController, myProductNotOnSalesModelObj];
  MyProductNotOnSalesState copyWith({
    TextEditingController? searchController,
    MyProductNotOnSalesModel? myProductNotOnSalesModelObj,
  }) {
    return MyProductNotOnSalesState(
      searchController: searchController ?? this.searchController,
      myProductNotOnSalesModelObj:
      myProductNotOnSalesModelObj ?? this.myProductNotOnSalesModelObj,
    );
  }
}
