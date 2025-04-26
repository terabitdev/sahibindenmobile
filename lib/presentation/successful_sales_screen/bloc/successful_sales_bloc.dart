import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/successful_sales_model.dart';
part 'successful_sales_event.dart';
part 'successful_sales_state.dart';

/// A bloc that manages the state of a SuccessfulSales according to the event that is dispatched to it.
class SuccessfulSalesBloc
    extends Bloc<SuccessfulSalesEvent, SuccessfulSalesState> {
  SuccessfulSalesBloc(SuccessfulSalesState initialState) : super(initialState) {
    on<SuccessfulSalesInitialEvent>(_onInitialize);
  }

  _onInitialize(
      SuccessfulSalesInitialEvent event,
      Emitter<SuccessfulSalesState> emit,
      ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
        nameController: TextEditingController(),
        formtextfillController: TextEditingController(),
        formtextfill1Controller: TextEditingController(),
        dateController: TextEditingController(),
      ),
    );
  }
}
