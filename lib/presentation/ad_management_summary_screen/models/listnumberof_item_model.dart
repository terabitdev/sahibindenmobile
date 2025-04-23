import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listnumberof_item_widget] screen.
// ignore_for_file: must_be_immutable
class ListnumberofItemModel extends Equatable {
  ListnumberofItemModel({
    this.image,
    this.numberof,
    this.zero,
    this.id,
  }) {
    image = image ?? ImageConstant.imgFramePrimary50x50;
    numberof = numberof ?? "msg_number_of_adver".tr;
    zero = zero ?? "lbl_0".tr;
    id = id ?? "";
  }

  String? image;
  String? numberof;
  String? zero;
  String? id;

  ListnumberofItemModel copyWith({
    String? image,
    String? numberof,
    String? zero,
    String? id,
  }) {
    return ListnumberofItemModel(
      image: image ?? this.image,
      numberof: numberof ?? this.numberof,
      zero: zero ?? this.zero,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [image, numberof, zero, id];
}
