import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/listyellowed_item_model.dart';
import '../models/vehicle_buying_guide_after_purchase_model.dart';
part 'vehicle_buying_guide_after_purchase_event.dart';
part 'vehicle_buying_guide_after_purchase_state.dart';

/// A bloc that manages the state of a VehicleBuyingGuideAfterPurchase according to the event that is dispatched to it.
class VehicleBuyingGuideAfterPurchaseBloc extends Bloc<
    VehicleBuyingGuideAfterPurchaseEvent,
    VehicleBuyingGuideAfterPurchaseState> {
  VehicleBuyingGuideAfterPurchaseBloc(
      VehicleBuyingGuideAfterPurchaseState initialState)
      : super(initialState) {
    on<VehicleBuyingGuideAfterPurchaseInitialEvent>(_onInitialize);
  }

  _onInitialize(
      VehicleBuyingGuideAfterPurchaseInitialEvent event,
      Emitter<VehicleBuyingGuideAfterPurchaseState> emit,
      ) async {
    emit(
      state.copyWith(
        searchController: TextEditingController(),
      ),
    );
    emit(
      state.copyWith(
        vehicleBuyingGuideAfterPurchaseModelObj:
        state.vehicleBuyingGuideAfterPurchaseModelObj?.copyWith(
          listyellowedItemList: fillListyellowedItemList(),
        ),
      ),
    );
  }

  List<ListyellowedItemModel> fillListyellowedItemList() {
    return [
      ListyellowedItemModel(
          yellowed: "msg_yellowed_headlight".tr,
          description: "msg_do_you_know_what".tr,
          more: "lbl_more".tr),
      ListyellowedItemModel(
          yellowed: "msg_how_to_wash_a_car".tr,
          description: "msg_you_have_found_your".tr,
          more: "lbl_more".tr),
      ListyellowedItemModel(
          yellowed: "msg_what_you_need_to".tr,
          description: "msg_if_you_are_wondering".tr,
          more: "lbl_more".tr)
    ];
  }
}
