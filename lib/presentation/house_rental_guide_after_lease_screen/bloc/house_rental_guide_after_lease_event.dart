part of 'house_rental_guide_after_lease_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HouseRentalGuideAfterLease widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HouseRentalGuideAfterLeaseEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HouseRentalGuideAfterLease widget is first created.
class HouseRentalGuideAfterLeaseInitialEvent
    extends HouseRentalGuideAfterLeaseEvent {
  @override
  List<Object?> get props => [];
}
