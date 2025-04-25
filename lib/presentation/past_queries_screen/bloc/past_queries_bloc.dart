import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/past_queries_model.dart';
part 'past_queries_event.dart';
part 'past_queries_state.dart';

/// A bloc that manages the state of a PastQueries according to the event that is dispatched to it.
class PastQueriesBloc extends Bloc<PastQueriesEvent, PastQueriesState> {
  PastQueriesBloc(PastQueriesState initialState) : super(initialState) {
    on<PastQueriesInitialEvent>(_onInitialize);
  }

  _onInitialize(
      PastQueriesInitialEvent event,
      Emitter<PastQueriesState> emit,
      ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
      ),
    );
  }
}
