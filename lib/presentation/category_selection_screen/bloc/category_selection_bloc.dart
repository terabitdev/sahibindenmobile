import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/category_selection_model.dart';
import '../models/listall_real_item_model.dart';
import '../models/listpaint_item_model.dart';
part 'category_selection_event.dart';
part 'category_selection_state.dart';

/// A bloc that manages the state of a CategorySelection according to the event that is dispatched to it.
class CategorySelectionBloc
    extends Bloc<CategorySelectionEvent, CategorySelectionState> {
  CategorySelectionBloc(CategorySelectionState initialState)
      : super(initialState) {
    on<CategorySelectionInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CategorySelectionInitialEvent event,
    Emitter<CategorySelectionState> emit,
  ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
      ),
    );
    emit(
      state.copyWith(
        categorySelectionModelObj: state.categorySelectionModelObj?.copyWith(
          listpaintItemList: fillListpaintItemList(),
          listallRealItemList: fillListallRealItemList(),
        ),
      ),
    );
  }

  List<ListpaintItemModel> fillListpaintItemList() {
    return [
      ListpaintItemModel(
          paintWhitewash: ImageConstant.imgHome,
          paintwhitewash1: "msg_paint_whitewash".tr,
          oneMillionSevenHundredEightyNineThousandThreeHundredFourteen:
              "lbl_1_789_314".tr),
      ListpaintItemModel(
          paintWhitewash: ImageConstant.imgFloatingIcon,
          paintwhitewash1: "msg_domestic_transportation".tr,
          oneMillionSevenHundredEightyNineThousandThreeHundredFourteen:
              "lbl_1_789_314".tr),
      ListpaintItemModel(
          paintWhitewash: ImageConstant.imgTelevision,
          paintwhitewash1: "lbl_master_tiles".tr,
          oneMillionSevenHundredEightyNineThousandThreeHundredFourteen:
              "lbl_1_789_314".tr),
      ListpaintItemModel(
          paintWhitewash: ImageConstant.imgFrame,
          paintwhitewash1: "msg_kitchen_bathroom".tr,
          oneMillionSevenHundredEightyNineThousandThreeHundredFourteen:
              "lbl_1_789_314".tr),
      ListpaintItemModel(
          paintWhitewash: ImageConstant.imgTelevision,
          paintwhitewash1: "lbl_wall_painting".tr,
          oneMillionSevenHundredEightyNineThousandThreeHundredFourteen:
              "lbl_1_789_314".tr),
      ListpaintItemModel(
          paintWhitewash: ImageConstant.imgTelevision,
          paintwhitewash1: "lbl_appliances".tr,
          oneMillionSevenHundredEightyNineThousandThreeHundredFourteen:
              "lbl_1_789_314".tr),
      ListpaintItemModel(
          paintWhitewash: ImageConstant.imgTelevision,
          paintwhitewash1: "msg_house_improvement".tr,
          oneMillionSevenHundredEightyNineThousandThreeHundredFourteen:
              "lbl_1_789_314".tr),
      ListpaintItemModel(
          paintWhitewash: ImageConstant.imgTelevision,
          paintwhitewash1: "msg_small_appliances".tr,
          oneMillionSevenHundredEightyNineThousandThreeHundredFourteen:
              "lbl_1_789_314".tr),
      ListpaintItemModel(
          paintWhitewash: ImageConstant.imgTelevision,
          paintwhitewash1: "lbl_furniture".tr,
          oneMillionSevenHundredEightyNineThousandThreeHundredFourteen:
              "lbl_1_789_314".tr),
      ListpaintItemModel(
          paintWhitewash: ImageConstant.imgTelevision,
          paintwhitewash1: "msg_security_systems".tr,
          oneMillionSevenHundredEightyNineThousandThreeHundredFourteen:
              "lbl_1_789_314".tr)
    ];
  }

  List<ListallRealItemModel> fillListallRealItemList() {
    return [
      ListallRealItemModel(
          allRealEstate: ImageConstant.imgHome,
          allrealestate1: "msg_all_real_estate".tr,
          oneMillionSevenHundredEightyNineThousandThreeHundredFourteen:
              "lbl_1_789_314".tr),
      ListallRealItemModel(
          allRealEstate: ImageConstant.imgFloatingIcon,
          allrealestate1: "lbl_residential".tr,
          oneMillionSevenHundredEightyNineThousandThreeHundredFourteen:
              "lbl_1_789_314".tr),
      ListallRealItemModel(
          allRealEstate: ImageConstant.imgTelevision,
          allrealestate1: "lbl_timeshares".tr,
          oneMillionSevenHundredEightyNineThousandThreeHundredFourteen:
              "lbl_1_789_314".tr),
      ListallRealItemModel(
          allRealEstate: ImageConstant.imgFrame,
          allrealestate1: "lbl_land".tr,
          oneMillionSevenHundredEightyNineThousandThreeHundredFourteen:
              "lbl_1_789_314".tr),
      ListallRealItemModel(
          allRealEstate: ImageConstant.imgTelevision,
          allrealestate1: "msg_housing_developments".tr,
          oneMillionSevenHundredEightyNineThousandThreeHundredFourteen:
              "lbl_1_789_314".tr),
      ListallRealItemModel(
          allRealEstate: ImageConstant.imgTelevision,
          allrealestate1: "lbl_buildings".tr,
          oneMillionSevenHundredEightyNineThousandThreeHundredFourteen:
              "lbl_1_789_314".tr),
      ListallRealItemModel(
          allRealEstate: ImageConstant.imgTelevision,
          allrealestate1: "msg_tourism_facilities".tr,
          oneMillionSevenHundredEightyNineThousandThreeHundredFourteen:
              "lbl_1_789_314".tr)
    ];
  }
}
