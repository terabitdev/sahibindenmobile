import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/what_i_got_with_yepy_model.dart';
part 'what_i_got_with_yepy_event.dart';
part 'what_i_got_with_yepy_state.dart';

/// A bloc that manages the state of a WhatIGotWithYepy according to the event that is dispatched to it.
class WhatIGotWithYepyBloc
    extends Bloc<WhatIGotWithYepyEvent, WhatIGotWithYepyState> {
  WhatIGotWithYepyBloc(WhatIGotWithYepyState initialState)
      : super(initialState) {
    on<WhatIGotWithYepyInitialEvent>(_onInitialize);
  }

  _onInitialize(
      WhatIGotWithYepyInitialEvent event,
      Emitter<WhatIGotWithYepyState> emit,
      ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
      ),
    );
  }
}
