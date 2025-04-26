import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/vehicle_valuation_model.dart';
part 'vehicle_valuation_event.dart';
part 'vehicle_valuation_state.dart';

/// A bloc that manages the state of a VehicleValuation according to the event that is dispatched to it.
class VehicleValuationBloc
    extends Bloc<VehicleValuationEvent, VehicleValuationState> {
  VehicleValuationBloc(VehicleValuationState initialState)
      : super(initialState) {
    on<VehicleValuationInitialEvent>(_onInitialize);
  }

  _onInitialize(
      VehicleValuationInitialEvent event,
      Emitter<VehicleValuationState> emit,
      ) async {}
}
