import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/my_bank_information_one_model.dart';
part 'my_bank_information_one_event.dart';
part 'my_bank_information_one_state.dart';

/// A bloc that manages the state of a MyBankInformationOne according to the event that is dispatched to it.
class MyBankInformationOneBloc
    extends Bloc<MyBankInformationOneEvent, MyBankInformationOneState> {
  MyBankInformationOneBloc(MyBankInformationOneState initialState)
      : super(initialState) {
    on<MyBankInformationOneInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _onInitialize(
      MyBankInformationOneInitialEvent event,
      Emitter<MyBankInformationOneState> emit,
      ) async {
    emit(
      state.copyWith(
        formtextfillController: TextEditingController(),
        formtextfill1Controller: TextEditingController(),
        surnameController: TextEditingController(),
        addressController: TextEditingController(),
        nameController: TextEditingController(),
        saveasmycurrent: false,
      ),
    );
  }

  _changeCheckBox(
      ChangeCheckBoxEvent event,
      Emitter<MyBankInformationOneState> emit,
      ) {
    emit(state.copyWith(
      saveasmycurrent: event.value,
    ));
  }
}
