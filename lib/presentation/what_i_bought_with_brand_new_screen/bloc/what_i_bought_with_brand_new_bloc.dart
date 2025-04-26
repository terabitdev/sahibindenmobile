import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/what_i_bought_with_brand_new_model.dart';
part 'what_i_bought_with_brand_new_event.dart';
part 'what_i_bought_with_brand_new_state.dart';

/// A bloc that manages the state of a WhatIBoughtWithBrandNew according to the event that is dispatched to it.
class WhatIBoughtWithBrandNewBloc
    extends Bloc<WhatIBoughtWithBrandNewEvent, WhatIBoughtWithBrandNewState> {
  WhatIBoughtWithBrandNewBloc(WhatIBoughtWithBrandNewState initialState)
      : super(initialState) {
    on<WhatIBoughtWithBrandNewInitialEvent>(_onInitialize);
  }

  _onInitialize(
      WhatIBoughtWithBrandNewInitialEvent event,
      Emitter<WhatIBoughtWithBrandNewState> emit,
      ) async {}
}
