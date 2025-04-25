import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'gridhighett_item_model.dart';

/// This class defines the variables used in the [my_product_not_on_sales_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class MyProductNotOnSalesModel extends Equatable {
  MyProductNotOnSalesModel({this.gridhighettItemList = const []});

  List<GridhighettItemModel> gridhighettItemList;

  MyProductNotOnSalesModel copyWith(
      {List<GridhighettItemModel>? gridhighettItemList}) {
    return MyProductNotOnSalesModel(
      gridhighettItemList: gridhighettItemList ?? this.gridhighettItemList,
    );
  }

  @override
  List<Object?> get props => [gridhighettItemList];
}
