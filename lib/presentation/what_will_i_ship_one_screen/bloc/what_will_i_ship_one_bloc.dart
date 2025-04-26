import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/what_will_i_ship_one_model.dart';
part 'what_will_i_ship_one_event.dart';
part 'what_will_i_ship_one_state.dart';

/// A bloc that manages the state of a WhatWillIShipOne according to the event that is dispatched to it.
class WhatWillIShipOneBloc
    extends Bloc<WhatWillIShipOneEvent, WhatWillIShipOneState> {
  WhatWillIShipOneBloc(WhatWillIShipOneState initialState)
      : super(initialState) {
    on<WhatWillIShipOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
      WhatWillIShipOneInitialEvent event,
      Emitter<WhatWillIShipOneState> emit,
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
