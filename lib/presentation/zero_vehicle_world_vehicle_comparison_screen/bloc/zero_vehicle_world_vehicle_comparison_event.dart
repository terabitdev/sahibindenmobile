part of 'zero_vehicle_world_vehicle_comparison_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ZeroVehicleWorldVehicleComparison widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ZeroVehicleWorldVehicleComparisonEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ZeroVehicleWorldVehicleComparison widget is first created.
class ZeroVehicleWorldVehicleComparisonInitialEvent
    extends ZeroVehicleWorldVehicleComparisonEvent {
  @override
  List<Object?> get props => [];
}
