import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/terms_of_use_model.dart';
part 'terms_of_use_event.dart';
part 'terms_of_use_state.dart';

/// A bloc that manages the state of a TermsOfUse according to the event that is dispatched to it.
class TermsOfUseBloc extends Bloc<TermsOfUseEvent, TermsOfUseState> {
  TermsOfUseBloc(TermsOfUseState initialState) : super(initialState) {
    on<TermsOfUseInitialEvent>(_onInitialize);
  }

  _onInitialize(
      TermsOfUseInitialEvent event,
      Emitter<TermsOfUseState> emit,
      ) async {}
}
