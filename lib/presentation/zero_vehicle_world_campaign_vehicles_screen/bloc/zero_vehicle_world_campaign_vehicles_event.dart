part of 'zero_vehicle_world_campaign_vehicles_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ZeroVehicleWorldCampaignVehicles widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ZeroVehicleWorldCampaignVehiclesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ZeroVehicleWorldCampaignVehicles widget is first created.
class ZeroVehicleWorldCampaignVehiclesInitialEvent
    extends ZeroVehicleWorldCampaignVehiclesEvent {
  @override
  List<Object?> get props => [];
}
