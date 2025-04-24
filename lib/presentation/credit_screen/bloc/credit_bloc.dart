import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/credit_model.dart';
import '../models/credit_three_item_model.dart';
import '../models/creditconsumer_tab_model.dart';
part 'credit_event.dart';
part 'credit_state.dart';

/// A bloc that manages the state of a Credit according to the event that is dispatched to it.
class CreditBloc extends Bloc<CreditEvent, CreditState> {
  CreditBloc(CreditState initialState) : super(initialState) {
    on<CreditInitialEvent>(_onInitialize);
  }

  _onInitialize(
      CreditInitialEvent event,
      Emitter<CreditState> emit,
      ) async {
    emit(
      state.copyWith(
        amountController: TextEditingController(),
        maturityoneController: TextEditingController(),
      ),
    );
    emit(
      state.copyWith(
        creditconsumerTabModelObj: state.creditconsumerTabModelObj?.copyWith(
          creditThreeItemList: fillCreditThreeItemList(),
        ),
      ),
    );
  }

  List<CreditThreeItemModel> fillCreditThreeItemList() {
    return [
      CreditThreeItemModel(
          whatisa: "msg_what_is_a_consumer".tr,
          aconsumerloan: "msg_a_consumer_loan".tr),
      CreditThreeItemModel(
          whatisa: "msg_what_is_a_vehicle".tr,
          aconsumerloan: "msg_a_vehicle_loan_is".tr)
    ];
  }
}
