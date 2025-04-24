part of 'distance_selling_contracts_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DistanceSellingContracts widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class DistanceSellingContractsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the DistanceSellingContracts widget is first created.
class DistanceSellingContractsInitialEvent
    extends DistanceSellingContractsEvent {
  @override
  List<Object?> get props => [];
}
