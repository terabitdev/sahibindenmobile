import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/safe_e_commerce_model.dart';
import '../models/safe_ecommerce_item_model.dart';
import '../models/safe_tab_model.dart';
part 'safe_e_commerce_event.dart';
part 'safe_e_commerce_state.dart';

/// A bloc that manages the state of a SafeECommerce according to the event that is dispatched to it.
class SafeECommerceBloc extends Bloc<SafeECommerceEvent, SafeECommerceState> {
  SafeECommerceBloc(SafeECommerceState initialState) : super(initialState) {
    on<SafeECommerceInitialEvent>(_onInitialize);
  }

  _onInitialize(
      SafeECommerceInitialEvent event,
      Emitter<SafeECommerceState> emit,
      ) async {
    emit(
      state.copyWith(
        safeTabModelObj: state.safeTabModelObj?.copyWith(
          safeEcommerceItemList: fillSafeEcommerceItemList(),
        ),
      ),
    );
  }

  List<SafeEcommerceItemModel> fillSafeEcommerceItemList() {
    return [
      SafeEcommerceItemModel(
          image: ImageConstant.imgHome,
          thingsiexpect: "msg_things_i_expect".tr),
      SafeEcommerceItemModel(
          image: ImageConstant.imgFloatingIcon,
          thingsiexpect: "msg_those_waiting_for".tr),
      SafeEcommerceItemModel(
          image: ImageConstant.imgFloatingIcon,
          thingsiexpect: "msg_my_return_procedures".tr),
      SafeEcommerceItemModel(
          image: ImageConstant.imgFloatingIcon,
          thingsiexpect: "lbl_completed".tr),
      SafeEcommerceItemModel(
          image: ImageConstant.imgFloatingIcon,
          thingsiexpect: "msg_my_distance_selling".tr)
    ];
  }
}
