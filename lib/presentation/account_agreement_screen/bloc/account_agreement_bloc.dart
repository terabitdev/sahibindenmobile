import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/account_agreement_model.dart';

part 'account_agreement_event.dart';
part 'account_agreement_state.dart';

/// A bloc that manages the state of an AccountAgreement according to the dispatched events.
class AccountAgreementBloc extends Bloc<AccountAgreementEvent, AccountAgreementState> {
  AccountAgreementBloc(AccountAgreementState initialState) : super(initialState) {
    on<AccountAgreementInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
      AccountAgreementInitialEvent event,
      Emitter<AccountAgreementState> emit,
      ) async {
    // TODO: Add initialization logic here
  }
}
