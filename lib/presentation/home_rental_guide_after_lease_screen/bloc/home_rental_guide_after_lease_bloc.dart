import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/home_rental_guide_after_lease_model.dart';
part 'home_rental_guide_after_lease_event.dart';
part 'home_rental_guide_after_lease_state.dart';

/// A bloc that manages the state of a HomeRentalGuideAfterLease according to the event that is dispatched to it.
class HomeRentalGuideAfterLeaseBloc extends Bloc<HomeRentalGuideAfterLeaseEvent,
    HomeRentalGuideAfterLeaseState> {
  HomeRentalGuideAfterLeaseBloc(HomeRentalGuideAfterLeaseState initialState)
      : super(initialState) {
    on<HomeRentalGuideAfterLeaseInitialEvent>(_onInitialize);
  }

  _onInitialize(
      HomeRentalGuideAfterLeaseInitialEvent event,
      Emitter<HomeRentalGuideAfterLeaseState> emit,
      ) async {}
}
