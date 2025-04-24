import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/get_messages_model.dart';
part 'get_messages_event.dart';
part 'get_messages_state.dart';

/// A bloc that manages the state of a GetMessages according to the event that is dispatched to it.
class GetMessagesBloc extends Bloc<GetMessagesEvent, GetMessagesState> {
  GetMessagesBloc(GetMessagesState initialState) : super(initialState) {
    on<GetMessagesInitialEvent>(_onInitialize);
  }

  _onInitialize(
      GetMessagesInitialEvent event,
      Emitter<GetMessagesState> emit,
      ) async {
    emit(
      state.copyWith(
        messageController: TextEditingController(),
      ),
    );
  }
}
