part of 'vehicle_valuation_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VehicleValuation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class VehicleValuationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the VehicleValuation widget is first created.
class VehicleValuationInitialEvent extends VehicleValuationEvent {
  @override
  List<Object?> get props => [];
}
