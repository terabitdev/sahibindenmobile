part of 'zero_vehicle_world_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ZeroVehicleWorld widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ZeroVehicleWorldEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ZeroVehicleWorld widget is first created.
class ZeroVehicleWorldInitialEvent extends ZeroVehicleWorldEvent {
  @override
  List<Object?> get props => [];
}
