import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/what_will_i_ship_model.dart';
part 'what_will_i_ship_event.dart';
part 'what_will_i_ship_state.dart';

/// A bloc that manages the state of a WhatWillIShip according to the event that is dispatched to it.
class WhatWillIShipBloc extends Bloc<WhatWillIShipEvent, WhatWillIShipState> {
  WhatWillIShipBloc(WhatWillIShipState initialState) : super(initialState) {
    on<WhatWillIShipInitialEvent>(_onInitialize);
  }

  _onInitialize(
      WhatWillIShipInitialEvent event,
      Emitter<WhatWillIShipState> emit,
      ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
        nameController: TextEditingController(),
        formtextfillController: TextEditingController(),
        formtextfill1Controller: TextEditingController(),
        formtextfill2Controller: TextEditingController(),
      ),
    );
  }
}
