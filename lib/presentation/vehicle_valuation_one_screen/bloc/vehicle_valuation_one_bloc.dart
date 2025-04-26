import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/vehicle_valuation_one_model.dart';
part 'vehicle_valuation_one_event.dart';
part 'vehicle_valuation_one_state.dart';

/// A bloc that manages the state of a VehicleValuationOne according to the event that is dispatched to it.
class VehicleValuationOneBloc
    extends Bloc<VehicleValuationOneEvent, VehicleValuationOneState> {
  VehicleValuationOneBloc(VehicleValuationOneState initialState)
      : super(initialState) {
    on<VehicleValuationOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
      VehicleValuationOneInitialEvent event,
      Emitter<VehicleValuationOneState> emit,
      ) async {
    emit(
      state.copyWith(
        vehicleValuationOneModelObj:
        state.vehicleValuationOneModelObj?.copyWith(
          dropdownItemList: fillDropdownItemList(),
          dropdownItemList1: fillDropdownItemList1(),
          dropdownItemList2: fillDropdownItemList2(),
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
}
