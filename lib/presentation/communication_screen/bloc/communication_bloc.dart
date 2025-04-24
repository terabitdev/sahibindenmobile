import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/communication_model.dart';
part 'communication_event.dart';
part 'communication_state.dart';

/// A bloc that manages the state of a Communication according to the event that is dispatched to it.
class CommunicationBloc extends Bloc<CommunicationEvent, CommunicationState> {
  CommunicationBloc(CommunicationState initialState) : super(initialState) {
    on<CommunicationInitialEvent>(_onInitialize);
  }
  _onInitialize(
    CommunicationInitialEvent event,
    Emitter<CommunicationState> emit,
  ) async {
    emit(
      state.copyWith(
        filizsaranoneController: TextEditingController(),
        zipcodeController: TextEditingController(),
        addressController: TextEditingController(),
        group1614oneController: TextEditingController(),
        group2219oneController: TextEditingController(),
        group2221oneController: TextEditingController(),
        group2223oneController: TextEditingController(),
        group2225oneController: TextEditingController(),
      ),
    );
  }
}
