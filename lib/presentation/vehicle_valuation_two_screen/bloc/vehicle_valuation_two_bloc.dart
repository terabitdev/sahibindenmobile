import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/vehicle_valuation_two_model.dart';
part 'vehicle_valuation_two_event.dart';
part 'vehicle_valuation_two_state.dart';

/// A bloc that manages the state of a VehicleValuationTwo according to the event that is dispatched to it.
class VehicleValuationTwoBloc
    extends Bloc<VehicleValuationTwoEvent, VehicleValuationTwoState> {
  VehicleValuationTwoBloc(VehicleValuationTwoState initialState)
      : super(initialState) {
    on<VehicleValuationTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
      VehicleValuationTwoInitialEvent event,
      Emitter<VehicleValuationTwoState> emit,
      ) async {
    emit(
      state.copyWith(
        formtextfillController: TextEditingController(),
        zipcodeController: TextEditingController(),
        formtextfill1Controller: TextEditingController(),
      ),
    );
  }
}
