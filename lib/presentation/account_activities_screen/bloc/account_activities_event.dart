part of 'account_activities_bloc.dart';

/// Abstract class for all events that can be dispatched from the AccountActivities widget.
/// Events must be immutable and implement the [Equatable] interface.
class AccountActivitiesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the AccountActivities widget is first created.
class AccountActivitiesInitialEvent extends AccountActivitiesEvent {
  @override
  List<Object?> get props => [];
}

/// Event for changing date
// ignore_for_file: must_be_immutable
class ChangeDateEvent extends AccountActivitiesEvent {
  ChangeDateEvent({required this.date});
  DateTime date;

  @override
  List<Object?> get props => [date];
}

/// Event for changing date
// ignore_for_file: must_be_immutable
class ChangeDateEvent1 extends AccountActivitiesEvent {
  ChangeDateEvent1({required this.date});
  DateTime date;

  @override
  List<Object?> get props => [date];
}
