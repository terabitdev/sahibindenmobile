part of 'my_mobile_notification_permissions_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyMobileNotificationPermissions widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class MyMobileNotificationPermissionsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the MyMobileNotificationPermissions widget is first created.
class MyMobileNotificationPermissionsInitialEvent
    extends MyMobileNotificationPermissionsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch

// ignore_for_file: must_be_immutable
class ChangeSwitchEvent extends MyMobileNotificationPermissionsEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
