import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/problem_suggestion_post_model.dart';
part 'problem_suggestion_post_event.dart';
part 'problem_suggestion_post_state.dart';

/// A bloc that manages the state of a ProblemSuggestionPost according to the event that is dispatched to it.
class ProblemSuggestionPostBloc
    extends Bloc<ProblemSuggestionPostEvent, ProblemSuggestionPostState> {
  ProblemSuggestionPostBloc(ProblemSuggestionPostState initialState)
      : super(initialState) {
    on<ProblemSuggestionPostInitialEvent>(_onInitialize);
  }

  _onInitialize(
      ProblemSuggestionPostInitialEvent event,
      Emitter<ProblemSuggestionPostState> emit,
      ) async {
    emit(
      state.copyWith(
        categoryoneController: TextEditingController(),
      ),
    );
  }
}
