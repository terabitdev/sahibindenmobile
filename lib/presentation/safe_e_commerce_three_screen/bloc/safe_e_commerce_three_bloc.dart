import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/safe_e_commerce_three_model.dart';
part 'safe_e_commerce_three_event.dart';
part 'safe_e_commerce_three_state.dart';

/// A bloc that manages the state of a SafeECommerceThree according to the event that is dispatched to it.
class SafeECommerceThreeBloc
    extends Bloc<SafeECommerceThreeEvent, SafeECommerceThreeState> {
  SafeECommerceThreeBloc(SafeECommerceThreeState initialState)
      : super(initialState) {
    on<SafeECommerceThreeInitialEvent>(_onInitialize);
  }

  _onInitialize(
      SafeECommerceThreeInitialEvent event,
      Emitter<SafeECommerceThreeState> emit,
      ) async {
    emit(
      state.copyWith(
        safeECommerceThreeModelObj: state.safeECommerceThreeModelObj?.copyWith(
          dropdownItemList: fillDropdownItemList(),
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
}
