import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [expandablelista_item_widget] screen.

// ignore_for_file: must_be_immutable
class ExpandablelistaItemModel extends Equatable {
  ExpandablelistaItemModel({this.isSelected}) {
    isSelected = isSelected ?? false;
  }

  bool? isSelected;

  ExpandablelistaItemModel copyWith({bool? isSelected}) {
    return ExpandablelistaItemModel(
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [isSelected];
}
