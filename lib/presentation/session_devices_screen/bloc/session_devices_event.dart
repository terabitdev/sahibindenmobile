part of 'session_devices_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SessionDevices widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class SessionDevicesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the SessionDevices widget is first created.
class SessionDevicesInitialEvent extends SessionDevicesEvent {
  @override
  List<Object?> get props => [];
}
