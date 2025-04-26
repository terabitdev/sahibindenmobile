import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/test_user_three_model.dart';
part 'test_user_three_event.dart';
part 'test_user_three_state.dart';

/// A bloc that manages the state of a TestUserThree according to the event that is dispatched to it.
class TestUserThreeBloc extends Bloc<TestUserThreeEvent, TestUserThreeState> {
  TestUserThreeBloc(TestUserThreeState initialState) : super(initialState) {
    on<TestUserThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
      TestUserThreeInitialEvent event,
      Emitter<TestUserThreeState> emit,
      ) async {
    emit(
      state.copyWith(
        whatsonairController: TextEditingController(),
        group2416oneController: TextEditingController(),
        messageController: TextEditingController(),
        messageoneController: TextEditingController(),
        informationoneController: TextEditingController(),
        specialadsforController: TextEditingController(),
        favoriteController: TextEditingController(),
        searchController: TextEditingController(),
        favorite1Controller: TextEditingController(),
        group2453oneController: TextEditingController(),
        group2457oneController: TextEditingController(),
        group2461oneController: TextEditingController(),
        group2463oneController: TextEditingController(),
        mysavedcardsController: TextEditingController(),
        helpguideoneController: TextEditingController(),
        group2474oneController: TextEditingController(),
        aboutoneController: TextEditingController(),
        group2485oneController: TextEditingController(),
        cookiesoneController: TextEditingController(),
      ),
    );
  }
}
