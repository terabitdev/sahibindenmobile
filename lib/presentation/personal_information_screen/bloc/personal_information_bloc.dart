import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/personal_information_model.dart';
part 'personal_information_event.dart';
part 'personal_information_state.dart';

/// A bloc that manages the state of a PersonalInformation according to the event that is dispatched to it.
class PersonalInformationBloc
    extends Bloc<PersonalInformationEvent, PersonalInformationState> {
  PersonalInformationBloc(PersonalInformationState initialState)
      : super(initialState) {
    on<PersonalInformationInitialEvent>(_onInitialize);
  }

  _onInitialize(
      PersonalInformationInitialEvent event,
      Emitter<PersonalInformationState> emit,
      ) async {
    emit(
      state.copyWith(
        userNameController: TextEditingController(),
        surnameController: TextEditingController(),
        phoneController: TextEditingController(),
        phoneoneController: TextEditingController(),
      ),
    );
  }
}
