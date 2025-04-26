import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [while_buying_item_widget] screen.

// ignore_for_file: must_be_immutable
class WhileBuyingItemModel extends Equatable {
  WhileBuyingItemModel({this.image, this.realestate, this.id}) {
    image = image ?? ImageConstant.imgFloatingIcon;
    realestate = realestate ?? "msg_real_estate_expertise".tr;
    id = id ?? "";
  }

  String? image;

  String? realestate;

  String? id;

  WhileBuyingItemModel copyWith({
    String? image,
    String? realestate,
    String? id,
  }) {
    return WhileBuyingItemModel(
      image: image ?? this.image,
      realestate: realestate ?? this.realestate,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [image, realestate, id];
}
