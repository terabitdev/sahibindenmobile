import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/maintenance_repair_model.dart';
part 'maintenance_repair_event.dart';
part 'maintenance_repair_state.dart';

/// A bloc that manages the state of a MaintenanceRepair according to the event that is dispatched to it.
class MaintenanceRepairBloc
    extends Bloc<MaintenanceRepairEvent, MaintenanceRepairState> {
  MaintenanceRepairBloc(MaintenanceRepairState initialState)
      : super(initialState) {
    on<MaintenanceRepairInitialEvent>(_onInitialize);
  }

  _onInitialize(
      MaintenanceRepairInitialEvent event,
      Emitter<MaintenanceRepairState> emit,
      ) async {}
}
