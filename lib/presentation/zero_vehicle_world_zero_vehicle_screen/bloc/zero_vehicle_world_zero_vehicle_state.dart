part of 'zero_vehicle_world_zero_vehicle_bloc.dart';

/// Represents the state of ZeroVehicleWorldZeroVehicle in the application.

// ignore_for_file: must_be_immutable
class ZeroVehicleWorldZeroVehicleState extends Equatable {
  ZeroVehicleWorldZeroVehicleState(
      {this.zerovehicleTabModelObj, this.zeroVehicleWorldZeroVehicleModelObj});

  ZeroVehicleWorldZeroVehicleModel? zeroVehicleWorldZeroVehicleModelObj;

  ZerovehicleTabModel? zerovehicleTabModelObj;

  @override
  List<Object?> get props =>
      [zerovehicleTabModelObj, zeroVehicleWorldZeroVehicleModelObj];
  ZeroVehicleWorldZeroVehicleState copyWith({
    ZerovehicleTabModel? zerovehicleTabModelObj,
    ZeroVehicleWorldZeroVehicleModel? zeroVehicleWorldZeroVehicleModelObj,
  }) {
    return ZeroVehicleWorldZeroVehicleState(
      zerovehicleTabModelObj:
      zerovehicleTabModelObj ?? this.zerovehicleTabModelObj,
      zeroVehicleWorldZeroVehicleModelObj:
      zeroVehicleWorldZeroVehicleModelObj ??
          this.zeroVehicleWorldZeroVehicleModelObj,
    );
  }
}
