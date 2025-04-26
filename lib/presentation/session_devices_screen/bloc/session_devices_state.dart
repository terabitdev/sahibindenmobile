part of 'session_devices_bloc.dart';

/// Represents the state of SessionDevices in the application.

// ignore_for_file: must_be_immutable
class SessionDevicesState extends Equatable {
  SessionDevicesState(
      {this.edittexttwoController,
        this.edittextoneController,
        this.sessionDevicesModelObj});

  TextEditingController? edittexttwoController;

  TextEditingController? edittextoneController;

  SessionDevicesModel? sessionDevicesModelObj;

  @override
  List<Object?> get props =>
      [edittexttwoController, edittextoneController, sessionDevicesModelObj];
  SessionDevicesState copyWith({
    TextEditingController? edittexttwoController,
    TextEditingController? edittextoneController,
    SessionDevicesModel? sessionDevicesModelObj,
  }) {
    return SessionDevicesState(
      edittexttwoController:
      edittexttwoController ?? this.edittexttwoController,
      edittextoneController:
      edittextoneController ?? this.edittextoneController,
      sessionDevicesModelObj:
      sessionDevicesModelObj ?? this.sessionDevicesModelObj,
    );
  }
}
