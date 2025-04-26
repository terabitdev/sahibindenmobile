part of 'zero_vehicle_world_campaign_vehicles_bloc.dart';

/// Represents the state of ZeroVehicleWorldCampaignVehicles in the application.

// ignore_for_file: must_be_immutable
class ZeroVehicleWorldCampaignVehiclesState extends Equatable {
  ZeroVehicleWorldCampaignVehiclesState(
      {this.zeroVehicleWorldCampaignVehiclesModelObj});

  ZeroVehicleWorldCampaignVehiclesModel?
  zeroVehicleWorldCampaignVehiclesModelObj;

  @override
  List<Object?> get props => [zeroVehicleWorldCampaignVehiclesModelObj];
  ZeroVehicleWorldCampaignVehiclesState copyWith(
      {ZeroVehicleWorldCampaignVehiclesModel?
      zeroVehicleWorldCampaignVehiclesModelObj}) {
    return ZeroVehicleWorldCampaignVehiclesState(
      zeroVehicleWorldCampaignVehiclesModelObj:
      zeroVehicleWorldCampaignVehiclesModelObj ??
          this.zeroVehicleWorldCampaignVehiclesModelObj,
    );
  }
}
