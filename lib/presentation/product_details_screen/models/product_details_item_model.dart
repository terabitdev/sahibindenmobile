import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [product_details_item_widget] screen.

// ignore_for_file: must_be_immutable
class ProductDetailsItemModel extends Equatable {
  ProductDetailsItemModel({this.shapeOne, this.id}) {
    shapeOne = shapeOne ?? ImageConstant.imgShape60x60;
    id = id ?? "";
  }

  String? shapeOne;

  String? id;

  ProductDetailsItemModel copyWith({
    String? shapeOne,
    String? id,
  }) {
    return ProductDetailsItemModel(
      shapeOne: shapeOne ?? this.shapeOne,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [shapeOne, id];
}
