part of 'zero_vehicle_world_zero_vehicle_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ZeroVehicleWorldZeroVehicle widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ZeroVehicleWorldZeroVehicleEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ZeroVehicleWorldZeroVehicle widget is first created.
class ZeroVehicleWorldZeroVehicleInitialEvent
    extends ZeroVehicleWorldZeroVehicleEvent {
  @override
  List<Object?> get props => [];
}
