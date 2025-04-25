import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/my_delivery_billing_address_four_model.dart';
part 'my_delivery_billing_address_four_event.dart';
part 'my_delivery_billing_address_four_state.dart';

/// A bloc that manages the state of a MyDeliveryBillingAddressFour according to the event that is dispatched to it.
class MyDeliveryBillingAddressFourBloc extends Bloc<
    MyDeliveryBillingAddressFourEvent, MyDeliveryBillingAddressFourState> {
  MyDeliveryBillingAddressFourBloc(
      MyDeliveryBillingAddressFourState initialState)
      : super(initialState) {
    on<MyDeliveryBillingAddressFourInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
  }

  _onInitialize(
      MyDeliveryBillingAddressFourInitialEvent event,
      Emitter<MyDeliveryBillingAddressFourState> emit,
      ) async {
    emit(
      state.copyWith(
        nameoneController: TextEditingController(),
        namethreeController: TextEditingController(),
        surnametwoController: TextEditingController(),
        addresstwoController: TextEditingController(),
        phoneController: TextEditingController(),
        individualone: false,
        institutional: false,
      ),
    );
    emit(
      state.copyWith(
        myDeliveryBillingAddressFourModelObj:
        state.myDeliveryBillingAddressFourModelObj?.copyWith(
          dropdownItemList: fillDropdownItemList(),
          dropdownItemList1: fillDropdownItemList1(),
          dropdownItemList2: fillDropdownItemList2(),
          dropdownItemList3: fillDropdownItemList3(),
        ),
      ),
    );
  }

  _changeCheckBox(
      ChangeCheckBoxEvent event,
      Emitter<MyDeliveryBillingAddressFourState> emit,
      ) {
    emit(state.copyWith(
      individualone: event.value,
    ));
  }

  _changeCheckBox1(
      ChangeCheckBox1Event event,
      Emitter<MyDeliveryBillingAddressFourState> emit,
      ) {
    emit(state.copyWith(
      institutional: event.value,
    ));
  }

  List<SelectionPopupModel> fillDropdownItemList() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList1() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList2() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }

  List<SelectionPopupModel> fillDropdownItemList3() {
    return [
      SelectionPopupModel(
        id: 1,
        title: "Item One",
        isSelected: true,
      ),
      SelectionPopupModel(
        id: 2,
        title: "Item Two",
      ),
      SelectionPopupModel(
        id: 3,
        title: "Item Three",
      )
    ];
  }
}
