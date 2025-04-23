import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/account_cancellation_model.dart';

part 'account_cancellation_event.dart';
part 'account_cancellation_state.dart';

/// A bloc that manages the state of a AccountCancellation according to the event that is dispatched to it.
class AccountCancellationBloc extends Bloc<AccountCancellationEvent, AccountCancellationState> {
  AccountCancellationBloc(AccountCancellationState initialState) : super(initialState) {
    on<AccountCancellationInitialEvent>(_onInitialize);
  }

  _onInitialize(
      AccountCancellationInitialEvent event,
      Emitter<AccountCancellationState> emit,
      ) async {}
}
