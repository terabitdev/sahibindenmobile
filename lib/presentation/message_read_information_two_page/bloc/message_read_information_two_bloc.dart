import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/message_read_information_two_model.dart';
part 'message_read_information_two_event.dart';
part 'message_read_information_two_state.dart';

/// A bloc that manages the state of a MessageReadInformationTwo according to the event that is dispatched to it.
class MessageReadInformationTwoBloc extends Bloc<MessageReadInformationTwoEvent,
    MessageReadInformationTwoState> {
  MessageReadInformationTwoBloc(MessageReadInformationTwoState initialState)
      : super(initialState) {
    on<MessageReadInformationTwoInitialEvent>(_onInitialize);
    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _onInitialize(
      MessageReadInformationTwoInitialEvent event,
      Emitter<MessageReadInformationTwoState> emit,
      ) async {
    emit(
      state.copyWith(
        isSelectedSwitch: false,
      ),
    );
  }

  _changeSwitch(
      ChangeSwitchEvent event,
      Emitter<MessageReadInformationTwoState> emit,
      ) {
    emit(state.copyWith(
      isSelectedSwitch: event.value,
    ));
  }
}
