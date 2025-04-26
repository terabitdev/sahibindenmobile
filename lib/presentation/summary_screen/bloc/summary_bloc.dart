import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/summary_model.dart';
import '../models/summary_three_item_model.dart';
part 'summary_event.dart';
part 'summary_state.dart';

/// A bloc that manages the state of a Summary according to the event that is dispatched to it.
class SummaryBloc extends Bloc<SummaryEvent, SummaryState> {
  SummaryBloc(SummaryState initialState) : super(initialState) {
    on<SummaryInitialEvent>(_onInitialize);
  }

  _onInitialize(
      SummaryInitialEvent event,
      Emitter<SummaryState> emit,
      ) async {
    emit(
      state.copyWith(
        summaryModelObj: state.summaryModelObj?.copyWith(
          summaryThreeItemList: fillSummaryThreeItemList(),
        ),
      ),
    );
  }

  List<SummaryThreeItemModel> fillSummaryThreeItemList() {
    return [
      SummaryThreeItemModel(
          buynow: "lbl_buy_now".tr, description: "msg_by_doing_business".tr),
      SummaryThreeItemModel(
          buynow: "msg_what_is_secure_e_commerce".tr,
          description: "msg_with_sahibinden_com".tr)
    ];
  }
}
