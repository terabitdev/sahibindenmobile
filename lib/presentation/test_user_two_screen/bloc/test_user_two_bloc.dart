import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/test_user_two_model.dart';
part 'test_user_two_event.dart';
part 'test_user_two_state.dart';

/// A bloc that manages the state of a TestUserTwo according to the event that is dispatched to it.
class TestUserTwoBloc extends Bloc<TestUserTwoEvent, TestUserTwoState> {
  TestUserTwoBloc(TestUserTwoState initialState) : super(initialState) {
    on<TestUserTwoInitialEvent>(_onInitialize);
  }

  _onInitialize(
      TestUserTwoInitialEvent event,
      Emitter<TestUserTwoState> emit,
      ) async {
    emit(
      state.copyWith(
        whatsonairController: TextEditingController(),
        group2404oneController: TextEditingController(),
        messageController: TextEditingController(),
        messageoneController: TextEditingController(),
        informationoneController: TextEditingController(),
        specialadsforController: TextEditingController(),
        favoriteController: TextEditingController(),
        searchController: TextEditingController(),
        favorite1Controller: TextEditingController(),
        group2479oneController: TextEditingController(),
        group2484oneController: TextEditingController(),
        group2488oneController: TextEditingController(),
        group2491oneController: TextEditingController(),
        mysavedcardsController: TextEditingController(),
        helpguideoneController: TextEditingController(),
        group2497oneController: TextEditingController(),
        aboutoneController: TextEditingController(),
        group2501oneController: TextEditingController(),
        cookiesoneController: TextEditingController(),
      ),
    );
  }
}
