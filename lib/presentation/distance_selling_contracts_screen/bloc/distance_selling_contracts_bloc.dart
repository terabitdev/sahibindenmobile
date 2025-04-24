import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/distance_selling_contracts_model.dart';
part 'distance_selling_contracts_event.dart';
part 'distance_selling_contracts_state.dart';

/// A bloc that manages the state of a DistanceSellingContracts according to the event that is dispatched to it.
class DistanceSellingContractsBloc
    extends Bloc<DistanceSellingContractsEvent, DistanceSellingContractsState> {
  DistanceSellingContractsBloc(DistanceSellingContractsState initialState)
      : super(initialState) {
    on<DistanceSellingContractsInitialEvent>(_onInitialize);
  }

  _onInitialize(
      DistanceSellingContractsInitialEvent event,
      Emitter<DistanceSellingContractsState> emit,
      ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
        formtextfillController: TextEditingController(),
        formtextfill1Controller: TextEditingController(),
        formtextfill2Controller: TextEditingController(),
        formtextfill3Controller: TextEditingController(),
      ),
    );
  }
}
