import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [expandablelisti_item_widget] screen.

// ignore_for_file: must_be_immutable
class ExpandablelistiItemModel extends Equatable {
  ExpandablelistiItemModel({this.isSelected}) {
    isSelected = isSelected ?? false;
  }

  bool? isSelected;

  ExpandablelistiItemModel copyWith({bool? isSelected}) {
    return ExpandablelistiItemModel(
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [isSelected];
}
