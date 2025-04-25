part of 'home_rental_guide_after_lease_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomeRentalGuideAfterLease widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class HomeRentalGuideAfterLeaseEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the HomeRentalGuideAfterLease widget is first created.
class HomeRentalGuideAfterLeaseInitialEvent
    extends HomeRentalGuideAfterLeaseEvent {
  @override
  List<Object?> get props => [];
}
