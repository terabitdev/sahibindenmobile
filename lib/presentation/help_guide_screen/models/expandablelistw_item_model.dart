import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [expandablelistw_item_widget] screen.

// ignore_for_file: must_be_immutable
class ExpandablelistwItemModel extends Equatable {
  ExpandablelistwItemModel({this.isSelected}) {
    isSelected = isSelected ?? false;
  }

  bool? isSelected;

  ExpandablelistwItemModel copyWith({bool? isSelected}) {
    return ExpandablelistwItemModel(
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [isSelected];
}
