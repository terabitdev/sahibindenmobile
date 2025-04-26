part of 'vehicle_valuation_one_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VehicleValuationOne widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class VehicleValuationOneEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the VehicleValuationOne widget is first created.
class VehicleValuationOneInitialEvent extends VehicleValuationOneEvent {
  @override
  List<Object?> get props => [];
}
