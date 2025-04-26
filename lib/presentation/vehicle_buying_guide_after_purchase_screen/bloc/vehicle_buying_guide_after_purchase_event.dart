part of 'vehicle_buying_guide_after_purchase_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///VehicleBuyingGuideAfterPurchase widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class VehicleBuyingGuideAfterPurchaseEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the VehicleBuyingGuideAfterPurchase widget is first created.
class VehicleBuyingGuideAfterPurchaseInitialEvent
    extends VehicleBuyingGuideAfterPurchaseEvent {
  @override
  List<Object?> get props => [];
}
