import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/my_bank_information_model.dart';
part 'my_bank_information_event.dart';
part 'my_bank_information_state.dart';

/// A bloc that manages the state of a MyBankInformation according to the event that is dispatched to it.
class MyBankInformationBloc
    extends Bloc<MyBankInformationEvent, MyBankInformationState> {
  MyBankInformationBloc(MyBankInformationState initialState)
      : super(initialState) {
    on<MyBankInformationInitialEvent>(_onInitialize);
  }

  _onInitialize(
      MyBankInformationInitialEvent event,
      Emitter<MyBankInformationState> emit,
      ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
      ),
    );
  }
}
