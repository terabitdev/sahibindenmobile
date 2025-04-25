import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [facilities_item_widget] screen.

// ignore_for_file: must_be_immutable
class FacilitiesItemModel extends Equatable {
  FacilitiesItemModel({this.layoutThree, this.isSelected}) {
    layoutThree = layoutThree ?? "lbl_2_bedroom".tr;
    isSelected = isSelected ?? false;
  }

  String? layoutThree;

  bool? isSelected;

  FacilitiesItemModel copyWith({
    String? layoutThree,
    bool? isSelected,
  }) {
    return FacilitiesItemModel(
      layoutThree: layoutThree ?? this.layoutThree,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [layoutThree, isSelected];
}
