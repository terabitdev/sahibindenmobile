import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../models/chipviewistanbu_item_model.dart';
import '../models/expandablelista_item_model.dart';
import '../models/expandablelistd_item_model.dart';
import '../models/listkadikoy_item_model.dart';
import '../models/listview_item_model.dart';
import '../models/real_estate_360_real_estate_index_model.dart';
import '../models/realestate_two_tab_model.dart';
part 'real_estate_360_real_estate_index_event.dart';
part 'real_estate_360_real_estate_index_state.dart';

/// A bloc that manages the state of a RealEstate360RealEstateIndex according to the event that is dispatched to it.
class RealEstate360RealEstateIndexBloc extends Bloc<
    RealEstate360RealEstateIndexEvent, RealEstate360RealEstateIndexState> {
  RealEstate360RealEstateIndexBloc(
      RealEstate360RealEstateIndexState initialState)
      : super(initialState) {
    on<RealEstate360RealEstateIndexInitialEvent>(_onInitialize);
    on<UpdateExpandableListEvent>(_updateExpandableList);
    on<UpdateExpandableList1Event>(_updateExpandableList1);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
      RealEstate360RealEstateIndexInitialEvent event,
      Emitter<RealEstate360RealEstateIndexState> emit,
      ) async {
    emit(
      state.copyWith(
        realEstate360RealEstateIndexModelObj:
        state.realEstate360RealEstateIndexModelObj?.copyWith(
          dropdownItemList: fillDropdownItemList(),
          dropdownItemList1: fillDropdownItemList1(),
          dropdownItemList2: fillDropdownItemList2(),
          dropdownItemList3: fillDropdownItemList3(),
          dropdownItemList4: fillDropdownItemList4(),
        ),
        realestateTwoTabModelObj: state.realestateTwoTabModelObj?.copyWith(
          chipviewistanbuItemList: fillChipviewistanbuItemList(),
          listviewItemList: fillListviewItemList(),
          listkadikoyItemList: fillListkadikoyItemList(),
        ),
      ),
    );
  }

  _updateExpandableList(
      UpdateExpandableListEvent event,
      Emitter<RealEstate360RealEstateIndexState> emit,
      ) {
    List<ExpandablelistaItemModel> newList =
    List<ExpandablelistaItemModel>.from(state
        .realEstate360RealEstateIndexModelObj!.expandablelistaItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(
      state.copyWith(
        realEstate360RealEstateIndexModelObj: state
            .realEstate360RealEstateIndexModelObj
            ?.copyWith(expandablelistaItemList: newList),
      ),
    );
  }

  _updateExpandableList1(
      UpdateExpandableList1Event event,
      Emitter<RealEstate360RealEstateIndexState> emit,
      ) {
    List<ExpandablelistdItemModel> newList =
    List<ExpandablelistdItemModel>.from(state
        .realEstate360RealEstateIndexModelObj!.expandablelistdItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(
      state.copyWith(
        realEstate360RealEstateIndexModelObj: state
            .realEstate360RealEstateIndexModelObj
            ?.copyWith(expandablelistdItemList: newList),
      ),
    );
  }

  _updateChipView(
      UpdateChipViewEvent event,
      Emitter<RealEstate360RealEstateIndexState> emit,
      ) {
    List<ChipviewistanbuItemModel> newList =
    List<ChipviewistanbuItemModel>.from(
        state.realestateTwoTabModelObj!.chipviewistanbuItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(
      state.copyWith(
        realestateTwoTabModelObj: state.realestateTwoTabModelObj
            ?.copyWith(chipviewistanbuItemList: newList),
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

  List<SelectionPopupModel> fillDropdownItemList4() {
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

  List<ChipviewistanbuItemModel> fillChipviewistanbuItemList() {
    return [
      ChipviewistanbuItemModel(istanbulOne: "lbl_istanbul".tr),
      ChipviewistanbuItemModel(istanbulOne: "lbl_ankara".tr),
      ChipviewistanbuItemModel(istanbulOne: "lbl_izmir".tr)
    ];
  }

  List<ListviewItemModel> fillListviewItemList() {
    return [
      ListviewItemModel(kadikoy: "lbl_kadikoy".tr, zero: "lbl_48_0".tr),
      ListviewItemModel(kadikoy: "lbl_kadikoy".tr, zero: "lbl_48_0".tr),
      ListviewItemModel(kadikoy: "lbl_kadikoy".tr, zero: "lbl_48_0".tr),
      ListviewItemModel(kadikoy: "lbl_kadikoy".tr, zero: "lbl_48_0".tr),
      ListviewItemModel(kadikoy: "lbl_kadikoy".tr, zero: "lbl_48_0".tr)
    ];
  }

  List<ListkadikoyItemModel> fillListkadikoyItemList() {
    return [
      ListkadikoyItemModel(kadikoy: "lbl_kadikoy".tr, zero: "lbl_48_0".tr),
      ListkadikoyItemModel(kadikoy: "lbl_kadikoy".tr, zero: "lbl_48_0".tr),
      ListkadikoyItemModel(kadikoy: "lbl_kadikoy".tr, zero: "lbl_48_0".tr)
    ];
  }
}
