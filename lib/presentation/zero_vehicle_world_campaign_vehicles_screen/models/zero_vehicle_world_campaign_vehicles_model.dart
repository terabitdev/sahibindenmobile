import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'listdfsk_e5_suv_item_model.dart';

/// This class defines the variables used in the [zero_vehicle_world_campaign_vehicles_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class ZeroVehicleWorldCampaignVehiclesModel extends Equatable {
  ZeroVehicleWorldCampaignVehiclesModel(
      {this.listdfskE5SuvItemList = const []});

  List<ListdfskE5SuvItemModel> listdfskE5SuvItemList;

  ZeroVehicleWorldCampaignVehiclesModel copyWith(
      {List<ListdfskE5SuvItemModel>? listdfskE5SuvItemList}) {
    return ZeroVehicleWorldCampaignVehiclesModel(
      listdfskE5SuvItemList:
      listdfskE5SuvItemList ?? this.listdfskE5SuvItemList,
    );
  }

  @override
  List<Object?> get props => [listdfskE5SuvItemList];
}
