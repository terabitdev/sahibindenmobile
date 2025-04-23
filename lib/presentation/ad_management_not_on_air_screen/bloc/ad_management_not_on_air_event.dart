part of 'ad_management_not_on_air_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// AdManagementNotOnAir widget.
/// Events must be immutable and implement the [Equatable] interface.
class AdManagementNotOnAirEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AdManagementNotOnAir widget is first created.
class AdManagementNotOnAirInitialEvent extends AdManagementNotOnAirEvent {
  @override
  List<Object?> get props => [];
}

/// Event for changing the date.
class ChangeDateEvent extends AdManagementNotOnAirEvent {
  ChangeDateEvent({required this.date});
  DateTime date;

  @override
  List<Object?> get props => [date];
}
