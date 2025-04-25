import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/house_rental_guide_after_lease_model.dart';
part 'house_rental_guide_after_lease_event.dart';
part 'house_rental_guide_after_lease_state.dart';

/// A bloc that manages the state of a HouseRentalGuideAfterLease according to the event that is dispatched to it.
class HouseRentalGuideAfterLeaseBloc extends Bloc<
    HouseRentalGuideAfterLeaseEvent, HouseRentalGuideAfterLeaseState> {
  HouseRentalGuideAfterLeaseBloc(HouseRentalGuideAfterLeaseState initialState)
      : super(initialState) {
    on<HouseRentalGuideAfterLeaseInitialEvent>(_onInitialize);
  }

  _onInitialize(
      HouseRentalGuideAfterLeaseInitialEvent event,
      Emitter<HouseRentalGuideAfterLeaseState> emit,
      ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
      ),
    );
  }
}
