import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/my_head_office_address_model.dart';
part 'my_head_office_address_event.dart';
part 'my_head_office_address_state.dart';

/// A bloc that manages the state of a MyHeadOfficeAddress according to the event that is dispatched to it.
class MyHeadOfficeAddressBloc
    extends Bloc<MyHeadOfficeAddressEvent, MyHeadOfficeAddressState> {
  MyHeadOfficeAddressBloc(MyHeadOfficeAddressState initialState)
      : super(initialState) {
    on<MyHeadOfficeAddressInitialEvent>(_onInitialize);
  }

  _onInitialize(
      MyHeadOfficeAddressInitialEvent event,
      Emitter<MyHeadOfficeAddressState> emit,
      ) async {
    emit(
      state.copyWith(
        surnameController: TextEditingController(),
        phoneController: TextEditingController(),
        formtextfillController: TextEditingController(),
        addresstwoController: TextEditingController(),
      ),
    );
    emit(
      state.copyWith(
        myHeadOfficeAddressModelObj:
        state.myHeadOfficeAddressModelObj?.copyWith(
          dropdownItemList: fillDropdownItemList(),
          dropdownItemList1: fillDropdownItemList1(),
          dropdownItemList2: fillDropdownItemList2(),
          dropdownItemList3: fillDropdownItemList3(),
        ),
      ),
    );
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
