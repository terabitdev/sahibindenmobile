import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'expandablelisth_item_model.dart';

/// This class defines the variables used in the [after_opening_an_account_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class AfterOpeningAnAccountModel extends Equatable {
  AfterOpeningAnAccountModel({this.expandablelisthItemList = const []});

  List<ExpandablelisthItemModel> expandablelisthItemList;

  AfterOpeningAnAccountModel copyWith(
      {List<ExpandablelisthItemModel>? expandablelisthItemList}) {
    return AfterOpeningAnAccountModel(
      expandablelisthItemList:
      expandablelisthItemList ?? this.expandablelisthItemList,
    );
  }

  @override
  List<Object?> get props => [expandablelisthItemList];
}
