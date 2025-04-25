import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/information_model.dart';
import '../models/informationinfo_tab_model.dart';
part 'information_event.dart';
part 'information_state.dart';

/// A bloc that manages the state of a Information according to the event that is dispatched to it.
class InformationBloc extends Bloc<InformationEvent, InformationState> {
  InformationBloc(InformationState initialState) : super(initialState) {
    on<InformationInitialEvent>(_onInitialize);
  }

  _onInitialize(
      InformationInitialEvent event,
      Emitter<InformationState> emit,
      ) async {}
}
