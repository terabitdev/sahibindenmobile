import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/session_devices_model.dart';
part 'session_devices_event.dart';
part 'session_devices_state.dart';

/// A bloc that manages the state of a SessionDevices according to the event that is dispatched to it.
class SessionDevicesBloc
    extends Bloc<SessionDevicesEvent, SessionDevicesState> {
  SessionDevicesBloc(SessionDevicesState initialState) : super(initialState) {
    on<SessionDevicesInitialEvent>(_onInitialize);
  }

  _onInitialize(
      SessionDevicesInitialEvent event,
      Emitter<SessionDevicesState> emit,
      ) async {
    emit(
      state.copyWith(
        edittexttwoController: TextEditingController(),
        edittextoneController: TextEditingController(),
      ),
    );
  }
}
