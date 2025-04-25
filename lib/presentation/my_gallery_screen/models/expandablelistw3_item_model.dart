import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';

/// This class is used in the [expandablelistw3_item_widget] screen.

// ignore_for_file: must_be_immutable
class Expandablelistw3ItemModel extends Equatable {
  Expandablelistw3ItemModel({this.isSelected}) {
    isSelected = isSelected ?? false;
  }

  bool? isSelected;

  Expandablelistw3ItemModel copyWith({bool? isSelected}) {
    return Expandablelistw3ItemModel(
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [isSelected];
}
