import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/safe_e_commerce_one_model.dart';
import '../models/safe_ecommerce_item_model.dart';
part 'safe_e_commerce_one_event.dart';
part 'safe_e_commerce_one_state.dart';

/// A bloc that manages the state of a SafeECommerceOne according to the event that is dispatched to it.
class SafeECommerceOneBloc
    extends Bloc<SafeECommerceOneEvent, SafeECommerceOneState> {
  SafeECommerceOneBloc(SafeECommerceOneState initialState)
      : super(initialState) {
    on<SafeECommerceOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
      SafeECommerceOneInitialEvent event,
      Emitter<SafeECommerceOneState> emit,
      ) async {
    emit(
      state.copyWith(
        safeECommerceOneModelObj: state.safeECommerceOneModelObj?.copyWith(
          safeEcommerceItemList: fillSafeEcommerceItemList(),
        ),
      ),
    );
  }

  List<SafeEcommerceItemModel> fillSafeEcommerceItemList() {
    return [
      SafeEcommerceItemModel(
          myProductsOn: ImageConstant.imgHome,
          myproductson1: "msg_my_products_on_sale".tr),
      SafeEcommerceItemModel(
          myProductsOn: ImageConstant.imgFloatingIcon,
          myproductson1: "msg_what_i_will_ship".tr),
      SafeEcommerceItemModel(
          myProductsOn: ImageConstant.imgFloatingIcon,
          myproductson1: "msg_what_i_await_approval".tr),
      SafeEcommerceItemModel(
          myProductsOn: ImageConstant.imgFloatingIcon,
          myproductson1: "msg_my_successful_sales".tr),
      SafeEcommerceItemModel(
          myProductsOn: ImageConstant.imgFloatingIcon,
          myproductson1: "lbl_returned_items".tr),
      SafeEcommerceItemModel(
          myProductsOn: ImageConstant.imgFloatingIcon,
          myproductson1: "msg_my_bank_information".tr),
      SafeEcommerceItemModel(
          myProductsOn: ImageConstant.imgFloatingIcon,
          myproductson1: "msg_my_head_office_address".tr),
      SafeEcommerceItemModel(
          myProductsOn: ImageConstant.imgFloatingIcon,
          myproductson1: "msg_my_distance_selling".tr),
      SafeEcommerceItemModel()
    ];
  }
}
