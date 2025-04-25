part of 'maintenance_repair_bloc.dart';

/// Represents the state of MaintenanceRepair in the application.

// ignore_for_file: must_be_immutable
class MaintenanceRepairState extends Equatable {
  MaintenanceRepairState({this.maintenanceRepairModelObj});

  MaintenanceRepairModel? maintenanceRepairModelObj;

  @override
  List<Object?> get props => [maintenanceRepairModelObj];
  MaintenanceRepairState copyWith(
      {MaintenanceRepairModel? maintenanceRepairModelObj}) {
    return MaintenanceRepairState(
      maintenanceRepairModelObj:
      maintenanceRepairModelObj ?? this.maintenanceRepairModelObj,
    );
  }
}
