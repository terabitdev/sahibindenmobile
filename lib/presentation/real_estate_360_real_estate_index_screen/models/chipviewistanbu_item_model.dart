import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [chipviewistanbu_item_widget] screen.

// ignore_for_file: must_be_immutable
class ChipviewistanbuItemModel extends Equatable {
  ChipviewistanbuItemModel({this.istanbulOne, this.isSelected}) {
    istanbulOne = istanbulOne ?? "lbl_istanbul".tr;
    isSelected = isSelected ?? false;
  }

  String? istanbulOne;

  bool? isSelected;

  ChipviewistanbuItemModel copyWith({
    String? istanbulOne,
    bool? isSelected,
  }) {
    return ChipviewistanbuItemModel(
      istanbulOne: istanbulOne ?? this.istanbulOne,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [istanbulOne, isSelected];
}
