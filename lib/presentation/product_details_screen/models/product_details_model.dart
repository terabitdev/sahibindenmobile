import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'facilities_item_model.dart';
import 'product_details_item_model.dart';

/// This class defines the variables used in the [product_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class ProductDetailsModel extends Equatable {
  ProductDetailsModel(
      {this.productDetailsItemList = const [],
        this.facilitiesItemList = const []});

  List<ProductDetailsItemModel> productDetailsItemList;

  List<FacilitiesItemModel> facilitiesItemList;

  ProductDetailsModel copyWith({
    List<ProductDetailsItemModel>? productDetailsItemList,
    List<FacilitiesItemModel>? facilitiesItemList,
  }) {
    return ProductDetailsModel(
      productDetailsItemList:
      productDetailsItemList ?? this.productDetailsItemList,
      facilitiesItemList: facilitiesItemList ?? this.facilitiesItemList,
    );
  }

  @override
  List<Object?> get props => [productDetailsItemList, facilitiesItemList];
}
