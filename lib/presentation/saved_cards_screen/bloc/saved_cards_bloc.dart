import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/saved_cards_model.dart';
part 'saved_cards_event.dart';
part 'saved_cards_state.dart';

/// A bloc that manages the state of a SavedCards according to the event that is dispatched to it.
class SavedCardsBloc extends Bloc<SavedCardsEvent, SavedCardsState> {
  SavedCardsBloc(SavedCardsState initialState) : super(initialState) {
    on<SavedCardsInitialEvent>(_onInitialize);
  }

  _onInitialize(
      SavedCardsInitialEvent event,
      Emitter<SavedCardsState> emit,
      ) async {}
}
