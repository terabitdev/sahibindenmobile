import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [expandablelistd_item_widget] screen.

// ignore_for_file: must_be_immutable
class ExpandablelistdItemModel extends Equatable {
  ExpandablelistdItemModel({this.isSelected}) {
    isSelected = isSelected ?? false;
  }

  bool? isSelected;

  ExpandablelistdItemModel copyWith({bool? isSelected}) {
    return ExpandablelistdItemModel(
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [isSelected];
}
