import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [safe_ecommerce_item_widget] screen.

// ignore_for_file: must_be_immutable
class SafeEcommerceItemModel extends Equatable {
  SafeEcommerceItemModel({this.image, this.thingsiexpect, this.id}) {
    image = image ?? ImageConstant.imgHome;
    thingsiexpect = thingsiexpect ?? "msg_things_i_expect".tr;
    id = id ?? "";
  }

  String? image;

  String? thingsiexpect;

  String? id;

  SafeEcommerceItemModel copyWith({
    String? image,
    String? thingsiexpect,
    String? id,
  }) {
    return SafeEcommerceItemModel(
      image: image ?? this.image,
      thingsiexpect: thingsiexpect ?? this.thingsiexpect,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [image, thingsiexpect, id];
}
