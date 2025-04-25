import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../../../data/models/selectionPopupModel/selection_popup_model.dart';
import 'expandablelista_item_model.dart';
import 'expandablelistd_item_model.dart';

/// This class defines the variables used in the [real_estate_360_real_estate_index_screen],
/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable
class RealEstate360RealEstateIndexModel extends Equatable {
  RealEstate360RealEstateIndexModel(
      {this.dropdownItemList = const [],
        this.dropdownItemList1 = const [],
        this.dropdownItemList2 = const [],
        this.dropdownItemList3 = const [],
        this.dropdownItemList4 = const [],
        this.expandablelistaItemList = const [],
        this.expandablelistdItemList = const []});

  List<SelectionPopupModel> dropdownItemList;

  List<SelectionPopupModel> dropdownItemList1;

  List<SelectionPopupModel> dropdownItemList2;

  List<SelectionPopupModel> dropdownItemList3;

  List<SelectionPopupModel> dropdownItemList4;

  List<ExpandablelistaItemModel> expandablelistaItemList;

  List<ExpandablelistdItemModel> expandablelistdItemList;

  RealEstate360RealEstateIndexModel copyWith({
    List<SelectionPopupModel>? dropdownItemList,
    List<SelectionPopupModel>? dropdownItemList1,
    List<SelectionPopupModel>? dropdownItemList2,
    List<SelectionPopupModel>? dropdownItemList3,
    List<SelectionPopupModel>? dropdownItemList4,
    List<ExpandablelistaItemModel>? expandablelistaItemList,
    List<ExpandablelistdItemModel>? expandablelistdItemList,
  }) {
    return RealEstate360RealEstateIndexModel(
      dropdownItemList: dropdownItemList ?? this.dropdownItemList,
      dropdownItemList1: dropdownItemList1 ?? this.dropdownItemList1,
      dropdownItemList2: dropdownItemList2 ?? this.dropdownItemList2,
      dropdownItemList3: dropdownItemList3 ?? this.dropdownItemList3,
      dropdownItemList4: dropdownItemList4 ?? this.dropdownItemList4,
      expandablelistaItemList:
      expandablelistaItemList ?? this.expandablelistaItemList,
      expandablelistdItemList:
      expandablelistdItemList ?? this.expandablelistdItemList,
    );
  }

  @override
  List<Object?> get props => [
    dropdownItemList,
    dropdownItemList1,
    dropdownItemList2,
    dropdownItemList3,
    dropdownItemList4,
    expandablelistaItemList,
    expandablelistdItemList
  ];
}
