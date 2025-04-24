import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/delete_account_model.dart';
part 'delete_account_event.dart';
part 'delete_account_state.dart';

/// A bloc that manages the state of a DeleteAccount according to the event that is dispatched to it.
class DeleteAccountBloc extends Bloc<DeleteAccountEvent, DeleteAccountState> {
  DeleteAccountBloc(DeleteAccountState initialState) : super(initialState) {
    on<DeleteAccountInitialEvent>(_onInitialize);
  }

  _onInitialize(
      DeleteAccountInitialEvent event,
      Emitter<DeleteAccountState> emit,
      ) async {}
}
