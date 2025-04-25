import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/comparison_list_model.dart';
part 'comparison_list_event.dart';
part 'comparison_list_state.dart';

/// A bloc that manages the state of a ComparisonList according to the event that is dispatched to it.
class ComparisonListBloc
    extends Bloc<ComparisonListEvent, ComparisonListState> {
  ComparisonListBloc(ComparisonListState initialState) : super(initialState) {
    on<ComparisonListInitialEvent>(_onInitialize);
  }

  _onInitialize(
      ComparisonListInitialEvent event,
      Emitter<ComparisonListState> emit,
      ) async {}
}
