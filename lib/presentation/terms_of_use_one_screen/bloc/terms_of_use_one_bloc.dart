import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/terms_of_use_one_model.dart';
part 'terms_of_use_one_event.dart';
part 'terms_of_use_one_state.dart';

/// A bloc that manages the state of a TermsOfUseOne according to the event that is dispatched to it.
class TermsOfUseOneBloc extends Bloc<TermsOfUseOneEvent, TermsOfUseOneState> {
  TermsOfUseOneBloc(TermsOfUseOneState initialState) : super(initialState) {
    on<TermsOfUseOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
      TermsOfUseOneInitialEvent event,
      Emitter<TermsOfUseOneState> emit,
      ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
      ),
    );
  }
}
