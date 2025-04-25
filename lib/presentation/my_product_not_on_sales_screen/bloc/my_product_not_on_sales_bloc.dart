import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/gridhighett_item_model.dart';
import '../models/my_product_not_on_sales_model.dart';
part 'my_product_not_on_sales_event.dart';
part 'my_product_not_on_sales_state.dart';

/// A bloc that manages the state of a MyProductNotOnSales according to the event that is dispatched to it.
class MyProductNotOnSalesBloc
    extends Bloc<MyProductNotOnSalesEvent, MyProductNotOnSalesState> {
  MyProductNotOnSalesBloc(MyProductNotOnSalesState initialState)
      : super(initialState) {
    on<MyProductNotOnSalesInitialEvent>(_onInitialize);
  }

  _onInitialize(
      MyProductNotOnSalesInitialEvent event,
      Emitter<MyProductNotOnSalesState> emit,
      ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
      ),
    );
    emit(
      state.copyWith(
        myProductNotOnSalesModelObj:
        state.myProductNotOnSalesModelObj?.copyWith(
          gridhighettItemList: fillGridhighettItemList(),
        ),
      ),
    );
  }

  List<GridhighettItemModel> fillGridhighettItemList() {
    return [
      GridhighettItemModel(
          highettCommon: ImageConstant.imgRectangle9,
          highettcommon1: "lbl_highett_common".tr,
          tlCounter: "lbl_1_395_000_tl".tr,
          timeZone: "msg_avenue_west_side".tr),
      GridhighettItemModel(
          highettCommon: ImageConstant.imgLuxuriousCarP,
          highettcommon1: "lbl_mustang".tr,
          tlCounter: "lbl_2_000_000_tl".tr,
          timeZone: "msg_avenue_west_side".tr),
      GridhighettItemModel(
          highettCommon: ImageConstant.imgRectangle9104x158,
          highettcommon1: "lbl_lorem_house".tr,
          tlCounter: "lbl_1_395_000_tl".tr,
          timeZone: "msg_avenue_west_side".tr),
      GridhighettItemModel(
          highettCommon: ImageConstant.imgRectangle91,
          highettcommon1: "lbl_lorem_house".tr,
          tlCounter: "lbl_1_395_000_tl".tr,
          timeZone: "msg_avenue_west_side".tr),
      GridhighettItemModel(
          highettCommon: ImageConstant.imgRectangle92,
          highettcommon1: "lbl_lorem_house".tr,
          tlCounter: "lbl_1_395_000_tl".tr,
          timeZone: "msg_avenue_west_side".tr),
      GridhighettItemModel(
          highettCommon: ImageConstant.imgRectangle92,
          highettcommon1: "lbl_lorem_house".tr,
          tlCounter: "lbl_1_395_000_tl".tr,
          timeZone: "msg_avenue_west_side".tr)
    ];
  }
}
