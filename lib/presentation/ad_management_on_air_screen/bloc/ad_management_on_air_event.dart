part of 'ad_management_on_air_bloc.dart';

/// Abstract class for all events that can be dispatched from the
/// AdManagementOnAir widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class AdManagementOnAirEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AdManagementOnAir widget is first created.
class AdManagementOnAirInitialEvent extends AdManagementOnAirEvent {
  @override
  List<Object?> get props => [];
}

/// Event for changing the date.
class ChangeDateEvent extends AdManagementOnAirEvent {
  ChangeDateEvent({required this.date});

  DateTime date;

  @override
  List<Object?> get props => [date];
}
