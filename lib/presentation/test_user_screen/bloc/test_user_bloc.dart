import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/test_user_model.dart';
part 'test_user_event.dart';
part 'test_user_state.dart';

/// A bloc that manages the state of a TestUser according to the event that is dispatched to it.
class TestUserBloc extends Bloc<TestUserEvent, TestUserState> {
  TestUserBloc(TestUserState initialState) : super(initialState) {
    on<TestUserInitialEvent>(_onInitialize);
  }

  _onInitialize(
      TestUserInitialEvent event,
      Emitter<TestUserState> emit,
      ) async {
    emit(
      state.copyWith(
        whatsonairController: TextEditingController(),
        group2306oneController: TextEditingController(),
        messageController: TextEditingController(),
        messageoneController: TextEditingController(),
        informationoneController: TextEditingController(),
        specialadsforController: TextEditingController(),
        favoriteController: TextEditingController(),
        searchController: TextEditingController(),
        favorite1Controller: TextEditingController(),
        group2354oneController: TextEditingController(),
        group2359oneController: TextEditingController(),
        group2434oneController: TextEditingController(),
        group2439oneController: TextEditingController(),
        mysavedcardsController: TextEditingController(),
        helpguideoneController: TextEditingController(),
        group2469oneController: TextEditingController(),
        aboutoneController: TextEditingController(),
        group2477oneController: TextEditingController(),
        cookiesoneController: TextEditingController(),
      ),
    );
  }
}
