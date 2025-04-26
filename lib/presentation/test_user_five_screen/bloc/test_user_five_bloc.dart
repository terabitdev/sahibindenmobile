import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/test_user_five_model.dart';
part 'test_user_five_event.dart';
part 'test_user_five_state.dart';

/// A bloc that manages the state of a TestUserFive according to the event that is dispatched to it.
class TestUserFiveBloc extends Bloc<TestUserFiveEvent, TestUserFiveState> {
  TestUserFiveBloc(TestUserFiveState initialState) : super(initialState) {
    on<TestUserFiveInitialEvent>(_onInitialize);
  }

  _onInitialize(
      TestUserFiveInitialEvent event,
      Emitter<TestUserFiveState> emit,
      ) async {
    emit(
      state.copyWith(
        whatsonairController: TextEditingController(),
        group2311oneController: TextEditingController(),
        messageController: TextEditingController(),
        messageoneController: TextEditingController(),
        informationoneController: TextEditingController(),
        specialadsforController: TextEditingController(),
        favoriteController: TextEditingController(),
        searchController: TextEditingController(),
        favorite1Controller: TextEditingController(),
        group2371oneController: TextEditingController(),
        group2373oneController: TextEditingController(),
        group2375oneController: TextEditingController(),
        group2377oneController: TextEditingController(),
        mysavedcardsController: TextEditingController(),
        helpguideoneController: TextEditingController(),
        group2383oneController: TextEditingController(),
        aboutoneController: TextEditingController(),
        group2387oneController: TextEditingController(),
        cookiesoneController: TextEditingController(),
      ),
    );
  }
}
