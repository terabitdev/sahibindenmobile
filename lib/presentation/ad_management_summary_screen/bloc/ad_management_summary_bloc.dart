import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/ad_management_summary_model.dart';
import '../models/listnumberof_item_model.dart';

part 'ad_management_summary_event.dart';
part 'ad_management_summary_state.dart';

/// A bloc that manages the state of an AdManagementSummary according to the event that is dispatched to it.
class AdManagementSummaryBloc
    extends Bloc<AdManagementSummaryEvent, AdManagementSummaryState> {

  AdManagementSummaryBloc(AdManagementSummaryState initialState)
      : super(initialState) {
    on<AdManagementSummaryInitialEvent>(_onInitialize);
  }

  _onInitialize(
      AdManagementSummaryInitialEvent event,
      Emitter<AdManagementSummaryState> emit,
      ) async {
    emit(
      state.copyWith(
        adManagementSummaryModelObj: state.adManagementSummaryModelObj?.copyWith(
          listnumberofItemList: fillListnumberofItemList(),
        ),
      ),
    );
  }

  List<ListnumberofItemModel> fillListnumberofItemList() {
    return [
      ListnumberofItemModel(
        image: ImageConstant.imgFramePrimary50x50,
        numberof: "msg_number_of_adver".tr,
        zero: "lbl_0".tr,
      ),
      ListnumberofItemModel(
        image: ImageConstant.imgFrame50x50,
        numberof: "msg_number_of_ads_you".tr,
        zero: "lbl_0".tr,
      ),
      ListnumberofItemModel(
        image: ImageConstant.imgFrame1,
        numberof: "msg_number_of_messages".tr,
        zero: "lbl_0".tr,
      ),
    ];
  }
}
