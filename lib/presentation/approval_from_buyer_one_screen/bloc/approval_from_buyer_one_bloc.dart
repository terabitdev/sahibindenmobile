import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/approval_from_buyer_one_model.dart';
part 'approval_from_buyer_one_event.dart';
part 'approval_from_buyer_one_state.dart';

/// A bloc that manages the state of a ApprovalFromBuyerOne according to the event that is dispatched to it.
class ApprovalFromBuyerOneBloc
    extends Bloc<ApprovalFromBuyerOneEvent, ApprovalFromBuyerOneState> {
  ApprovalFromBuyerOneBloc(ApprovalFromBuyerOneState initialState)
      : super(initialState) {
    on<ApprovalFromBuyerOneInitialEvent>(_onInitialize);
  }
  _onInitialize(
    ApprovalFromBuyerOneInitialEvent event,
    Emitter<ApprovalFromBuyerOneState> emit,
  ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
        nameController: TextEditingController(),
        formtextfillController: TextEditingController(),
        formtextfill1Controller: TextEditingController(),
        dateController: TextEditingController(),
      ),
    );
  }
}
