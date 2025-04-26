import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/yepy_model.dart';
import '../models/yepy_three_item_model.dart';
part 'yepy_event.dart';
part 'yepy_state.dart';

/// A bloc that manages the state of a Yepy according to the event that is dispatched to it.
class YepyBloc extends Bloc<YepyEvent, YepyState> {
  YepyBloc(YepyState initialState) : super(initialState) {
    on<YepyInitialEvent>(_onInitialize);
  }

  _onInitialize(
      YepyInitialEvent event,
      Emitter<YepyState> emit,
      ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
      ),
    );
    emit(
      state.copyWith(
        yepyModelObj: state.yepyModelObj?.copyWith(
          yepyThreeItemList: fillYepyThreeItemList(),
        ),
      ),
    );
  }

  List<YepyThreeItemModel> fillYepyThreeItemList() {
    return [
      YepyThreeItemModel(
          highettCommon: ImageConstant.imgRectangle9,
          highettcommon1: "lbl_highett_common".tr,
          tlCounter: "lbl_1_395_000_tl".tr,
          timeZone: "msg_avenue_west_side".tr),
      YepyThreeItemModel(
          highettCommon: ImageConstant.imgLuxuriousCarP,
          highettcommon1: "lbl_mustang".tr,
          tlCounter: "lbl_2_000_000_tl".tr,
          timeZone: "msg_avenue_west_side".tr),
      YepyThreeItemModel(
          highettCommon: ImageConstant.imgRectangle9104x158,
          highettcommon1: "lbl_lorem_house".tr,
          tlCounter: "lbl_1_395_000_tl".tr,
          timeZone: "msg_avenue_west_side".tr),
      YepyThreeItemModel(
          highettCommon: ImageConstant.imgRectangle91,
          highettcommon1: "lbl_lorem_house".tr,
          tlCounter: "lbl_1_395_000_tl".tr,
          timeZone: "msg_avenue_west_side".tr),
      YepyThreeItemModel(
          highettCommon: ImageConstant.imgRectangle92,
          highettcommon1: "lbl_lorem_house".tr,
          tlCounter: "lbl_1_395_000_tl".tr,
          timeZone: "msg_avenue_west_side".tr),
      YepyThreeItemModel(
          highettCommon: ImageConstant.imgRectangle92,
          highettcommon1: "lbl_lorem_house".tr,
          tlCounter: "lbl_1_395_000_tl".tr,
          timeZone: "msg_avenue_west_side".tr)
    ];
  }
}
