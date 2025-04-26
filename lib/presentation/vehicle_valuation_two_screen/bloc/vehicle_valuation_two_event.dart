part of 'vehicle_valuation_two_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VehicleValuationTwo widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class VehicleValuationTwoEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the VehicleValuationTwo widget is first created.
class VehicleValuationTwoInitialEvent extends VehicleValuationTwoEvent {
  @override
  List<Object?> get props => [];
}
