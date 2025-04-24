part of 'device_information_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///DeviceInformation widget.
///
/// Events must be immutable and implement the [Equatable] interface.
class DeviceInformationEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the DeviceInformation widget is first created.
class DeviceInformationInitialEvent extends DeviceInformationEvent {
  @override
  List<Object?> get props => [];
}
