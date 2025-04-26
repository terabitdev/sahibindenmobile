part of 'vehicle_valuation_bloc.dart';

/// Represents the state of VehicleValuation in the application.

// ignore_for_file: must_be_immutable
class VehicleValuationState extends Equatable {
  VehicleValuationState({this.vehicleValuationModelObj});

  VehicleValuationModel? vehicleValuationModelObj;

  @override
  List<Object?> get props => [vehicleValuationModelObj];
  VehicleValuationState copyWith(
      {VehicleValuationModel? vehicleValuationModelObj}) {
    return VehicleValuationState(
      vehicleValuationModelObj:
      vehicleValuationModelObj ?? this.vehicleValuationModelObj,
    );
  }
}
