import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listnumberof_item_model.dart';

/// This class defines the variables used in the [ad_management_summary_screen],
/// and is typically used to hold data that is passed between different parts of the application.
// ignore_for_file: must_be_immutable
class AdManagementSummaryModel extends Equatable {
  AdManagementSummaryModel({this.listnumberofItemList = const []});

  List<ListnumberofItemModel> listnumberofItemList;

  AdManagementSummaryModel copyWith({
    List<ListnumberofItemModel>? listnumberofItemList,
  }) {
    return AdManagementSummaryModel(
      listnumberofItemList: listnumberofItemList ?? this.listnumberofItemList,
    );
  }

  @override
  List<Object?> get props => [listnumberofItemList];
}
