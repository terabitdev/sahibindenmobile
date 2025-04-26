import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/test_user_one_model.dart';
part 'test_user_one_event.dart';
part 'test_user_one_state.dart';

/// A bloc that manages the state of a TestUserOne according to the event that is dispatched to it.
class TestUserOneBloc extends Bloc<TestUserOneEvent, TestUserOneState> {
  TestUserOneBloc(TestUserOneState initialState) : super(initialState) {
    on<TestUserOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
      TestUserOneInitialEvent event,
      Emitter<TestUserOneState> emit,
      ) async {
    emit(
      state.copyWith(
        whatsonairController: TextEditingController(),
        group2332oneController: TextEditingController(),
        messageController: TextEditingController(),
        messageoneController: TextEditingController(),
        informationoneController: TextEditingController(),
        specialadsforController: TextEditingController(),
        favoriteController: TextEditingController(),
        searchController: TextEditingController(),
        favorite1Controller: TextEditingController(),
        group2355oneController: TextEditingController(),
        group2358oneController: TextEditingController(),
        group2361oneController: TextEditingController(),
        group2428oneController: TextEditingController(),
        mysavedcardsController: TextEditingController(),
        helpguideoneController: TextEditingController(),
        group2446oneController: TextEditingController(),
        aboutoneController: TextEditingController(),
        group2456oneController: TextEditingController(),
        cookiesoneController: TextEditingController(),
      ),
    );
  }
}
