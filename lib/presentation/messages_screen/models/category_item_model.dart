import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [category_item_widget] screen.

// ignore_for_file: must_be_immutable
class CategoryItemModel extends Equatable {
  CategoryItemModel({this.buttoncategory, this.isSelected}) {
    buttoncategory = buttoncategory ?? "lbl_all".tr;
    isSelected = isSelected ?? false;
  }

  String? buttoncategory;

  bool? isSelected;

  CategoryItemModel copyWith({
    String? buttoncategory,
    bool? isSelected,
  }) {
    return CategoryItemModel(
      buttoncategory: buttoncategory ?? this.buttoncategory,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [buttoncategory, isSelected];
}
