import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'expandablelisti_item_model.dart';

/// This class defines the variables used in the [contracts_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class ContractsModel extends Equatable {
  ContractsModel({this.expandablelistiItemList = const []});

  List<ExpandablelistiItemModel> expandablelistiItemList;

  ContractsModel copyWith(
      {List<ExpandablelistiItemModel>? expandablelistiItemList}) {
    return ContractsModel(
      expandablelistiItemList:
      expandablelistiItemList ?? this.expandablelistiItemList,
    );
  }

  @override
  List<Object?> get props => [expandablelistiItemList];
}
