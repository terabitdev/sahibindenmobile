part of 'zero_vehicle_world_authorized_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ZeroVehicleWorldAuthorized widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class ZeroVehicleWorldAuthorizedEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ZeroVehicleWorldAuthorized widget is first created.
class ZeroVehicleWorldAuthorizedInitialEvent
    extends ZeroVehicleWorldAuthorizedEvent {
  @override
  List<Object?> get props => [];
}
