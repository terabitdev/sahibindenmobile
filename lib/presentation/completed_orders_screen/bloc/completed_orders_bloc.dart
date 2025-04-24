import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/completed_orders_model.dart';
part 'completed_orders_event.dart';
part 'completed_orders_state.dart';

/// A bloc that manages the state of a CompletedOrders according to the event that is dispatched to it.
class CompletedOrdersBloc
    extends Bloc<CompletedOrdersEvent, CompletedOrdersState> {
  CompletedOrdersBloc(CompletedOrdersState initialState) : super(initialState) {
    on<CompletedOrdersInitialEvent>(_onInitialize);
    on<ChangeDateEvent>(_changeDate);
  }

  _onInitialize(
      CompletedOrdersInitialEvent event,
      Emitter<CompletedOrdersState> emit,
      ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
        formtextfillController: TextEditingController(),
        formtextfill1Controller: TextEditingController(),
        dateController: TextEditingController(),
        pricetwoController: TextEditingController(),
      ),
    );
  }

  _changeDate(
      ChangeDateEvent event,
      Emitter<CompletedOrdersState> emit,
      ) {
    emit(state.copyWith(
        completedOrdersModelObj: state.completedOrdersModelObj?.copyWith(
          selectedDate: event.date,
        )));
  }
}
