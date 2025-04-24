import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [expandablelisth_item_widget] screen.

// ignore_for_file: must_be_immutable
class ExpandablelisthItemModel extends Equatable {
  ExpandablelisthItemModel({this.isSelected}) {
    isSelected = isSelected ?? false;
  }

  bool? isSelected;

  ExpandablelisthItemModel copyWith({bool? isSelected}) {
    return ExpandablelisthItemModel(
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [isSelected];
}
