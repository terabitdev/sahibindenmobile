import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/my_delivery_billing_address_one_model.dart';
part 'my_delivery_billing_address_one_event.dart';
part 'my_delivery_billing_address_one_state.dart';

/// A bloc that manages the state of a MyDeliveryBillingAddressOne according to the event that is dispatched to it.
class MyDeliveryBillingAddressOneBloc extends Bloc<
    MyDeliveryBillingAddressOneEvent, MyDeliveryBillingAddressOneState> {
  MyDeliveryBillingAddressOneBloc(MyDeliveryBillingAddressOneState initialState)
      : super(initialState) {
    on<MyDeliveryBillingAddressOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
      MyDeliveryBillingAddressOneInitialEvent event,
      Emitter<MyDeliveryBillingAddressOneState> emit,
      ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
      ),
    );
  }
}
