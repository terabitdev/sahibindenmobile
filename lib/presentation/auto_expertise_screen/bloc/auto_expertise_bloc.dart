import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/auto_expertise_model.dart';
part 'auto_expertise_event.dart';
part 'auto_expertise_state.dart';

/// A bloc that manages the state of a AutoExpertise according to the event that is dispatched to it.
class AutoExpertiseBloc extends Bloc<AutoExpertiseEvent, AutoExpertiseState> {
  AutoExpertiseBloc(AutoExpertiseState initialState) : super(initialState) {
    on<AutoExpertiseInitialEvent>(_onInitialize);
  }
  _onInitialize(
    AutoExpertiseInitialEvent event,
    Emitter<AutoExpertiseState> emit,
  ) async {
    emit(
      state.copyWith(
        formtextfillController: TextEditingController(),
        formtextfill1Controller: TextEditingController(),
      ),
    );
  }
}
