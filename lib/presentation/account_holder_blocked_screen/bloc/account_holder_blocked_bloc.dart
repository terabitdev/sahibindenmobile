import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/account_holder_blocked_model.dart';

part 'account_holder_blocked_event.dart';
part 'account_holder_blocked_state.dart';

/// A bloc that manages the state of an AccountHolderBlocked according to the event that is dispatched to it.
class AccountHolderBlockedBloc extends Bloc<AccountHolderBlockedEvent, AccountHolderBlockedState> {
  AccountHolderBlockedBloc(AccountHolderBlockedState initialState) : super(initialState) {
    on<AccountHolderBlockedInitialEvent>(_onInitialize);
  }

  _onInitialize(
      AccountHolderBlockedInitialEvent event,
      Emitter<AccountHolderBlockedState> emit,
      ) async {}
}
