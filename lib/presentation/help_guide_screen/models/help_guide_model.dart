import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'expandablelistw_item_model.dart';

/// This class defines the variables used in the [help_guide_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class HelpGuideModel extends Equatable {
  HelpGuideModel({this.expandablelistwItemList = const []});

  List<ExpandablelistwItemModel> expandablelistwItemList;

  HelpGuideModel copyWith(
      {List<ExpandablelistwItemModel>? expandablelistwItemList}) {
    return HelpGuideModel(
      expandablelistwItemList:
      expandablelistwItemList ?? this.expandablelistwItemList,
    );
  }

  @override
  List<Object?> get props => [expandablelistwItemList];
}
