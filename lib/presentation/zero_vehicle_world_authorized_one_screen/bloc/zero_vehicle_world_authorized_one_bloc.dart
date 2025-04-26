import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/zero_vehicle_world_authorized_one_model.dart';
part 'zero_vehicle_world_authorized_one_event.dart';
part 'zero_vehicle_world_authorized_one_state.dart';

/// A bloc that manages the state of a ZeroVehicleWorldAuthorizedOne according to the event that is dispatched to it.
class ZeroVehicleWorldAuthorizedOneBloc extends Bloc<
    ZeroVehicleWorldAuthorizedOneEvent, ZeroVehicleWorldAuthorizedOneState> {
  ZeroVehicleWorldAuthorizedOneBloc(
      ZeroVehicleWorldAuthorizedOneState initialState)
      : super(initialState) {
    on<ZeroVehicleWorldAuthorizedOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
      ZeroVehicleWorldAuthorizedOneInitialEvent event,
      Emitter<ZeroVehicleWorldAuthorizedOneState> emit,
      ) async {
    emit(
      state.copyWith(
        zeroVehicleWorldAuthorizedOneModelObj:
        state.zeroVehicleWorldAuthorizedOneModelObj?.copyWith(
          dropdownItemList: fillDropdownItemList(),
          dropdownItemList1: fillDropdownItemList1(),
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
}
