import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/ad_management_not_on_air_model.dart';

part 'ad_management_not_on_air_event.dart';
part 'ad_management_not_on_air_state.dart';

/// A bloc that manages the state of AdManagementNotOnAir according to the event that is dispatched to it.
class AdManagementNotOnAirBloc extends Bloc<AdManagementNotOnAirEvent, AdManagementNotOnAirState> {
  AdManagementNotOnAirBloc(AdManagementNotOnAirState initialState) : super(initialState) {
    on<AdManagementNotOnAirInitialEvent>(_onInitialize);
    on<ChangeDateEvent>(_changeDate);
  }

  /// Initializes the state with the default controllers.
  _onInitialize(
      AdManagementNotOnAirInitialEvent event,
      Emitter<AdManagementNotOnAirState> emit,
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

  /// Changes the date in the model.
  _changeDate(
      ChangeDateEvent event,
      Emitter<AdManagementNotOnAirState> emit,
      ) {
    emit(
      state.copyWith(
        adManagementNotOnAirModelObj: state.adManagementNotOnAirModelObj?.copyWith(
          selectedDate: event.date,
        ),
      ),
    );
  }
}
