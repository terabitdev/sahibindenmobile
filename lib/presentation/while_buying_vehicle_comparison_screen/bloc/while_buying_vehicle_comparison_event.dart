part of 'while_buying_vehicle_comparison_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WhileBuyingVehicleComparison widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class WhileBuyingVehicleComparisonEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the WhileBuyingVehicleComparison widget is first created.
class WhileBuyingVehicleComparisonInitialEvent
    extends WhileBuyingVehicleComparisonEvent {
  @override
  List<Object?> get props => [];
}
