import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/my_mobile_notification_permissions_model.dart';
part 'my_mobile_notification_permissions_event.dart';
part 'my_mobile_notification_permissions_state.dart';

/// A bloc that manages the state of a MyMobileNotificationPermissions according to the event that is dispatched to it.
class MyMobileNotificationPermissionsBloc extends Bloc<
    MyMobileNotificationPermissionsEvent,
    MyMobileNotificationPermissionsState> {
  MyMobileNotificationPermissionsBloc(
      MyMobileNotificationPermissionsState initialState)
      : super(initialState) {
    on<MyMobileNotificationPermissionsInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _onInitialize(
      MyMobileNotificationPermissionsInitialEvent event,
      Emitter<MyMobileNotificationPermissionsState> emit,
      ) async {
    emit(
      state.copyWith(
        isSelectedSwitch: false,
      ),
    );
  }

  _changeSwitch(
      ChangeSwitchEvent event,
      Emitter<MyMobileNotificationPermissionsState> emit,
      ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }
}
