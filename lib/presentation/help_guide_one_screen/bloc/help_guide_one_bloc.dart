import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/help_guide_one_model.dart';
part 'help_guide_one_event.dart';
part 'help_guide_one_state.dart';

/// A bloc that manages the state of a HelpGuideOne according to the event that is dispatched to it.
class HelpGuideOneBloc extends Bloc<HelpGuideOneEvent, HelpGuideOneState> {
  HelpGuideOneBloc(HelpGuideOneState initialState) : super(initialState) {
    on<HelpGuideOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
      HelpGuideOneInitialEvent event,
      Emitter<HelpGuideOneState> emit,
      ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
      ),
    );
  }
}
