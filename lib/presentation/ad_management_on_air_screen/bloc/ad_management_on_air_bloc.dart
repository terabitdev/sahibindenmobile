import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/ad_management_on_air_model.dart';
part 'ad_management_on_air_event.dart';
part 'ad_management_on_air_state.dart';

/// A bloc that manages the state of an AdManagementOnAir according to the event
/// that is dispatched to it.
class AdManagementOnAirBloc extends Bloc<AdManagementOnAirEvent, AdManagementOnAirState> {
  AdManagementOnAirBloc(AdManagementOnAirState initialState) : super(initialState) {
    on<AdManagementOnAirInitialEvent>(_onInitialize);
    on<ChangeDateEvent>(_changeDate);
  }

  // Initializes the state with controllers for various fields
  _onInitialize(
      AdManagementOnAirInitialEvent event,
      Emitter<AdManagementOnAirState> emit,
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

  // Updates the selected date in the model
  _changeDate(
      ChangeDateEvent event,
      Emitter<AdManagementOnAirState> emit,
      ) {
    emit(state.copyWith(
      adManagementOnAirModelObj: state.adManagementOnAirModelObj?.copyWith(
        selectedDate: event.date,
      ),
    ));
  }
}
