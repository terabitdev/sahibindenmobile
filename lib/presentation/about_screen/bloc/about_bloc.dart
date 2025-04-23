import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/about_model.dart';

part 'about_event.dart';
part 'about_state.dart';

/// A bloc that manages the state of About according to the event that is dispatched to it.
class AboutBloc extends Bloc<AboutEvent, AboutState> {
  AboutBloc(AboutState initialState) : super(initialState) {
    on<AboutInitialEvent>(_onInitialize);
  }

  Future<void> _onInitialize(
      AboutInitialEvent event,
      Emitter<AboutState> emit,
      ) async {
    // TODO: Implement initialization logic
  }
}
