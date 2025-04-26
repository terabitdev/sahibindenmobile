import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/zero_vehicle_world_authorized_model.dart';
part 'zero_vehicle_world_authorized_event.dart';
part 'zero_vehicle_world_authorized_state.dart';

/// A bloc that manages the state of a ZeroVehicleWorldAuthorized according to the event that is dispatched to it.
class ZeroVehicleWorldAuthorizedBloc extends Bloc<
    ZeroVehicleWorldAuthorizedEvent, ZeroVehicleWorldAuthorizedState> {
  ZeroVehicleWorldAuthorizedBloc(ZeroVehicleWorldAuthorizedState initialState)
      : super(initialState) {
    on<ZeroVehicleWorldAuthorizedInitialEvent>(_onInitialize);
  }

  _onInitialize(
      ZeroVehicleWorldAuthorizedInitialEvent event,
      Emitter<ZeroVehicleWorldAuthorizedState> emit,
      ) async {
    emit(
      state.copyWith(
        zeroVehicleWorldAuthorizedModelObj:
        state.zeroVehicleWorldAuthorizedModelObj?.copyWith(
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
