import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/messages_page_model.dart';
part 'messages_page_event.dart';
part 'messages_page_state.dart';

/// A bloc that manages the state of a MessagesOne according to the event that is dispatched to it.
class MessagesOneBloc extends Bloc<MessagesOneEvent, MessagesOneState> {
  MessagesOneBloc(MessagesOneState initialState) : super(initialState) {
    on<MessagesOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
      MessagesOneInitialEvent event,
      Emitter<MessagesOneState> emit,
      ) async {
    emit(
      state.copyWith(
        formtextfillController: TextEditingController(),
        formtextfill1Controller: TextEditingController(),
        dateController: TextEditingController(),
        pricetwoController: TextEditingController(),
      ),
    );
  }
}
