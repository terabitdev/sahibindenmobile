import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [layout_item_widget] screen.

// ignore_for_file: must_be_immutable
class LayoutItemModel extends Equatable {
  LayoutItemModel(
      {this.buttonfavorite,
        this.image,
        this.skydandelionsap,
        this.text,
        this.jakartaindonesi,
        this.jakartaindonesi1,
        this.price,
        this.month,
        this.id}) {
    buttonfavorite = buttonfavorite ?? ImageConstant.imgButtonFavorite;
    image = image ?? ImageConstant.imgGreyBlackMoto;
    skydandelionsap = skydandelionsap ?? "msg_sky_dandelions_apartment".tr;
    text = text ?? "lbl_4_9".tr;
    jakartaindonesi = jakartaindonesi ?? ImageConstant.imgLinkedinBlueGray80003;
    jakartaindonesi1 = jakartaindonesi1 ?? "msg_jakarta_indonesia".tr;
    price = price ?? "lbl_290".tr;
    month = month ?? "lbl_month".tr;
    id = id ?? "";
  }

  String? buttonfavorite;

  String? image;

  String? skydandelionsap;

  String? text;

  String? jakartaindonesi;

  String? jakartaindonesi1;

  String? price;

  String? month;

  String? id;

  LayoutItemModel copyWith({
    String? buttonfavorite,
    String? image,
    String? skydandelionsap,
    String? text,
    String? jakartaindonesi,
    String? jakartaindonesi1,
    String? price,
    String? month,
    String? id,
  }) {
    return LayoutItemModel(
      buttonfavorite: buttonfavorite ?? this.buttonfavorite,
      image: image ?? this.image,
      skydandelionsap: skydandelionsap ?? this.skydandelionsap,
      text: text ?? this.text,
      jakartaindonesi: jakartaindonesi ?? this.jakartaindonesi,
      jakartaindonesi1: jakartaindonesi1 ?? this.jakartaindonesi1,
      price: price ?? this.price,
      month: month ?? this.month,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [
    buttonfavorite,
    image,
    skydandelionsap,
    text,
    jakartaindonesi,
    jakartaindonesi1,
    price,
    month,
    id
  ];
}
