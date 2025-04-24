import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/cookies_model.dart';
part 'cookies_event.dart';
part 'cookies_state.dart';

/// A bloc that manages the state of a Cookies according to the event that is dispatched to it.
class CookiesBloc extends Bloc<CookiesEvent, CookiesState> {
  CookiesBloc(CookiesState initialState) : super(initialState) {
    on<CookiesInitialEvent>(_onInitialize);
  }

  _onInitialize(
      CookiesInitialEvent event,
      Emitter<CookiesState> emit,
      ) async {}
}
