import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listyellowed_item_model.dart';

/// This class defines the variables used in the [vehicle_buying_guide_after_purchase_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class VehicleBuyingGuideAfterPurchaseModel extends Equatable {
  VehicleBuyingGuideAfterPurchaseModel({this.listyellowedItemList = const []});

  List<ListyellowedItemModel> listyellowedItemList;

  VehicleBuyingGuideAfterPurchaseModel copyWith(
      {List<ListyellowedItemModel>? listyellowedItemList}) {
    return VehicleBuyingGuideAfterPurchaseModel(
      listyellowedItemList: listyellowedItemList ?? this.listyellowedItemList,
    );
  }

  @override
  List<Object?> get props => [listyellowedItemList];
}
