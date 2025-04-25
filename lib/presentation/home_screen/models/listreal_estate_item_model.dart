import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [listreal_estate_item_widget] screen.

// ignore_for_file: must_be_immutable
class ListrealEstateItemModel extends Equatable {
  ListrealEstateItemModel(
      {this.realEstateOne, this.realestate, this.residential, this.id}) {
    realEstateOne = realEstateOne ?? ImageConstant.imgHome;
    realestate = realestate ?? "lbl_real_estate".tr;
    residential = residential ?? "msg_residential_commercial".tr;
    id = id ?? "";
  }

  String? realEstateOne;

  String? realestate;

  String? residential;

  String? id;

  ListrealEstateItemModel copyWith({
    String? realEstateOne,
    String? realestate,
    String? residential,
    String? id,
  }) {
    return ListrealEstateItemModel(
      realEstateOne: realEstateOne ?? this.realEstateOne,
      realestate: realestate ?? this.realestate,
      residential: residential ?? this.residential,
      id: id ?? this.id,
    );
  }

  @override
  List<Object?> get props => [realEstateOne, realestate, residential, id];
}
