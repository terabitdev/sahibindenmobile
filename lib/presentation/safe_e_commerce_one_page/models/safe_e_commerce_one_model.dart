import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'safe_ecommerce_item_model.dart';

/// This class defines the variables used in the [safe_e_commerce_one_page],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class SafeECommerceOneModel extends Equatable {
  SafeECommerceOneModel({this.safeEcommerceItemList = const []});

  List<SafeEcommerceItemModel> safeEcommerceItemList;

  SafeECommerceOneModel copyWith(
      {List<SafeEcommerceItemModel>? safeEcommerceItemList}) {
    return SafeECommerceOneModel(
      safeEcommerceItemList:
      safeEcommerceItemList ?? this.safeEcommerceItemList,
    );
  }

  @override
  List<Object?> get props => [safeEcommerceItemList];
}
