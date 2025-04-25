import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/real_estate_360_real_estate_expertise_model.dart';
part 'real_estate_360_real_estate_expertise_event.dart';
part 'real_estate_360_real_estate_expertise_state.dart';

/// A bloc that manages the state of a RealEstate360RealEstateExpertise according to the event that is dispatched to it.
class RealEstate360RealEstateExpertiseBloc extends Bloc<
    RealEstate360RealEstateExpertiseEvent,
    RealEstate360RealEstateExpertiseState> {
  RealEstate360RealEstateExpertiseBloc(
      RealEstate360RealEstateExpertiseState initialState)
      : super(initialState) {
    on<RealEstate360RealEstateExpertiseInitialEvent>(_onInitialize);
  }

  _onInitialize(
      RealEstate360RealEstateExpertiseInitialEvent event,
      Emitter<RealEstate360RealEstateExpertiseState> emit,
      ) async {
    emit(
      state.copyWith(
        nametwoController: TextEditingController(),
        surnametwoController: TextEditingController(),
        mobileNumberController: TextEditingController(),
        emailController: TextEditingController(),
      ),
    );
    emit(
      state.copyWith(
        realEstate360RealEstateExpertiseModelObj:
        state.realEstate360RealEstateExpertiseModelObj?.copyWith(
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
