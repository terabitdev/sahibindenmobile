part of 'maintenance_repair_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MaintenanceRepair widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class MaintenanceRepairEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MaintenanceRepair widget is first created.
class MaintenanceRepairInitialEvent extends MaintenanceRepairEvent {
  @override
  List<Object?> get props => [];
}
