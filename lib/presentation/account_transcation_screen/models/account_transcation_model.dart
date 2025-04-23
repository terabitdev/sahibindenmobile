import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'expandablelistw_item_model.dart';

/// This class defines the variables used in the [account_transcation_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class AccountTranscationModel extends Equatable {
  AccountTranscationModel({
    this.expandablelistwItemList = const [],
  });

  List<ExpandablelistwItemModel> expandablelistwItemList;

  AccountTranscationModel copyWith({
    List<ExpandablelistwItemModel>? expandablelistwItemList,
  }) {
    return AccountTranscationModel(
      expandablelistwItemList:
      expandablelistwItemList ?? this.expandablelistwItemList,
    );
  }

  @override
  List<Object?> get props => [expandablelistwItemList];
}
