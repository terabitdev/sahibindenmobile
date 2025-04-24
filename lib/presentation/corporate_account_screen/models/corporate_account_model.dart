import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'expandablelistw_item_model.dart';

/// This class defines the variables used in the [corporate_account_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class CorporateAccountModel extends Equatable {
  CorporateAccountModel({this.expandablelistwItemList = const []});

  List<ExpandablelistwItemModel> expandablelistwItemList;

  CorporateAccountModel copyWith(
      {List<ExpandablelistwItemModel>? expandablelistwItemList}) {
    return CorporateAccountModel(
      expandablelistwItemList:
      expandablelistwItemList ?? this.expandablelistwItemList,
    );
  }

  @override
  List<Object?> get props => [expandablelistwItemList];
}
