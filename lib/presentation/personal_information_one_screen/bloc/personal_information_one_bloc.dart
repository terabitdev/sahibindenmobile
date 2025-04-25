import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/personal_information_one_model.dart';
part 'personal_information_one_event.dart';
part 'personal_information_one_state.dart';

/// A bloc that manages the state of a PersonalInformationOne according to the event that is dispatched to it.
class PersonalInformationOneBloc
    extends Bloc<PersonalInformationOneEvent, PersonalInformationOneState> {
  PersonalInformationOneBloc(PersonalInformationOneState initialState)
      : super(initialState) {
    on<PersonalInformationOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
      PersonalInformationOneInitialEvent event,
      Emitter<PersonalInformationOneState> emit,
      ) async {
    emit(
      state.copyWith(
        userNameController: TextEditingController(),
        nametwoController: TextEditingController(),
        surnametwoController: TextEditingController(),
        phoneController: TextEditingController(),
        phoneoneController: TextEditingController(),
      ),
    );
  }
}
