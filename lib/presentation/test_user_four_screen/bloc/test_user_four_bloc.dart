import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/test_user_four_model.dart';
part 'test_user_four_event.dart';
part 'test_user_four_state.dart';

/// A bloc that manages the state of a TestUserFour according to the event that is dispatched to it.
class TestUserFourBloc extends Bloc<TestUserFourEvent, TestUserFourState> {
  TestUserFourBloc(TestUserFourState initialState) : super(initialState) {
    on<TestUserFourInitialEvent>(_onInitialize);
  }

  _onInitialize(
      TestUserFourInitialEvent event,
      Emitter<TestUserFourState> emit,
      ) async {
    emit(
      state.copyWith(
        whatsonairController: TextEditingController(),
        group2507oneController: TextEditingController(),
        messageController: TextEditingController(),
        messageoneController: TextEditingController(),
        informationoneController: TextEditingController(),
        specialadsforController: TextEditingController(),
        favoriteController: TextEditingController(),
        searchController: TextEditingController(),
        favorite1Controller: TextEditingController(),
        group2523oneController: TextEditingController(),
        group2525oneController: TextEditingController(),
        group2527oneController: TextEditingController(),
        group2529oneController: TextEditingController(),
        mysavedcardsController: TextEditingController(),
        helpguideoneController: TextEditingController(),
        group2535oneController: TextEditingController(),
        aboutoneController: TextEditingController(),
        group2539oneController: TextEditingController(),
        cookiesoneController: TextEditingController(),
      ),
    );
  }
}
