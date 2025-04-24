import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listproductsi_item_widget] screen.// ignore_for_file: must_be_immutable
class ListproductsiItemModel extends Equatable {
  ListproductsiItemModel({this.image, this.productsi, this.id}) {
    image = image ?? ImageConstant.imgHome;
    productsi = productsi ?? "msg_products_i_purchased".tr;
    id = id ?? "";
  }
  String? image;
  String? productsi;
  String? id;
  ListproductsiItemModel copyWith({
    String? image,
    String? productsi,
    String? id,
  }) {
    return ListproductsiItemModel(
      image: image ?? this.image,
      productsi: productsi ?? this.productsi,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [image, productsi, id];
}
