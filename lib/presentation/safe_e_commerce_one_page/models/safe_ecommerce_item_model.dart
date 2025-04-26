import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [safe_ecommerce_item_widget] screen.

// ignore_for_file: must_be_immutable
class SafeEcommerceItemModel extends Equatable {
  SafeEcommerceItemModel({this.myProductsOn, this.myproductson1, this.id}) {
    myProductsOn = myProductsOn ?? ImageConstant.imgHome;
    myproductson1 = myproductson1 ?? "msg_my_products_on_sale".tr;
    id = id ?? "";
  }

  String? myProductsOn;

  String? myproductson1;

  String? id;

  SafeEcommerceItemModel copyWith({
    String? myProductsOn,
    String? myproductson1,
    String? id,
  }) {
    return SafeEcommerceItemModel(
      myProductsOn: myProductsOn ?? this.myProductsOn,
      myproductson1: myproductson1 ?? this.myproductson1,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [myProductsOn, myproductson1, id];
}
