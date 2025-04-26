import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/what_i_sold_with_yepy_model.dart';
part 'what_i_sold_with_yepy_event.dart';
part 'what_i_sold_with_yepy_state.dart';

/// A bloc that manages the state of a WhatISoldWithYepy according to the event that is dispatched to it.
class WhatISoldWithYepyBloc
    extends Bloc<WhatISoldWithYepyEvent, WhatISoldWithYepyState> {
  WhatISoldWithYepyBloc(WhatISoldWithYepyState initialState)
      : super(initialState) {
    on<WhatISoldWithYepyInitialEvent>(_onInitialize);
  }

  _onInitialize(
      WhatISoldWithYepyInitialEvent event,
      Emitter<WhatISoldWithYepyState> emit,
      ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
      ),
    );
  }
}
